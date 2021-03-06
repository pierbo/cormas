"
CrossedSensitivity allows to conduct Crossed sensitivity analysis by modifying parameters' values simultaneously.


"
Class {
	#name : #CrossedSensitivity,
	#superclass : #Object,
	#category : 'Cormas-Core-Others'
}

{ #category : #'interface specs' }
CrossedSensitivity class >> windowSpec [
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"
	
	<resource: #canvas>
	^#(FullSpec 
		#window: #(WindowSpec 
			#properties: #(PropertyListDictionary #sizeType #specifiedSize #positionType #positionSystemDefault #openType #advanced) 
			#label: '"One At a Time" analysis setter' 
			#min: #(Point 623 295) 
			#max: #(Point 900 9000) 
			#bounds: #(Rectangle 729 301 1442 764) 
			#flags: 12 
			#menu: #menuBar) 
		#component: #(SpecCollection 
			#collection: #(#(RegionSpec 
				#layout: #(Rectangle 267 200 430 232) 
				#name: #Region1 
				#isOpaque: true 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue 7167 6143 8191) 
					#setBackgroundColor: #(ColorValue 4096 0 8191)) 
				#lineWidth: 1) #(ActionButtonSpec 
				#layout: #(Rectangle 273 204 315 228) 
				#name: #Apply 
				#model: #apply 
				#label: 'Apply' 
				#defaultable: true) #(ActionButtonSpec 
				#layout: #(Rectangle 323 204 368 228) 
				#name: #resetValues 
				#model: #resetValues 
				#helpText: 'Reset the parameters to their default value' 
				#label: 'Reset' 
				#defaultable: true) #(DataSetSpec 
				#properties: #(PropertyListDictionary #showVerticalLines true #allowColumnReordering true #showLineNumbers true #rowSize 30 #allowColumnResizing true #showHorizontalLines true) 
				#layout: #(LayoutFrame 11 0 235 0 0 1.00563 0 1.00911) 
				#name: #Dataset1 
				#model: #classAttribValue_List 
				#columns: #(#(DataSetColumnSpec 
					#properties: #(PropertyListDictionary #allowSorting true #labelFromApplication false) 
					#label: 'N¬∞' 
					#labelIsImage: false 
					#width: 30 
					#rendererType: #rowSelector 
					#editorType: #rowSelector 
					#noScroll: false 
					#labelsAsButtons: true) #(DataSetColumnSpec 
					#properties: #(PropertyListDictionary #labelFromApplication false #allowSorting true #allowResizing true) 
					#model: #'selectedRow classNameAsString' 
					#label: 'Class' 
					#labelIsImage: false 
					#width: 165 
					#rendererType: #Text 
					#editorType: #None 
					#noScroll: false 
					#labelsAsButtons: true) #(DataSetColumnSpec 
					#properties: #(PropertyListDictionary #labelFromApplication false #allowSorting true #allowResizing true) 
					#model: #'selectedRow attributeAsString' 
					#label: 'Attribute' 
					#labelIsImage: false 
					#width: 165 
					#rendererType: #Text 
					#editorType: #None 
					#noScroll: false 
					#labelsAsButtons: true) #(DataSetColumnSpec 
					#properties: #(PropertyListDictionary #labelFromApplication false #allowSorting true #allowResizing true) 
					#model: #'selectedRow currentValueAsString' 
					#label: 'Current value' 
					#labelIsImage: false 
					#width: 80 
					#rendererType: #Text 
					#editorType: #None 
					#type: #object 
					#noScroll: false 
					#formatString: '' 
					#labelsAsButtons: true) #(DataSetColumnSpec 
					#properties: #(PropertyListDictionary #labelFromApplication false #allowSorting false #allowResizing true) 
					#model: #'selectedRow initValue' 
					#label: 'Start value' 
					#labelIsImage: false 
					#width: 80 
					#editorType: #InputField 
					#type: #object 
					#noScroll: false 
					#formatString: '' 
					#labelsAsButtons: true) #(DataSetColumnSpec 
					#properties: #(PropertyListDictionary #labelFromApplication false #allowSorting false #allowResizing true) 
					#model: #'selectedRow finalValue' 
					#label: 'Final value' 
					#labelIsImage: false 
					#width: 80 
					#editorType: #InputField 
					#type: #object 
					#noScroll: false 
					#formatString: '' 
					#labelsAsButtons: true) #(DataSetColumnSpec 
					#properties: #(PropertyListDictionary #labelFromApplication false #allowSorting false #allowResizing true) 
					#model: #'selectedRow step' 
					#label: 'Increment' 
					#labelIsImage: false 
					#width: 80 
					#editorType: #InputField 
					#type: #object 
					#noScroll: false 
					#formatString: '' 
					#labelsAsButtons: true)) 
				#labelsAsButtons: true) #(CheckBoxSpec 
				#layout: #(Point 22 20) 
				#name: #CheckBox1 
				#model: #isRandomSeedFixed 
				#helpText: 'Select if you want to fix the random seed and start each simulation with same seed value' 
				#label: 'Fix the random seed to:') #(LabelSpec 
				#layout: #(Point 22 204) 
				#name: #Label2 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue 0 4808 453)) 
				#label: 'Number of repetitions') #(InputFieldSpec 
				#layout: #(Rectangle 136 203 190 225) 
				#name: #nbOfRepeat 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 4329 6938 4329)) 
				#model: #nbOfRepeat 
				#alignment: #right 
				#type: #number 
				#formatString: '0') #(InputFieldSpec 
				#layout: #(Rectangle 87 41 209 62) 
				#name: #randomSeed 
				#flags: 40 
				#model: #randomSeed 
				#alignment: #right 
				#type: #number 
				#formatString: '0') #(SequenceViewSpec 
				#layout: #(Rectangle 446 19 707 212) 
				#name: #listProbes 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 6143 6143 8191)) 
				#model: #listProbes 
				#callbacksSpec: #(UIEventCallbackSubSpec 
					#doubleClickSelector: #modifyProbe) 
				#helpText: 'click on the probes (Ctrl for multi selection)' 
				#multipleSelections: true 
				#useModifierKeys: true 
				#selectionType: #checkMark) #(LabelSpec 
				#layout: #(Point 22 76) 
				#name: #Label3 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue #red)) 
				#label: 'init:') #(LabelSpec 
				#layout: #(Point 22 137) 
				#name: #Label4 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue #red)) 
				#label: 'step:') #(GroupBoxSpec 
				#layout: #(Rectangle 10 0 237 198) 
				#name: #GroupBox1 
				#label: 'Choose init and step methods') #(LabelSpec 
				#layout: #(Point 256 59) 
				#name: #Label6 
				#label: 'Record as:') #(SequenceViewSpec 
				#layout: #(Rectangle 256 78 426 166) 
				#name: #List1 
				#model: #probeFormat 
				#callbacksSpec: #(UIEventCallbackSubSpec 
					#doubleClickSelector: #help) 
				#menu: #menuProbeFormat 
				#multipleSelections: true 
				#useModifierKeys: true 
				#selectionType: #checkMark) #(LabelSpec 
				#layout: #(Point 257 16) 
				#name: #Label7 
				#label: 'Save as:') #(MenuButtonSpec 
				#layout: #(Rectangle 257 37 422 58) 
				#name: #MenuButton1 
				#model: #fileFormat 
				#menu: #fileFormatChooser) #(ComboBoxSpec 
				#layout: #(Rectangle 48 76 209 97) 
				#name: #ComboBox1 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 8191 7679 7167)) 
				#model: #initMethod 
				#comboList: #initMethodChoices) #(ComboBoxSpec 
				#layout: #(Rectangle 48 137 209 159) 
				#name: #ComboBox2 
				#colors: #(LookPreferences 
					#setBackgroundColor: #(ColorValue 8191 7679 7167)) 
				#model: #stepMethod 
				#comboList: #stepMethodChoices) #(ActionButtonSpec 
				#layout: #(Rectangle 377 204 422 228) 
				#name: #ActionButton1 
				#model: #close 
				#helpText: 'Reset the parameters to their default value' 
				#label: 'Cancel' 
				#defaultable: true) #(CheckBoxSpec 
				#layout: #(Point 22 108) 
				#name: #releaseRandomSeed 
				#flags: 32 
				#model: #releaseRandomSeed 
				#helpText: 'Select if you want to release the initial random seed. Thus, each run may be different' 
				#label: 'Release random seed after initialization') #(GroupBoxSpec 
				#layout: #(Rectangle 437 -1 711 220) 
				#name: #GroupBox3 
				#label: 'Probes to record') #(LabelSpec 
				#layout: #(Point 22 170) 
				#name: #Label1 
				#label: 'final step:') #(InputFieldSpec 
				#layout: #(Rectangle 75 170 129 193) 
				#name: #InputField2 
				#model: #finalStep 
				#alignment: #right 
				#type: #number 
				#formatString: '0') #(LabelSpec 
				#layout: #(Point 258 171) 
				#name: #periodLabel 
				#flags: 16 
				#label: 'Average on period: ' 
				#style: #pixelDefault) #(GroupBoxSpec 
				#layout: #(Rectangle 247 0 431 198) 
				#name: #GroupBox2 
				#label: 'Output format') #(InputFieldSpec 
				#layout: #(Rectangle 342 172 425 191) 
				#name: #periodField 
				#flags: 24 
				#model: #periodField 
				#isReadOnly: true))))
]

{ #category : #'actions_buttons' }
CrossedSensitivity >> checkSettings [
	"return self if ok"
	
	super checkSettings = self ifFalse: [^nil].
	self parametersToAnalyse size < 2
		ifTrue:
			[^self cormas warn: 'There should be at least 2 attributes to analyse']
]

{ #category : #accessing }
CrossedSensitivity >> defaultDirectoryName [
	
	^'CrossedSensitivity_'
]

{ #category : #testing }
CrossedSensitivity >> isCrossedAnalysis [
	
	^true
]

{ #category : #help }
CrossedSensitivity >> mainHelpText [
	
	| text |
	text := super mainHelpText.
	text := text , 'The ' asText.
	text := text
		,
			('Crossed analysis ' asText emphasizeAllWith:
					#(#bold #italic #color #-> #ColorValue #red)).
	text := text
		,
			'is usefull to study the reaction of the model to several and simultaneous modifications of its parameters. '
				withCRs asText.
	text := text
		,
			'The Crossed Analysis is similar to OAT Analysis but the selected parameter values are crossed.\-------------------------------------------------------------------------------------------\'
				asText.
	^text
]

{ #category : #'actions_buttons' }
CrossedSensitivity >> runAnalysis [
	
	self initializeAnalysis.
	self setInitialParameters.
	self runCompleteAnalysis
]

{ #category : #setParameters }
CrossedSensitivity >> setInitialParameters [
	"Set the initial values of the analysed attributes but the last one (that will be initialized at #setNextAttributeValue)"
	
	self parametersToAnalyse do: [:cav | cav initializeCurrentValue].
	self parametersToAnalyse last currentValue: nil.	"refresh"
	self classAttribValueAnalysis_List list: self parametersToAnalyse
]

{ #category : #setParameters }
CrossedSensitivity >> setNextAttributeValue [
	"Set the next value of the current analysed attribute. Then set all the attributes to their Initial values"
	
	| undoneParameters |
	undoneParameters := self parametersToAnalyse
		select: [:cav | cav isAnalysisDone not].	"Test if analysis ended"
	undoneParameters isEmpty ifTrue: [^nil].	"sinon on augmente le dernier parametre augmentable et on r√©initialise les suivants"
	self currentAnalysedAttribute: undoneParameters last.
	self currentAnalysedAttribute setNextValue.
	1 + (self parametersToAnalyse indexOf: currentAnalysedAttribute)
		to: self parametersToAnalyse size
		do: [:i | (self parametersToAnalyse at: i) initializeCurrentValue].
	self applyNewValues.	"refresh"
	self classAttribValueAnalysis_List list: self parametersToAnalyse
]

{ #category : #accessing }
CrossedSensitivity >> totalSimNumber [
	"return the number of simulations for the analysis, Without multiplying by the repeat number for each parameters set."
	
	| tot |
	tot := 1.
	self parametersToAnalyse do: [:cav | tot := tot * cav nbOfSims].
	^tot
]
