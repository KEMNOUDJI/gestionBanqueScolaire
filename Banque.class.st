Class {
	#name : #Banque,
	#superclass : #Object,
	#instVars : [
		'clientListt',
		'compteList'
	],
	#category : #Banques
}

{ #category : #accessing }
Banque >> clientListt [
	^ clientListt
]

{ #category : #accessing }
Banque >> clientListt: unClient [
	 clientListt addFirst: unClient
]

{ #category : #accessing }
Banque >> compteList [
	^ compteList
]

{ #category : #accessing }
Banque >> compteList: leCompte [
	  compteList addFirst: leCompteCompte
]

{ #category : #operation }
Banque >> creerCompte: leCompteCompte client: unClient [
	| compte client banque tail|
	banque := self .
	client := unClient.
	compte := leCompte.

	client compte: compte.
	self compteList: compte.
	self clientListt: client.
	 
 	client  id: (banque clientListt at: 1 )id + 1 .
 
 compte  numero: (banque compteList at: 1 )numero + 1 	
	 
]
{ #category : #initalize }
Banque >> initialize [ 
	"comment stating purpose of message"
		super initialize.
		 compteList:= OrderedCollection new.
		  clientListt:= OrderedCollection new 
]
