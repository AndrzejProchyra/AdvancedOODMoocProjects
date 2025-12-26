Class {
	#name : 'EEvaluatorVisitor',
	#superclass : 'Object',
	#instVars : [
		'bindings'
	],
	#category : 'Expressions-Model',
	#package : 'Expressions-Model'
}

{ #category : 'accessing' }
EEvaluatorVisitor >> at: anId put: aValue [

	bindings at: anId put: aValue
]

{ #category : 'initialization' }
EEvaluatorVisitor >> initialize [

	super initialize.
	bindings := Dictionary new
]

{ #category : 'visiting' }
EEvaluatorVisitor >> visitAddition: anEAddition [

	^ (anEAddition left accept: self) + (anEAddition right accept: self)
]

{ #category : 'visiting' }
EEvaluatorVisitor >> visitConstant: anEConstant [

	^ anEConstant value
]

{ #category : 'visiting' }
EEvaluatorVisitor >> visitDivision: anEDivision [

	| numerator denominator |
	numerator := anEDivision numerator accept: self.
	denominator := anEDivision denominator accept: self.
	denominator = 0 ifTrue: [ EZeroDenominator signal ].

	^ numerator / denominator
]

{ #category : 'visiting' }
EEvaluatorVisitor >> visitMultiplication: anEMultiplication [

	^ (anEMultiplication left accept: self)
	  * (anEMultiplication right accept: self)
]

{ #category : 'visiting' }
EEvaluatorVisitor >> visitNegation: anENegation [

	^ (anENegation expression accept: self) negated
]

{ #category : 'initialization' }
EEvaluatorVisitor >> visitVariable: aVariable [

	^ bindings at: aVariable id
]
