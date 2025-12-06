Class {
	#name : 'ResultHandlerTest',
	#superclass : 'TestCase',
	#instVars : [
		'resultHandler'
	],
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'running' }
ResultHandlerTest >> setUp [

	super setUp.
	resultHandler := ResultHandler new
]

{ #category : 'tests' }
ResultHandlerTest >> testNoWinner [

	self assert: resultHandler winner equals: #none
]

{ #category : 'tests' }
ResultHandlerTest >> testPaperWon [

	resultHandler paperWon.

	self assert: resultHandler winner equals: #paper
]

{ #category : 'tests' }
ResultHandlerTest >> testScissorsWon [

	resultHandler scissorsWon.

	self assert: resultHandler winner equals: #scissors
]

{ #category : 'tests' }
ResultHandlerTest >> testStoneWon [

	resultHandler stoneWon.

	self assert: resultHandler winner equals: #stone
]
