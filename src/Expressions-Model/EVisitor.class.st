Class {
	#name : 'EVisitor',
	#superclass : 'Object',
	#instVars : [
		'bindings'
	],
	#category : 'Expressions-Model',
	#package : 'Expressions-Model'
}

{ #category : 'testing' }
EVisitor class >> isAbstract [

	^ self == EVisitor
]

{ #category : 'accessing' }
EVisitor >> at: anId put: aValue [

	self bindings at: anId put: aValue
]

{ #category : 'accessing' }
EVisitor >> bindings [

	^ bindings
]

{ #category : 'accessing' }
EVisitor >> bindings: aDictionary [

	bindings := aDictionary
]

{ #category : 'initialization' }
EVisitor >> initialize [

	super initialize.
	bindings := Dictionary new
]

{ #category : 'visiting' }
EVisitor >> visitAddition: anAddition [

	self subclassResponsibility
]

{ #category : 'visiting' }
EVisitor >> visitConstant: aConstant [

	self subclassResponsibility
]

{ #category : 'visiting' }
EVisitor >> visitDivision: anEDivision [

	^ self subclassResponsibility
]

{ #category : 'visiting' }
EVisitor >> visitMultiplication: aMultiplication [

	self subclassResponsibility
]

{ #category : 'visiting' }
EVisitor >> visitNegation: anENegation [

	^ self subclassResponsibility
]

{ #category : 'visiting' }
EVisitor >> visitVariable: aVariable [

	self subclassResponsibility
]
