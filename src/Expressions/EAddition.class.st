Class {
	#name : 'EAddition',
	#superclass : 'EExpression',
	#instVars : [
		'right',
		'left'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'instance creation' }
EAddition class >> left: anExpression right: anExpression2 [

	^ self new
		  left: anExpression;
		  right: anExpression2
]

{ #category : 'accessing' }
EAddition >> evaluate [

	^ left evaluate + right evaluate
]

{ #category : 'accessing' }
EAddition >> left: anExpression [

	left := anExpression
]

{ #category : 'accessing' }
EAddition >> right: anExpression [

	right := anExpression
]
