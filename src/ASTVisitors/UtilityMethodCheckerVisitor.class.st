Class {
	#name : 'UtilityMethodCheckerVisitor',
	#superclass : 'OCAbstractBlockVisitor',
	#instVars : [
		'result'
	],
	#category : 'ASTVisitors',
	#package : 'ASTVisitors'
}

{ #category : 'initialization' }
UtilityMethodCheckerVisitor >> initialize [

	super initialize.
	result := true
]

{ #category : 'accessing' }
UtilityMethodCheckerVisitor >> result [

	^ result
]

{ #category : 'visiting' }
UtilityMethodCheckerVisitor >> visitSelfNode: aSelfNode [

	result := false
]

{ #category : 'visiting' }
UtilityMethodCheckerVisitor >> visitVariableNode: aVariableNode [

	aVariableNode isInstanceVariable ifTrue: [ result := false ]
]
