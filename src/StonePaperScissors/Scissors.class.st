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
