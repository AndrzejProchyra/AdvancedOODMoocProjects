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
