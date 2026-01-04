Class {
	#name : 'InstanceVariableListingVisitor',
	#superclass : 'Object',
	#category : 'ASTVisitors',
	#package : 'ASTVisitors'
}

{ #category : 'visiting' }
InstanceVariableListingVisitor >> visit: anOCMethodNode [

	^ anOCMethodNode acceptVisitor: self
]

{ #category : 'visiting' }
InstanceVariableListingVisitor >> visitAssignmentNode: anOCAssignmentNode [

	^ anOCAssignmentNode value acceptVisitor: self
]

{ #category : 'visiting' }
InstanceVariableListingVisitor >> visitBlockNode: anOCBlockNode [

	^ anOCBlockNode body acceptVisitor: self
]

{ #category : 'visiting' }
InstanceVariableListingVisitor >> visitInstanceVariableNode: anOCVariableNode [

	^ { anOCVariableNode name }
]

{ #category : 'visiting' }
InstanceVariableListingVisitor >> visitLiteralValueNode: anOCLiteralValueNode [

	^ #(  )
]

{ #category : 'visiting' }
InstanceVariableListingVisitor >> visitMessageNode: anOCMessageNode [

	| instanceVariables |
	instanceVariables := OrderedCollection new.
	instanceVariables
		addAll: (anOCMessageNode receiver acceptVisitor: self);
		addAll: (anOCMessageNode arguments flatCollectAsSet: [ :each | each acceptVisitor: self ]).
	^ instanceVariables
]

{ #category : 'visiting' }
InstanceVariableListingVisitor >> visitMethodNode: anOCMethodNode [

	^ anOCMethodNode body acceptVisitor: self
]

{ #category : 'visiting' }
InstanceVariableListingVisitor >> visitReturnNode: anOCReturnNode [

	^ anOCReturnNode value acceptVisitor: self
]

{ #category : 'visiting' }
InstanceVariableListingVisitor >> visitSequenceNode: anOCSequenceNode [

	^ anOCSequenceNode children flatCollectAsSet: [ :each | each acceptVisitor: self ]
]

{ #category : 'visiting' }
InstanceVariableListingVisitor >> visitTemporaryVariableNode: anOCVariableNode [

	^ #(  )
]
