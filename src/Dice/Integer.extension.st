Extension { #name : 'Integer' }

{ #category : '*Dice' }
Integer >> D20 [

	| dieHandle |
	dieHandle := DieHandle new.
	self timesRepeat: [ dieHandle addDie: (Die withFaces: 20) ].
	^ dieHandle
]
