Class {
	#name : 'EExpression',
	#superclass : 'Object',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'testing' }
EExpression class >> isAbstract [

	^ self = EExpression
]

{ #category : 'visiting' }
EExpression >> accept: aVisitor [

	self subclassResponsibility
]

{ #category : 'accessing' }
EExpression >> evaluateWith: anEnvironment [

	| visitor |
	visitor := EEvaluatorVisitor new.
	visitor bindings: anEnvironment.
	^ self accept: visitor
]

{ #category : 'instance creation' }
EExpression >> negated [

	^ ENegation new expression: self
]
