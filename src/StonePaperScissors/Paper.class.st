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
