Class {
	#name : 'EEvaluatorVisitorTest',
	#superclass : 'TestCase',
	#category : 'Expressions-Tests',
	#package : 'Expressions-Tests'
}

{ #category : 'tests' }
EEvaluatorVisitorTest >> testVisitConstantReturnsConstantValue [

	| constant result |
	constant := EConstant value: 5.

	result := constant accept: EEvaluatorVisitor new.

	self assert: result equals: 5
]
