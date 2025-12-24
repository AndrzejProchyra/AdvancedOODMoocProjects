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
EAddition >> evaluateWith: aBindingDictionary [

	^ (left evaluateWith: aBindingDictionary)
	  + (right evaluateWith: aBindingDictionary)
]

{ #category : 'accessing' }
EAddition >> left [

	^ left
]

{ #category : 'printing' }
EAddition >> operatorString [

	^ ' + '
]

{ #category : 'accessing' }
EAddition >> right [

	^ right
]
