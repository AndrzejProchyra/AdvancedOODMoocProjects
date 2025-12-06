Class {
	#name : 'Paper',
	#superclass : 'Object',
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'as yet unclassified' }
Paper >> play: anElement [

	^ anElement playAgainstPaper
]

{ #category : 'as yet unclassified' }
Paper >> play: anElement withResultHandler: aResultHandler [

	anElement playPaper: self withResultHandler: aResultHandler
]

{ #category : 'as yet unclassified' }
Paper >> playAgainstPaper [

	^ #draw
]

{ #category : 'as yet unclassified' }
Paper >> playAgainstScissors [

	^ #scissors
]

{ #category : 'as yet unclassified' }
Paper >> playAgainstStone [

	^ #paper
]

{ #category : 'as yet unclassified' }
Paper >> playPaper: aPaper withResultHandler: aResultHandler [

	aResultHandler isDraw
]

{ #category : 'as yet unclassified' }
Paper >> playScissors: aScissors withResultHandler: aResultHandler [

	aResultHandler scissorsWon
]

{ #category : 'as yet unclassified' }
Paper >> playStone: aStone withResultHandler: aResultHandler [

	aResultHandler paperWon
]
