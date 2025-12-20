Class {
	#name : 'EExpression',
	#superclass : 'Object',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'as yet unclassified' }
EExpression >> evaluate [
	^ self subclassResponsibility
]

{ #category : 'instance creation' }
EExpression >> negated [

	^ ENegation new expression: self
]
