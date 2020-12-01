tag: user.code_operators
-
assign: user.code_operator_assignment()

(minus | subtract) equals: user.code_operator_subtraction_assignment()
(plus | add) equals: user.code_operator_addition_assignment()
(times | multiply) equals: user.code_operator_multiplication_assignment()
divide equals: user.code_operator_division_assignment()
mod equals: user.code_operator_modulo_assignment()



# add "is" additional to "op" for operator commands
is (minus | subtract): user.code_operator_subtraction()
is (plus | add): user.code_operator_addition()
is (times | multiply): user.code_operator_multiplication()
is divide: user.code_operator_division()
is mod: user.code_operator_modulo()
(is (power | exponent) | to the power [of] | power of): user.code_operator_exponent()

#logical operators
is and: user.code_operator_and()
is or: user.code_operator_or()


