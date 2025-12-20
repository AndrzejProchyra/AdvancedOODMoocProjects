Class {
	#name : 'ENegation',
	#superclass : 'EExpression',
	#instVars : [
		'expression'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'instance creation' }
ENegation class >> expression: anExpression [

	^ self new expression: anExpression
]

{ #category : 'instance creation' }
ENegation >> evaluate [

	^ expression evaluate negated
]

{ #category : 'instance creation' }
ENegation >> expression: anExpression [

	expression := anExpression
]
