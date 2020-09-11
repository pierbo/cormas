Class {
	#name : #CMECECUnrestrained,
	#superclass : #CMECECForager,
	#category : 'Cormas-Model-ECEC'
}

{ #category : #'pov symbols' }
CMECECUnrestrained class >> VectorialPOV_Unrestrained [
	"Returns an array containing the settings of a Situated entity vectorial pov symbol in the following order:
(color red) (color green) (color blue) (lineColor red) (lineColor green) (lineColor blue) lineWidth sizeratio position (array of outline vertices)"
	
	^#(1.0 0.0 0.0 0.0 0.0 0.0 1 0.7 #center #(-5.51429 #@- 9.78095 10.6417 #@- 9.64286 24.8307 #@- 13.6217 18.6732 #@ 2.5 16.7069 #@ 24.7857 5.23787 #@ 4.63757 -2.0748 #@ 10.3571 -7.66472 #@ 24.1561 -8.62047 #@ 10.3042 -11.9656 #@ 2.74868 -24.8307 #@- 1.07143 -26.1693 #@- 8.92857 -13.3992 #@- 13.6217 -11.0098 #@- 26.2143 -11.0098 #@- 14.2513 -5.51429 #@- 9.78095))
]

{ #category : #accessing }
CMECECUnrestrained class >> catabolicRate [
	"Getter accessor with default value = 2.
	!! Code automaticaly generated by Cormas !!  "
	
	^catabolicRate ifNil: [catabolicRate := 2]
]

{ #category : #accessing }
CMECECUnrestrained class >> fertilityThreshold [
	"Getter accessor with default value = 100.
	!! Code automaticaly generated by Cormas !!  "
	
	^fertilityThreshold ifNil: [fertilityThreshold := 100]
]

{ #category : #accessing }
CMECECUnrestrained class >> harvestRate [
	"Getter accessor with default value = 0.99.
	!! Code automaticaly generated by Cormas !!  "
	
	^harvestRate ifNil: [harvestRate := 0.99]
]

{ #category : #'- default value' }
CMECECUnrestrained class >> harvestRate_default [
	"Return the default value of harvestRate attribute"
	
	^0.99
]

{ #category : #testing }
CMECECUnrestrained class >> isAbstract [
	
	^false
]

{ #category : #accessing }
CMECECUnrestrained >> energy [
	"Getter accessor with default value = 50.
	!! Code automaticaly generated by Cormas !!  "
	
	^energy ifNil: [energy := 50]
]

{ #category : #pov }
CMECECUnrestrained >> pov [

	^ Color red
]

{ #category : #pov }
CMECECUnrestrained >> povEnergy [
	^ self
		povAttribute: #energy
		min: 0
		max: 180
		color: Color red
]