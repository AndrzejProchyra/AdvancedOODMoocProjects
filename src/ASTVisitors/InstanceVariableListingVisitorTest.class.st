Class {
	#name : 'InstanceVariableListingVisitorTest',
	#superclass : 'TestCase',
	#category : 'ASTVisitors',
	#package : 'ASTVisitors'
}

{ #category : 'tests' }
InstanceVariableListingVisitorTest >> testMethodThatAccessesTwoInstanceVariables [

	| node result |
	node := (Point >> #degrees) ast.

	result := InstanceVariableListingVisitor new visit: node.

	self assertCollection: result equals: #( x y ) asSet
]

{ #category : 'tests' }
InstanceVariableListingVisitorTest >> testSimpleUtilityMethod [

	| node result |
	node := OCParser parseMethod: 'utility
	^ ''This is a utility method'''.

	result := InstanceVariableListingVisitor new visit: node.

	self assertEmpty: result
]
