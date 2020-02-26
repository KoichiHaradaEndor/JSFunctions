//%attributes = {"invisible":true,"preemptive":"capable"}
  // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/charAt

C_LONGINT:C283($1;$index_l)
C_OBJECT:C1216($0)

C_TEXT:C284($result_t)

If (Count parameters:C259=0)
	$index_l:=0
Else 
	$index_l:=$1
End if 

$result_t:=""

Case of 
	: ($index_l<0)
		
	: (Undefined:C82(This:C1470.PrimitiveValue))
		
	: (Length:C16(This:C1470.PrimitiveValue)<=$index_l)
		
	Else 
		
		$result_t:=This:C1470.PrimitiveValue[[$index_l+1]]
		
End case 

$0:=new String ($result_t)
