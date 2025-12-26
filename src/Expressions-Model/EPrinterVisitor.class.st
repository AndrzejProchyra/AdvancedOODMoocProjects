Class {
	#name : 'EPrinterVisitor',
	#superclass : 'Object',
	#category : 'Expressions-Model',
	#package : 'Expressions-Model'
}

{ #category : 'visiting' }
EPrinterVisitor >> visitConstant: anEConstant [

	^ anEConstant value asString
]
