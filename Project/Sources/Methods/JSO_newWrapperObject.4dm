//%attributes = {"invisible":true,"preemptive":"capable"}
  //**
  //* This method creates and returns JSWrapper object.
  //* 
  //* @author: HARADA Koichi
  //* @param {Object} $1 JSObject object created with JSO_newObject
  //* @return {Object}
  //*/

C_OBJECT:C1216($1;$0;$jswo_o)

$jswo_o:=JSO_newObject 

ASSERT:C1129(($jswo_o#Null:C1517);"JSObject may not been initialized correctly.")

$jswo_o.PrimitiveValue:=New object:C1471()

$0:=$jswo_o
