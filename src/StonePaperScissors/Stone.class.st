Class {
	#name : 'Stone',
	#superclass : 'Object',
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'as yet unclassified' }
Stone >> play: anElement [

	^ anElement playAgainstStone
]

{ #category : 'as yet unclassified' }
Stone >> play: anElement withResultHandler: aResultHandler [

	anElement playStone: self withResultHandler: aResultHandler
]

{ #category : 'as yet unclassified' }
Stone >> playAgainstPaper [

	^ #paper
]

{ #category : 'as yet unclassified' }
Stone >> playAgainstScissors [

	^ #stone
]

{ #category : 'as yet unclassified' }
Stone >> playAgainstStone [

	^ #draw
]

{ #category : 'as yet unclassified' }
Stone >> playPaper: aPaper withResultHandler: aResultHandler [

	aResultHandler paperWon
]

{ #category : 'as yet unclassified' }
Stone >> playScissors: aScissors withResultHandler: aResultHandler [

	aResultHandler stoneWon
]

{ #category : 'as yet unclassified' }
Stone >> playStone: aStone withResultHandler: aResultHandler [

	aResultHandler isDraw
]
