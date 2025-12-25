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

	^ (anEDivision numerator accept: self)
	  / (anEDivision denominator accept: self)
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
