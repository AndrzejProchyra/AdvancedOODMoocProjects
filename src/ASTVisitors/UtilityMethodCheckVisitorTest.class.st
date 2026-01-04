Class {
	#name : 'UtilityMethodCheckVisitorTest',
	#superclass : 'TestCase',
	#category : 'ASTVisitors',
	#package : 'ASTVisitors'
}

{ #category : 'tests' }
UtilityMethodCheckVisitorTest >> testMethodThatAccessesAnInstanceVariable [

	| node result |
	node := (Point >> #degrees) ast.

	result := (UtilityMethodCheckerVisitor new visit: node) result.

	self deny: result
]

{ #category : 'tests' }
UtilityMethodCheckVisitorTest >> testMethodThatAccessesSelfIsNotAUtilityMethod [

	| node result |
	node := (OCOpalExamples >> #exampleSelf) ast.

	result := (UtilityMethodCheckerVisitor new visit: node) result.

	self deny: result
]

{ #category : 'tests' }
UtilityMethodCheckVisitorTest >> testMethodThatAccessesSuperIsNotAUtilityMethod [

	| node result |
	node := (OCOpalExamples >> #exampleSuper) ast.

	result := (UtilityMethodCheckerVisitor new visit: node) result.

	self deny: result
]

{ #category : 'tests' }
UtilityMethodCheckVisitorTest >> testSimpleUtilityMethod [

	| node result |
	node := OCParser parseMethod: 'utility
	^ ''This is a utility method'''.

	result := (UtilityMethodCheckerVisitor new visit: node) result.

	self assert: result
]
