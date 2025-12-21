Class {
	#name : 'EDivision',
	#superclass : 'EBinaryExpression',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'as yet unclassified' }
EDivision >> evaluate [

	^ left evaluate / right evaluate
]

{ #category : 'printing' }
EDivision >> operatorString [

	^ ' / '
]
