Class {
	#name : 'ResultHandler',
	#superclass : 'Object',
	#instVars : [
		'winner'
	],
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'initialization' }
ResultHandler >> initialize [

	super initialize.
	winner := #none
]

{ #category : 'as yet unclassified' }
ResultHandler >> isDraw [

	winner := #draw
]

{ #category : 'as yet unclassified' }
ResultHandler >> paperWon [

	winner := #paper
]

{ #category : 'as yet unclassified' }
ResultHandler >> playStone: aStone withResultHandler: aResultHandler [ 
	self shouldBeImplemented.
]

{ #category : 'as yet unclassified' }
ResultHandler >> scissorsWon [

	winner := #scissors
]

{ #category : 'as yet unclassified' }
ResultHandler >> stoneWon [

	winner := #stone
]

{ #category : 'as yet unclassified' }
ResultHandler >> winner [

	^ winner
]
