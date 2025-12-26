Class {
	#name : 'EVariable',
	#superclass : 'EExpression',
	#instVars : [
		'id'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'visiting' }
EVariable >> accept: aVisitor [

	^ aVisitor visitVariable: self
]

{ #category : 'accessing' }
EVariable >> id [

	^ id
]

{ #category : 'accessing' }
EVariable >> id: aSymbol [

	id := aSymbol
]

{ #category : 'printing' }
EVariable >> printOn: aStream [

	aStream nextPutAll: id
]
