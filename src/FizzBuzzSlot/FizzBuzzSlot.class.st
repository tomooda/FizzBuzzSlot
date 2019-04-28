Class {
	#name : #FizzBuzzSlot,
	#superclass : #IndexedSlot,
	#category : #FizzBuzzSlot
}

{ #category : #'code generation' }
FizzBuzzSlot >> emitValue: methodBuilder [
	methodBuilder pushInstVar: index
]

{ #category : #'meta-object-protocol' }
FizzBuzzSlot >> write: aValue to: anObject [
	| val |
	val := aValue asInteger.
	^ thisContext
		object: anObject
		instVarAt: index
		put:
			(val \\ 3 = 0
				ifTrue: [ val \\ 15 = 0
						ifTrue: [ 'FizzBuzz' ]
						ifFalse: [ 'Fizz' ] ]
				ifFalse: [ val \\ 5 = 0
						ifTrue: [ 'Buzz' ]
						ifFalse: [ aValue ] ])
]
