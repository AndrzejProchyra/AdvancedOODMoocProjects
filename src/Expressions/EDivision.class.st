Class {
	#name : 'EDivision',
	#superclass : 'EBinaryExpression',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'as yet unclassified' }
EDivision >> evaluateWith: aBindingDictionary [

	^ (left evaluateWith: aBindingDictionary)
	  / (right evaluateWith: aBindingDictionary)
]

{ #category : 'printing' }
EDivision >> operatorString [

	^ ' / '
]
