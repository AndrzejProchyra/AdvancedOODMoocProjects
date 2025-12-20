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
	^ self subclassResponsibility
]

{ #category : 'accessing' }
EBinaryExpression >> left: anExpression [

	left := anExpression
]

{ #category : 'accessing' }
EBinaryExpression >> right: anExpression [

	right := anExpression
]
