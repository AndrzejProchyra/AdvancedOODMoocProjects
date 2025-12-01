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
DieHandle >> + aDieHandle [

	| newHandle |
	newHandle := self class new.
	self fillUp: newHandle.
	aDieHandle fillUp: newHandle.
	^ newHandle
]

{ #category : 'adding' }
DieHandle >> addDie: aDie [

	dice add: aDie
]

{ #category : 'adding' }
DieHandle >> diceNumber [

	^ dice size
]

{ #category : 'adding' }
DieHandle >> fillUp: aDieHandle [

	dice do: [ :die | aDieHandle addDie: die ]
]

{ #category : 'initialization' }
DieHandle >> initialize [

	super initialize.
	dice := OrderedCollection new
]

{ #category : 'adding' }
DieHandle >> roll [

	^ dice sum: #roll
]
