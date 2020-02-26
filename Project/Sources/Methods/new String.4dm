//%attributes = {"invisible":true,"shared":true,"preemptive":"capable"}
  //**
  //* This method creates and returns JSString object.
  //* 
  //* @author: HARADA Koichi
  //* @param {Text} $1 Primitive value that can be converted to string. Empty string if omitted. 
  //* @return {Object}
  //*/

C_VARIANT:C1683($1)
C_OBJECT:C1216($0;$jss_o)

C_LONGINT:C283($valueType_l)
C_TEXT:C284($primitiveValue_t)

$jss_o:=JSO_newObject 

If (Count parameters:C259=0)
	
	$jss_o.PrimitiveValue:=""
	
Else 
	
	$valueType_l:=Value type:C1509($1)
	
	Case of 
		: ($valueType_l=Is BLOB:K8:12)
			
		: ($valueType_l=Is collection:K8:32)
			
			$jss_o.PrimitiveValue:=$1.join(",")
			
		: ($valueType_l=Is date:K8:7)
			
			C_DATE:C307($date_d)
			$date_d:=$1
			
			$jss_o.PrimitiveValue:=String:C10(Year of:C25($date_d);"0000")+"-"+\
				String:C10(Month of:C24($date_d);"00")+"-"+\
				String:C10(Day of:C23($date_d);"00")+"T00:00:00.000Z"
			
		: ($valueType_l=Is null:K8:31)
			
			$jss_o.PrimitiveValue:=Null:C1517
			
		: ($valueType_l=Is object:K8:27)
			
		: ($valueType_l=Is picture:K8:10)
			
		: ($valueType_l=Is pointer:K8:14)
			
		: ($valueType_l=Is time:K8:8)
			
			$jss_o.PrimitiveValue:=String:C10($1;ISO time:K7:8)
			
		: ($valueType_l=Is undefined:K8:13)
			
		: ($valueType_l=Is variant:K8:33)
			
		: ($valueType_l=Object array:K8:28)
			
		Else   // Boolean, Longint, Real, Text
			
			$jss_o.PrimitiveValue:=String:C10($1)
			
	End case 
	
End if 

  // Properties
$jss_o.length:=Length:C16($jss_o.PrimitiveValue)

  // Static Methods

  // Instance Methods
  //$jss_o.charAt:=Formula(JSS_charAt)
  //$jss_o.charCodeAt:=Formula(JSS_charCodeAt)
  //$jss_o.concat:=Formula(JSS_concat)
  //$jss_o.endsWith:=Formula(JSS_endsWith)

$0:=$jss_o