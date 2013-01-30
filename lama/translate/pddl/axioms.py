import conditions
import predicates
import pddl

class Axiom(object):
  def __init__(self, name, parameters, condition):
    self.name = name
    self.parameters = parameters
    self.condition = condition
    self.uniquify_variables()
  def parse(alist):
    assert len(alist) == 3
    assert alist[0] == ":derived"
    predicate = predicates.Predicate.parse(alist[1])
    condition = conditions.parse_condition(alist[2])
    return Axiom(predicate.name, predicate.arguments, condition)
  parse = staticmethod(parse)
  def dump(self):
    print "Axiom %s(%s)" % (self.name, ", ".join(map(str, self.parameters)))
    self.condition.dump()
  def uniquify_variables(self):
    self.type_map = dict([(par.name, par.type) for par in self.parameters])
    self.condition = self.condition.uniquify_variables(self.type_map)
  def instantiate(self, var_mapping, init_facts, fluent_facts):
    # The comments for Action.instantiate apply accordingly.
    arg_list = [var_mapping[par.name] for par in self.parameters]
    name = "(%s %s)" % (self.name, " ".join(arg_list))

    condition = []
    try:
      self.condition.instantiate(var_mapping, init_facts, fluent_facts, condition)
    except conditions.Impossible:
      return None

    effect_args = [var_mapping.get(arg.name, arg.name) for arg in self.parameters]
    effect = conditions.Atom(self.name, effect_args)
    return PropositionalAxiom(name, condition, effect)
  def build_DNF_condition(self):
     self.condition.dump()
     condition_state = [set()]
     for part in self.condition.parts:
        tmp_state = []
	if isinstance(part,pddl.Atom):
		for j in range(0,len(condition_state)):
			state_set = condition_state[j]
			tmp_state_set = set()
			for x in state_set:
				tmp_state_set.add(x)
			if part.negate() not in tmp_state_set:
				tmp_state_set.add(part)
				tmp_state.append(tmp_state_set)
	else:
		for i in range(0,len(part.parts)):
			for j in range(0,len(condition_state)):
				state_set = condition_state[j]
				tmp_state_set = set()
				for x in state_set:
					tmp_state_set.add(x)
				if part.parts[i].negate() not in tmp_state_set:
					tmp_state_set.add(part.parts[i])
					tmp_state.append(tmp_state_set)
	for i in range(0,len(condition_state)):
		condition_state.pop()
	for x in tmp_state:
		condition_state.append(x)	
     self.condition = pddl.Disjunction([pddl.Conjunction(state) for state in condition_state])
class PropositionalAxiom:
  def __init__(self, name, condition, effect):
    self.name = name
    self.condition = condition
    self.effect = effect
  def clone(self):
    return PropositionalAxiom(self.name, list(self.condition), self.effect)
  def dump(self):
    if self.effect.negated:
      print "not",
    print self.name
    for fact in self.condition:
      print "PRE: %s" % fact
    print "EFF: %s" % self.effect
