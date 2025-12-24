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

{ #category : 'visiting' }
ENegation >> accept: aVisitor [

	^ aVisitor visitNegation: self
]

{ #category : 'instance creation' }
ENegation >> evaluateWith: aBindingDictionary [

	^ (expression evaluateWith: aBindingDictionary) negated
]

{ #category : 'accessing' }
ENegation >> expression [

	^ expression
]

{ #category : 'instance creation' }
ENegation >> expression: anExpression [

	expression := anExpression
]

{ #category : 'instance creation' }
ENegation >> negated [

	^ expression
]

{ #category : 'printing' }
ENegation >> printOn: aStream [

	aStream nextPut: $-.
	aStream print: expression
]
