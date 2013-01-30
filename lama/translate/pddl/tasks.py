import actions
import axioms
import conditions
import predicates
import pddl_types
import functions
import f_expression

class Task(object):
  FUNCTION_SYMBOLS = dict()
  def __init__(self, domain_name, task_name, requirements,
               types, objects, predicates, functions, init, oneofs, ors, belief_state, goal, originalgoal, actions, axioms, use_metric):
    self.domain_name = domain_name
    self.task_name = task_name
    self.requirements = requirements
    self.types = types
    self.objects = objects
    self.predicates = predicates
    self.functions = functions
    self.init = init
    self.oneofs = oneofs
    self.ors = ors
    self.belief_state = belief_state
    self.goal = goal
    self.originalgoal = originalgoal
    self.actions = actions
    self.axioms = axioms
    self.axiom_counter = 0
    self.use_min_cost_metric = use_metric


  def add_axiom(self, parameters, condition):
    name = "new-axiom@%d" % self.axiom_counter
    self.axiom_counter += 1
    axiom = axioms.Axiom(name, parameters, condition)
    self.predicates.append(predicates.Predicate(name, parameters))
    self.axioms.append(axiom)
    return axiom

  def parse(domain_pddl, task_pddl):
    domain_name, requirements, types, constants, predicates, functions, actions, axioms \
                 = parse_domain(domain_pddl)
    task_name, task_domain_name, objects, init, oneofs, ors, belief_state, goal, originalgoal, use_metric = parse_task(task_pddl)

    assert domain_name == task_domain_name
    objects = constants + objects
    init += [conditions.Atom("=", (obj.name, obj.name)) for obj in objects]
    return Task(domain_name, task_name, requirements, types, objects,
                predicates, functions, init, oneofs, ors, belief_state, goal, originalgoal, actions, axioms, use_metric)
  parse = staticmethod(parse)

  def dump(self):
    print "Problem %s: %s [%s]" % (self.domain_name, self.task_name,
                                   self.requirements)
    print "Types:"
    for type in self.types:
      print "  %s" % type
    print "Objects:"
    for obj in self.objects:
      print "  %s" % obj
    print "Predicates:"
    for pred in self.predicates:
      print "  %s" % pred
    print "Functions:"
    for func in self.functions:
      print "  %s" % func
    print "Init:"
    for fact in self.init:
      print "  %s" % fact
    print "Goal:"
    self.goal.dump()
    print "Actions:"
    for action in self.actions:
      action.dump()
    if self.axioms:
      print "Axioms:"
      for axiom in self.axioms:
        axiom.dump()



class Requirements(object):
  def __init__(self, requirements):
    self.requirements = requirements
    for req in requirements:
      assert req in (
        ":strips", ":adl", ":typing", ":negation", ":equality",
        ":negative-preconditions", ":disjunctive-preconditions",
        ":quantified-preconditions", ":conditional-effects",
        ":derived-predicates", ":action-costs"), req
  def __str__(self):
    return ", ".join(self.requirements)

def parse_domain(domain_pddl):
  iterator = iter(domain_pddl)

  assert iterator.next() == "define"
  domain_line = iterator.next()
  assert domain_line[0] == "domain" and len(domain_line) == 2
  yield domain_line[1]

  opt_requirements = iterator.next()
  if opt_requirements[0] == ":requirements":
    yield Requirements(opt_requirements[1:])
    opt_types = iterator.next()
  else:
    yield Requirements([":strips"])
    opt_types = opt_requirements

  the_types = [pddl_types.Type("object")]
  if opt_types[0] == ":types":
    the_types.extend(pddl_types.parse_typed_list(opt_types[1:],
                                                 constructor=pddl_types.Type))
    opt_constants = iterator.next()
  else:
    opt_constants = opt_types
  pddl_types.set_supertypes(the_types)
  # for type in the_types:
  #   print repr(type), type.supertype_names
  yield the_types

  if opt_constants[0] == ":constants":
    yield pddl_types.parse_typed_list(opt_constants[1:])
    pred = iterator.next()
  else:
    yield []
    pred = opt_constants

  assert pred[0] == ":predicates"
  yield ([predicates.Predicate.parse(entry) for entry in pred[1:]] +
         [predicates.Predicate("=",
                               [pddl_types.TypedObject("?x", "object"),
                                pddl_types.TypedObject("?y", "object")])])
  
  opt_functions = iterator.next() #action costs enable restrictive version of fluents
  if opt_functions[0] == ":functions":
    the_functions = pddl_types.parse_typed_list(opt_functions[1:],
                                                constructor=functions.Function.parse_typed, functions=True)
    for function in the_functions:
      Task.FUNCTION_SYMBOLS[function.name] = function.type
    yield the_functions
    first_action = iterator.next()
  else:
    yield []
    first_action = opt_functions
  entries = [first_action] + [entry for entry in iterator]
  the_axioms = []
  the_actions = []
  for entry in entries:
    if entry[0] == ":derived":
      axiom = axioms.Axiom.parse(entry)
      the_axioms.append(axiom)
    else:
      action = actions.Action.parse(entry)
      the_actions.append(action)
  yield the_actions
  yield the_axioms

def parse_task(task_pddl):
  iterator = iter(task_pddl)

  assert iterator.next() == "define"
  problem_line = iterator.next()
  assert problem_line[0] == "problem" and len(problem_line) == 2
  yield problem_line[1]
  domain_line = iterator.next()
  assert domain_line[0] == ":domain" and len(domain_line) == 2
  yield domain_line[1]

  objects_opt = iterator.next()
  if objects_opt[0] == ":objects":
    yield pddl_types.parse_typed_list(objects_opt[1:])
    init = iterator.next()
  else:
    yield []
    init = objects_opt

  assert init[0] == ":init"
  oneofs = []
  initial = []
  ors = []
  belief_state = [set()]
  skip_loop = False
  for fact in init[1:]:
    if fact[0] == "=":
        initial.append(f_expression.parse_assignment(fact))
    elif fact[0] == "oneof":
	oneofs.append(conditions.parse_condition(fact))
    elif fact[0] == "or":
	ors.append(conditions.parse_condition(fact))
    else:
        initial.append(conditions.Atom(fact[0], fact[1:]))
  if ors != []:
	for oneof in oneofs:
  	        tmp_state = []
		oneof.dump()
		for i in range(0,len(oneof.parts)):
			for j in range(0,len(belief_state)):
				state_set = belief_state[j]
				tmp_state_set = set()
				for x in state_set:
					tmp_state_set.add(x)
				tmp_state_set.add(oneof.parts[i])
				tmp_state.append(tmp_state_set)
		for i in range(0,len(belief_state)):
			belief_state.pop()

		'''print "belief after cartesian product"'''
		for x in tmp_state:
			'''print "state"
			for atom in x:
				print atom'''
			belief_state.append(x)
		index_to_remove = []
		for i in range(0,len(belief_state)):
			remove = False
			tmp_state_set = belief_state[i]
			'''print "checking state"
			for atom in tmp_state_set:
				print atom'''
			for orclause in ors:
				'''print "using or"
				orclause.dump()'''
				skip = False
				for k in range(0,len(orclause.parts)):
					if isinstance(orclause.parts[k], conditions.Atom):
						skip = True
						break
				if skip == True:
					continue
				else:
					remove = True
					for k in range(0,len(orclause.parts)):
						if orclause.parts[k].negate() not in tmp_state_set:
							remove = False
							break
					if remove == True:
						if tmp_state_set in belief_state:
							'''print "remove state"
							for atom in tmp_state_set:
								print atom
							print "because"
							orclause.dump()'''
							index_to_remove.insert(0,i)						
						break
			if remove == False:
				for oneof in oneofs:
					skip = False
					for part in oneof.parts:
						if part in  tmp_state_set:
							for other_part in oneof.parts:
								if other_part != part and other_part in  tmp_state_set:
									skip = True
									if tmp_state_set in belief_state:
										index_to_remove.insert(0,i)						
										break
							if skip == True:
								break
						if skip == True:
							break
					if skip == True:
						break
		for i in range(0, len(index_to_remove)):
			belief_state.pop(index_to_remove[i])
		print "size of belief state"
		print len(belief_state)
		print "we are here"
 				
		'''print "belief after removing invalid state"
		for x in belief_state:
			print "state"
			for atom in x:
				print atom'''
	index_to_remove = []
	for i in range(0,len(belief_state)):
		tmp_state_set = belief_state[i]
		for orclause in ors:
			remove = False
			stop = False
			for k in range(0,len(orclause.parts)):
				if isinstance(orclause.parts[k], conditions.Atom):
					print orclause.parts[k]
					if orclause.parts[k] in tmp_state_set:
						stop = True
						break
				elif isinstance(orclause.parts[k], conditions.NegatedAtom):
					if orclause.parts[k].negate() not in tmp_state_set:
						stop = True
						break
			if stop == False:
				remove = True
			if remove == True:
				if tmp_state_set in belief_state:
					index_to_remove.insert(0,i)						
					'''print "remove state"
					for atom in tmp_state_set:
						print atom
					print "because"
					orclause.dump()'''
					break
	for i in range(0, len(index_to_remove)):
		belief_state.pop(index_to_remove[i]) 
	print "size of belief state"
	print len(belief_state)
	'''for tmp_state_set in belief_state:
		print "state"
		for atom in tmp_state_set:
			print atom'''
	if len(belief_state) > 0:
		state_set = belief_state[0]
		for atom in state_set:
			initial.append(atom)
	'''oneofsize = 1
	for oneof in oneofs:
		oneofsize = oneofsize * len(oneof.parts)
	belief_state = {}
	exclude_list = []
	for n in range(0,oneofsize):
		for i in range(0,len(oneofs)):
			bucketsize = 1
			for j in range(i+1,len(oneofs)):
				bucketsize = bucketsize * len(oneofs[j].parts)
			index_i = (n / bucketsize) % len(oneofs[i].parts)
			oneof_valuename = oneofs[i].print_atom(index_i)
			oneof_valuename_str = str(oneof_valuename)
			skip_loop = false
			for var_no, var_key in enumerate(translation_key):
				for value, value_name in enumerate(var_key):
		    			if oneof_valuename_str.find(value_name) != -1: 
						if var_no in belief_state:
							if belief_state[var_no] = value:
								
								
							
						print >> belief_file, "var%d \n" % var_no,
						print >> belief_file, "%d \n" % value,
		print >> belief_file, "END_BELIEF"'''			
	
  else:
	for oneof in oneofs: 
		atoms = set()
		atoms = oneof.get_atoms()
		for atom in atoms:
			atom.dump(),
			initial.append(atom)

  yield initial
  yield oneofs
  yield ors
  yield belief_state

  goal = iterator.next()
  assert goal[0] == ":goal" and len(goal) == 2
  yield conditions.parse_condition(goal[1])
  originalgoal = conditions.parse_condition(goal[1])
  yield originalgoal
  use_metric = False
  for entry in iterator:
    if entry[0] == ":metric":
      if entry[1]=="minimize" and entry[2][0] == "total-cost":
        use_metric = True
      else:
        assert False, "Unknown metric."  
  yield use_metric
          
  for entry in iterator:
    assert False, entry
