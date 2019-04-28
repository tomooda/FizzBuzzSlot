Class {
	#name : #ExampleFizzBuzz,
	#superclass : #Object,
	#instVars : [
		'#x => FizzBuzzSlot'
	],
	#category : #FizzBuzzSlot
}

{ #category : #accessing }
ExampleFizzBuzz >> x [
	^ x
]

{ #category : #accessing }
ExampleFizzBuzz >> x: anInteger [
	x := anInteger
]
