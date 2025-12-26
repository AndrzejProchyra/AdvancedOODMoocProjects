Class {
	#name : 'EMultiplication',
	#superclass : 'EBinaryExpression',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'examples' }
EMultiplication class >> fiveTimesThree [

	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self new
		  left: ep1;
		  right: ep2
]

{ #category : 'accessing' }
EMultiplication >> accept: aVisitor [

	^ aVisitor visitMultiplication: self
]

{ #category : 'printing' }
EMultiplication >> operatorString [

	^ ' * '
]
