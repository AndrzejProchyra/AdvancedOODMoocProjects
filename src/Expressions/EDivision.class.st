Class {
	#name : 'EDivision',
	#superclass : 'EBinaryExpression',
	#instVars : [
		'numerator',
		'denominator'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'accessing' }
EDivision >> accept: aVisitor [

	^ aVisitor visitDivision: self
]

{ #category : 'accessing' }
EDivision >> denominator [

	^ denominator
]

{ #category : 'as yet unclassified' }
EDivision >> evaluateWith: aBindingDictionary [

	^ (left evaluateWith: aBindingDictionary)
	  / (right evaluateWith: aBindingDictionary)
]

{ #category : 'accessing' }
EDivision >> numerator [

	^ numerator
]

{ #category : 'printing' }
EDivision >> operatorString [

	^ ' / '
]

{ #category : 'private' }
EDivision >> setNumerator: anExpression denominator: anExpression2 [

	numerator := anExpression.
	denominator := anExpression2
]
