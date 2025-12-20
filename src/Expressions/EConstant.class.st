Class {
	#name : 'EConstant',
	#superclass : 'EExpression',
	#instVars : [
		'value'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'instance creation' }
EConstant class >> value: anInteger [

	^ self new value: anInteger
]

{ #category : 'accessing' }
EConstant >> evaluate [

	^ value
]

{ #category : 'accessing' }
EConstant >> value: aNumber [

	value := aNumber
]
