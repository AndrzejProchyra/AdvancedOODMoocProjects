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
StonePaperScissorsTest >> testScissorsAgainstScissors [

	self assert: (Scissors new play: Scissors new) equals: #draw
]

{ #category : 'tests' }
StonePaperScissorsTest >> testScissorsAgainstStoneIsLosing [

	self assert: (Scissors new play: Stone new) equals: #stone
]

{ #category : 'tests' }
StonePaperScissorsTest >> testStoneAgainstPaperIsLosing [

	self assert: (Stone new play: Paper new) equals: #paper
]

{ #category : 'tests' }
StonePaperScissorsTest >> testStoneAgainstScissorsIsWinning [

	self assert: (Stone new play: Scissors new) equals: #stone
]

{ #category : 'tests' }
StonePaperScissorsTest >> testStoneAgainstStone [

	self assert: (Stone new play: Stone new) equals: #draw
]
