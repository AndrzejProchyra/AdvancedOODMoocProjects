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

{ #category : 'accessing' }
EAddition >> evaluate [

	^ left evaluate + right evaluate
]

{ #category : 'printing' }
EAddition >> operatorString [

	^ ' + '
]
