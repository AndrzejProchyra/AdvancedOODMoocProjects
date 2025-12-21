Class {
	#name : 'EDivisionTest',
	#superclass : 'TestCase',
	#category : 'Expressions-Tests',
	#package : 'Expressions-Tests'
}

{ #category : 'tests' }
EDivisionTest >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self
		assert:
		((EDivision left: ep1 right: ep2) evaluateWith: Dictionary new)
		equals: 5 / 3
]

{ #category : 'tests' }
EDivisionTest >> testPrinting [

	self
		assert: (EDivision left: 3 right: 5) printString
		equals: '(3 / 5)'
]
