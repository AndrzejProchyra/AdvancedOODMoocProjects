Class {
	#name : 'EBinaryExpression',
	#superclass : 'EExpression',
	#instVars : [
		'left',
		'right'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'instance creation' }
EBinaryExpression class >> left: anExpression right: anExpression2 [

	^ self new
		  left: anExpression;
		  right: anExpression2
]

{ #category : 'as yet unclassified' }
EBinaryExpression >> evaluateWith: aBindingDictionary [

	self subclassResponsibility
]

{ #category : 'accessing' }
EBinaryExpression >> left [

	^ left
]

{ #category : 'accessing' }
EBinaryExpression >> left: anExpression [

	left := anExpression
]

{ #category : 'printing' }
EBinaryExpression >> operatorString [

	self subclassResponsibility
]

{ #category : 'printing' }
EBinaryExpression >> printOn: aStream [

	aStream nextPut: $(.
	aStream print: left.
	aStream nextPutAll: self operatorString.
	aStream print: right.
	aStream nextPut: $)
]

{ #category : 'accessing' }
EBinaryExpression >> right [

	^ right
]

{ #category : 'accessing' }
EBinaryExpression >> right: anExpression [

	right := anExpression
]
