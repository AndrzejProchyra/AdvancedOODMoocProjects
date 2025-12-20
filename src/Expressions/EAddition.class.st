Class {
	#name : 'EAddition',
	#superclass : 'EBinaryExpression',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'examples' }
EAddition class >> fivePlusThree [

	<sampleInstance>
	^ self left: (EConstant value: 5) right: (EConstant value: 3)
]

{ #category : 'instance creation' }
EAddition class >> left: anExpression right: anExpression2 [

	^ self new
		  left: anExpression;
		  right: anExpression2
]

{ #category : 'accessing' }
EAddition >> evaluate [

	^ left evaluate + right evaluate
]

{ #category : 'printing' }
EAddition >> operatorString [

	^ ' + '
]
