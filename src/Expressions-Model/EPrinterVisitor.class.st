Class {
	#name : 'EPrinterVisitor',
	#superclass : 'EVisitor',
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
EPrinterVisitor >> visitDivision: anEDivision [

	| numerator denominator |
	numerator := anEDivision numerator accept: self.
	denominator := anEDivision denominator accept: self.
	^ '(' , numerator , ' / ' , denominator , ')'
]

{ #category : 'visiting' }
EPrinterVisitor >> visitMultiplication: anEMultiplication [

	| left right |
	left := anEMultiplication left accept: self.
	right := anEMultiplication right accept: self.
	^ '(' , left , ' * ' , right , ')'
]

{ #category : 'visiting' }
EPrinterVisitor >> visitNegation: anENegation [

	^ '-' , (anENegation expression accept: self)
]

{ #category : 'visiting' }
EPrinterVisitor >> visitVariable: aVariable [

	^ (self bindings at: aVariable id) asString
]
