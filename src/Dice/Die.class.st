"
I represent a rollable die with a configurable number of faces
"
Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'accessing' }
Die >> faces [

	^ faces
]

{ #category : 'accessing' }
Die >> faces: anInteger [

	faces := anInteger
]

{ #category : 'initialization' }
Die >> initialize [

	super initialize.
	faces := 6
]

{ #category : 'printing' }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' ('.
	aStream print: faces.
	aStream nextPut: $)
]

{ #category : 'api' }
Die >> roll [

	^ faces atRandom
]
