Class {
	#name : 'StonePaperScissorsTest',
	#superclass : 'TestCase',
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'tests' }
StonePaperScissorsTest >> testPaperAgainstPaper [

	self assert: (Paper new play: Paper new) equals: #draw
]

{ #category : 'tests - result handler' }
StonePaperScissorsTest >> testPaperAgainstPaperWithResultHandlerIsDraw [

	| resultHandler |
	resultHandler := ResultHandler new.
	Paper new play: Paper new withResultHandler: resultHandler.

	self assert: resultHandler winner equals: #draw
]

{ #category : 'tests' }
StonePaperScissorsTest >> testPaperAgainstScissorsIsLosing [

	self assert: (Paper new play: Scissors new) equals: #scissors
]

{ #category : 'tests - result handler' }
StonePaperScissorsTest >> testPaperAgainstScissorsWithResultHandlerIsLosing [

	| resultHandler |
	resultHandler := ResultHandler new.
	Paper new play: Scissors new withResultHandler: resultHandler.

	self assert: resultHandler winner equals: #scissors
]

{ #category : 'tests' }
StonePaperScissorsTest >> testPaperAgainstStoneIsWinning [

	self assert: (Paper new play: Stone new) equals: #paper
]

{ #category : 'tests - result handler' }
StonePaperScissorsTest >> testPaperAgainstStoneWithResultHandlerIsWinning [

	| resultHandler |
	resultHandler := ResultHandler new.
	Paper new play: Stone new withResultHandler: resultHandler.

	self assert: resultHandler winner equals: #paper
]

{ #category : 'tests' }
StonePaperScissorsTest >> testScissorsAgainstPaperIsWinning [

	self assert: (Scissors new play: Paper new) equals: #scissors
]

{ #category : 'tests - result handler' }
StonePaperScissorsTest >> testScissorsAgainstPaperWithResultHandlerIsWinning [

	| resultHandler |
	resultHandler := ResultHandler new.
	Scissors new play: Paper new withResultHandler: resultHandler.

	self assert: resultHandler winner equals: #scissors
]

{ #category : 'tests' }
StonePaperScissorsTest >> testScissorsAgainstScissors [

	self assert: (Scissors new play: Scissors new) equals: #draw
]

{ #category : 'tests - result handler' }
StonePaperScissorsTest >> testScissorsAgainstScissorsWithResultHandlerIsDraw [

	| resultHandler |
	resultHandler := ResultHandler new.
	Scissors new play: Scissors new withResultHandler: resultHandler.

	self assert: resultHandler winner equals: #draw
]

{ #category : 'tests' }
StonePaperScissorsTest >> testScissorsAgainstStoneIsLosing [

	self assert: (Scissors new play: Stone new) equals: #stone
]

{ #category : 'tests - result handler' }
StonePaperScissorsTest >> testScissorsAgainstStoneWithResultHandlerIsLosing [

	| resultHandler |
	resultHandler := ResultHandler new.
	Scissors new play: Stone new withResultHandler: resultHandler.

	self assert: resultHandler winner equals: #stone
]

{ #category : 'tests' }
StonePaperScissorsTest >> testStoneAgainstPaperIsLosing [

	self assert: (Stone new play: Paper new) equals: #paper
]

{ #category : 'tests - result handler' }
StonePaperScissorsTest >> testStoneAgainstPaperWithResultHandlerIsLosing [

	| resultHandler |
	resultHandler := ResultHandler new.
	Stone new play: Paper new withResultHandler: resultHandler.

	self assert: resultHandler winner equals: #paper
]

{ #category : 'tests' }
StonePaperScissorsTest >> testStoneAgainstScissorsIsWinning [

	self assert: (Stone new play: Scissors new) equals: #stone
]

{ #category : 'tests - result handler' }
StonePaperScissorsTest >> testStoneAgainstScissorsWithResultHandlerIsWinning [

	| resultHandler |
	resultHandler := ResultHandler new.
	Stone new play: Scissors new withResultHandler: resultHandler.

	self assert: resultHandler winner equals: #stone
]

{ #category : 'tests' }
StonePaperScissorsTest >> testStoneAgainstStone [

	self assert: (Stone new play: Stone new) equals: #draw
]

{ #category : 'tests - result handler' }
StonePaperScissorsTest >> testStoneAgainstStoneWithResultHandlerIsDraw [

	| resultHandler |
	resultHandler := ResultHandler new.
	Stone new play: Stone new withResultHandler: resultHandler.

	self assert: resultHandler winner equals: #draw
]
