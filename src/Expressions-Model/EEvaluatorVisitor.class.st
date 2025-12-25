Class {
	#name : 'EEvaluatorVisitor',
	#superclass : 'Object',
	#category : 'Expressions-Model',
	#package : 'Expressions-Model'
}

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
