//%attributes = {"invisible":true,"shared":true,"preemptive":"capable"}
  //**
  //* This method creates and returns JSNumber object.
  //* 
  //* @author: HARADA Koichi
  //* @param {Number} $1 Primitive value of the JSNumber object. 0 if omitted. 
  //* @return {Object}
  //*/

C_VARIANT:C1683($1)
C_OBJECT:C1216($0;$jsn_o)

$jsn_o:=JSO_newWrapperObject ()

ASSERT:C1129(Undefined:C82($jsn_o.PrimitiveValue)=False:C215;"JSWrapperObject may not been initialized correctly.")

$jsn_o.PrimitiveValue.type:="number"
$jsn_o.PrimitiveValue.value:=0

If (Count parameters:C259>0)
	
	$valueType_l:=Value type:C1509($1)
	
	Case of 
		: ($valueType_l=Is BLOB:K8:12)
			
		: ($valueType_l=Is collection:K8:32)
			
		: ($valueType_l=Is date:K8:7)
			
		: ($valueType_l=Is null:K8:31)
			
			$jsn_o.PrimitiveValue.value:=Null:C1517
			
		: ($valueType_l=Is object:K8:27)
			
		: ($valueType_l=Is picture:K8:10)
			
		: ($valueType_l=Is pointer:K8:14)
			
		: ($valueType_l=Is time:K8:8)
			
			$jsn_o.PrimitiveValue.value:=$1+0
			
		: ($valueType_l=Is undefined:K8:13)
			
		: ($valueType_l=Is variant:K8:33)
			
		: ($valueType_l=Object array:K8:28)
			
		Else   // Boolean, Longint, Real, Text
			
			$jsn_o.PrimitiveValue.value:=Num:C11($1)
			
	End case 
	
End if 

  // Properties

  // Static Methods

  // Object Methods

$0:=$jsn_o
