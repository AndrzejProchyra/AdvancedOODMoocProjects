Class {
	#name : 'EExpression',
	#superclass : 'Object',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'visiting' }
EExpression >> accept: aVisitor [

	self subclassResponsibility
]

{ #category : 'as yet unclassified' }
EExpression >> evaluateWith: aBindingDictionary [

	^ self subclassResponsibility
]

{ #category : 'instance creation' }
EExpression >> negated [

	^ ENegation new expression: self
]
