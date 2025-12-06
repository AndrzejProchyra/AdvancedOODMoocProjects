Class {
	#name : 'StonePaperScissorsTest',
	#superclass : 'TestCase',
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'tests' }
StonePaperScissorsTest >> testStoneAgainstPaperIsWinning [

	self assert: (Stone new play: Paper new) equals: #paper
]
