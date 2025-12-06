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
Stone >> playAgainstScissors [

	^ #stone
]

{ #category : 'as yet unclassified' }
Stone >> playAgainstStone [

	^ #draw
]
