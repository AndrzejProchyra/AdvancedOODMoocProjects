"
I represent a container of dice
"
Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'adding' }
DieHandle >> addDie: aDie [

	dice add: aDie
]

{ #category : 'adding' }
DieHandle >> diceNumber [

	^ dice size
]

{ #category : 'initialization' }
DieHandle >> initialize [

	super initialize.
	dice := OrderedCollection new
]
