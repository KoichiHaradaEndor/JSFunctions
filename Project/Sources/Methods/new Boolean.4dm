//%attributes = {"invisible":true,"shared":true,"preemptive":"capable"}
  //**
  //* This method creates and returns JSBoolean object.
  //* 
  //* @author: HARADA Koichi
  //* @param {Boolean} $1 Primitive value that can be parsed to boolean type. False if omitted. 
  //* @return {Object}
  //*/

C_VARIANT:C1683($1)
C_OBJECT:C1216($0;$jsb_o)

$jsb_o:=JSO_newWrapperObject ()

ASSERT:C1129(Undefined:C82($jsb_o.PrimitiveValue)=False:C215;"JSWrapperObject may not been initialized correctly.")

$jsb_o.PrimitiveValue.type:="boolean"
$jsb_o.PrimitiveValue.value:=False:C215

If (Count parameters:C259>0)
	
	$valueType_l:=Value type:C1509($1)
	
	Case of 
		: ($valueType_l=Is BLOB:K8:12)
			
		: ($valueType_l=Is boolean:K8:9)
			
			$jsb_o.PrimitiveValue.value:=$1
			
		: ($valueType_l=Is collection:K8:32)
			
		: ($valueType_l=Is date:K8:7)
			
			$jsb_o.PrimitiveValue.value:=True:C214
			
		: ($valueType_l=Is longint:K8:6) | ($valueType_l=Is real:K8:4)
			
			$jsb_o.PrimitiveValue.value:=($1#0)
			
		: ($valueType_l=Is null:K8:31)
			
			$jsb_o.PrimitiveValue.value:=False:C215
			
		: ($valueType_l=Is object:K8:27)
			
		: ($valueType_l=Is picture:K8:10)
			
		: ($valueType_l=Is pointer:K8:14)
			
		: ($valueType_l=Is text:K8:3)
			
			$jsb_o.PrimitiveValue.value:=($1#"")
			
		: ($valueType_l=Is time:K8:8)
			
			$jsb_o.PrimitiveValue.value:=True:C214
			
		: ($valueType_l=Is undefined:K8:13)
			
			$jsb_o.PrimitiveValue.value:=False:C215
			
		: ($valueType_l=Is variant:K8:33)
			
		: ($valueType_l=Object array:K8:28)
			
		Else 
			
	End case 
	
End if 

  // Properties

  // Static Methods

  // Instance Methods
$jsb_o.valueOf:=Formula:C1597(JSB_valueOf )

$0:=$jsb_o
