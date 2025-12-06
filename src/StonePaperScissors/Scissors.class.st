Class {
	#name : 'Scissors',
	#superclass : 'Object',
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'as yet unclassified' }
Scissors >> play: anElement [

	^ anElement playAgainstScissors
]

{ #category : 'as yet unclassified' }
Scissors >> play: anElement withResultHandler: aResultHandler [

	anElement playScissors: self withResultHandler: aResultHandler
]

{ #category : 'as yet unclassified' }
Scissors >> playAgainstPaper [

	^ #scissors
]

{ #category : 'as yet unclassified' }
Scissors >> playAgainstScissors [

	^ #draw
]

{ #category : 'as yet unclassified' }
Scissors >> playAgainstStone [

	^ #stone
]

{ #category : 'as yet unclassified' }
Scissors >> playPaper: aPaper withResultHandler: aResultHandler [

	aResultHandler scissorsWon
]

{ #category : 'as yet unclassified' }
Scissors >> playScissors: aScissors withResultHandler: aResultHandler [

	aResultHandler isDraw
]

{ #category : 'as yet unclassified' }
Scissors >> playStone: aStone withResultHandler: aResultHandler [

	aResultHandler stoneWon
]
