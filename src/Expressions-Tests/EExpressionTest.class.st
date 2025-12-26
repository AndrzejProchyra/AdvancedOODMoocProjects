Class {
	#name : 'EExpressionTest',
	#superclass : 'TestCase',
	#category : 'Expressions-Tests',
	#package : 'Expressions-Tests'
}

{ #category : 'tests' }
EExpressionTest >> testComplexExpressionWithVariables [
	"a => 4, b => 2, c => 3"

	"(3 + ((a / b) * (c * 5)) = 33"

	| expression bindings |
	bindings := {
		            (#a -> 4).
		            (#b -> 2).
		            (#c -> 3) } asDictionary.
	expression := EAddition
		              left: (EConstant value: 3)
		              right: (EMultiplication
				               left: (EDivision
						                numerator: (EVariable id: #a)
						                denominator: (EVariable id: #b))
				               right:
				               (EMultiplication
					                left: (EVariable id: #c)
					                right: (EConstant value: 5))).
	self assert: (expression evaluateWith: bindings) equals: 33
]
