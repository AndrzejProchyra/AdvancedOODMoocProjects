Class {
	#name : 'EPrinterVisitor',
	#superclass : 'Object',
	#category : 'Expressions-Model',
	#package : 'Expressions-Model'
}

{ #category : 'visiting' }
EPrinterVisitor >> visitAddition: anEAddition [

	| left right |
	left := anEAddition left accept: self.
	right := anEAddition right accept: self.
	^ '(' , left , ' + ' , right , ')'
]

{ #category : 'visiting' }
EPrinterVisitor >> visitConstant: anEConstant [

	^ anEConstant value asString
]

{ #category : 'visiting' }
EPrinterVisitor >> visitMultiplication: anEMultiplication [

	| left right |
	left := anEMultiplication left accept: self.
	right := anEMultiplication right accept: self.
	^ '(' , left , ' * ' , right , ')'
]
