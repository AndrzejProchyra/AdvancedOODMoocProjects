Class {
	#name : 'StonePaperScissorsTest',
	#superclass : 'TestCase',
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'tests' }
StonePaperScissorsTest >> testScissorsAgainstPaperIsWinning [

	self assert: (Scissors new play: Paper new) equals: #scissors
]

{ #category : 'tests' }
StonePaperScissorsTest >> testStoneAgainstPaperIsWinning [

	self assert: (Stone new play: Paper new) equals: #paper
]
