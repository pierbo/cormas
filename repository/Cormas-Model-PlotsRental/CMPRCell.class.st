Class {
	#name : #CMPRCell,
	#superclass : #CMSpatialEntityElement,
	#instVars : [
		'status',
		'farmer'
	],
	#classVars : [
		'CurrentId'
	],
	#category : #'Cormas-Model-PlotsRental'
}

{ #category : #id }
CMPRCell class >> CurrentId [
	^ CurrentId isNil
		ifTrue: [ 0 ]
		ifFalse: [ CurrentId ]
]

{ #category : #id }
CMPRCell class >> CurrentId: x [
	^ CurrentId := x 
]

{ #category : #'pov symbols' }
CMPRCell class >> SpatialEntityPOV_notRent [
	"Returns an array containing the settings of a Spatial entity pov symbol in the following order:
(color red) (color green) (color blue)
(Automatically defined by Cormas)."

	^ Array with: 1.0 with: 1.0 with: 1.0
]

{ #category : #'pov symbols' }
CMPRCell class >> SpatialEntityPOV_rent [
	"Returns an array containing the settings of a Spatial entity pov symbol in the following order:
(color red) (color green) (color blue)
(Automatically defined by Cormas)."

	^ Array with: 0.670004 with: 0.0 with: 0.670004
]

{ #category : #'- default value' }
CMPRCell class >> farmer_default [
	"Return the default value of attribute #farmer : nil.	
	This method was automatically generated by Cormas.
	!! BECAREFUL, You should not modify this method as it can be generated again when changing the value (Sensitivity Analysis for ex) !!"

	^ nil
]

{ #category : #'- default value' }
CMPRCell class >> status_default [
	"Return the default value of attribute #status : #notRent.	
	This method was automatically generated by Cormas.
	!! BECAREFUL, You should not modify this method as it can be generated again when changing the value (Sensitivity Analysis for ex) !!"

	^ #notRent
]

{ #category : #'+ parameter unit' }
CMPRCell class >> status_type [
	"Return the type of attribute #status.
	This method was automatically generated by Cormas.
	!! BECAREFUL, You should not modify this method as it can be generated again when changing the value (Sensitivity Analysis for ex) !!"

	^ ByteSymbol
]

{ #category : #accessing }
CMPRCell >> farmer [
	^ farmer 
]

{ #category : #accessing }
CMPRCell >> farmer: anObject [
	"Setter accessor of attribute farmer. 
	This method was automatically generated by Cormas.
	!! BECAREFUL, You should not modify this method as it can be generated again when changing the value (Sensitivity Analysis for ex) !!  "

	farmer = anObject
		ifTrue: [ ^ nil ].	"for optimization"
	farmer := anObject.
	self changed
]

{ #category : #pov }
CMPRCell >> povFarmer [
	^ self farmer isNil
		ifTrue: [ self povRental ]
		ifFalse: [ self farmer povId ] 
]

{ #category : #pov }
CMPRCell >> povRental [
	"^#notRent ^#rent"

	^ self status 
]

{ #category : #accessing }
CMPRCell >> status [
	"Getter accessor with initial value = #notRent.
	This method was automatically generated by Cormas.
	!! BECAREFUL, You should not modify this method as it can be generated again when changing the value (Sensitivity Analysis for ex) !! "

	^ status ifNil: [ status := #notRent ]
]

{ #category : #accessing }
CMPRCell >> status: anObject [
	"Setter accessor of attribute status. 
	This method was automatically generated by Cormas.
	!! BECAREFUL, You should not modify this method as it can be generated again when changing the value (Sensitivity Analysis for ex) !!  "

	status = anObject
		ifTrue: [ ^ nil ].	"for optimization"
	status := anObject.
	self changed
]