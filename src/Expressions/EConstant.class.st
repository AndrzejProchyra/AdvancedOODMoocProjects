Class {
	#name : 'EConstant',
	#superclass : 'EExpression',
	#instVars : [
		'value'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'accessing' }
EConstant >> evaluate [

	^ value
]

{ #category : 'accessing' }
EConstant >> value: aNumber [

	value := aNumber
]
