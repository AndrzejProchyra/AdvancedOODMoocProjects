Class {
	#name : 'EPrinterVisitorTest',
	#superclass : 'TestCase',
	#category : 'Expressions-Tests',
	#package : 'Expressions-Tests'
}

{ #category : 'tests' }
EPrinterVisitorTest >> testVisitAddition [

	| expression |
	expression := EAddition
		              left: (EConstant value: 3)
		              right: (EConstant value: 5).
	self
		assert: (expression accept: EPrinterVisitor new)
		equals: '(3 + 5)'
]

{ #category : 'tests' }
EPrinterVisitorTest >> testVisitConstant [

	| expression |
	expression := EConstant value: 42.

	self assert: (expression accept: EPrinterVisitor new) equals: '42'
]

{ #category : 'tests' }
EPrinterVisitorTest >> testVisitDivision [

	| expression |
	expression := EDivision
		              numerator: (EConstant value: 8)
		              denominator: (EConstant value: 7).
	self
		assert: (expression accept: EPrinterVisitor new)
		equals: '(8 / 7)'
]

{ #category : 'tests' }
EPrinterVisitorTest >> testVisitMultiplication [

	| expression |
	expression := EMultiplication
		              left: (EConstant value: 8)
		              right: (EConstant value: 7).
	self
		assert: (expression accept: EPrinterVisitor new)
		equals: '(8 * 7)'
]

{ #category : 'tests' }
EPrinterVisitorTest >> testVisitNegation [

	self
		assert: ((ENegation expression: (EConstant value: 42)) accept:
				 EPrinterVisitor new)
		equals: '-42'
]

{ #category : 'tests' }
EPrinterVisitorTest >> testVisitVariable [

	| expression result visitor |
	expression := EVariable id: #answerToTheQuestion.

	visitor := EPrinterVisitor new.
	visitor at: #answerToTheQuestion put: 42.

	result := expression accept: visitor.
	self assert: result equals: '42'
]
