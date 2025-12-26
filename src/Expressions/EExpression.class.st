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
EExpression >> evaluateWith: aBindingDictionary [

	^ self accept: EEvaluatorVisitor new
]

{ #category : 'instance creation' }
EExpression >> negated [

	^ ENegation new expression: self
]
