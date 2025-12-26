Class {
	#name : 'EConstant',
	#superclass : 'EExpression',
	#instVars : [
		'value'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'examples' }
EConstant class >> constant3 [

	<sampleInstance>
	^ self value: 3
]

{ #category : 'examples' }
EConstant class >> constant5 [

	<sampleInstance>
	^ self value: 5
]

{ #category : 'instance creation' }
EConstant class >> value: anInteger [

	^ self new value: anInteger
]

{ #category : 'visiting' }
EConstant >> accept: aVisitor [

	^ aVisitor visitConstant: self
]

{ #category : 'printing' }
EConstant >> printOn: aStream [

	aStream print: value
]

{ #category : 'evaluating' }
EConstant >> value [

	^ value
]

{ #category : 'accessing' }
EConstant >> value: aNumber [

	value := aNumber
]
