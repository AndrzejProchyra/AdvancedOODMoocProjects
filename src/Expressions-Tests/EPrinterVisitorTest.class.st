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
