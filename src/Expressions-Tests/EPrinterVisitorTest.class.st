Class {
	#name : 'EPrinterVisitorTest',
	#superclass : 'TestCase',
	#category : 'Expressions-Tests',
	#package : 'Expressions-Tests'
}

{ #category : 'tests' }
EPrinterVisitorTest >> testVisitConstant [

	| expression |
	expression := EConstant value: 42.

	self assert: (expression accept: EPrinterVisitor new) equals: '42'
]
