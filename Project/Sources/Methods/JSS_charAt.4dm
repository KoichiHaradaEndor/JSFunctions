//%attributes = {"invisible":true,"preemptive":"capable"}
  // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/charAt

C_LONGINT:C283($1;$index_l)
C_OBJECT:C1216($0)

C_TEXT:C284($value_t;$result_t)

ASSERT:C1129(This:C1470.PrimitiveValue.type="string";"JSString Object may not been initialized correctly.")

If (Count parameters:C259=0)
	$index_l:=0
Else 
	$index_l:=$1
End if 

$result_t:=""

Case of 
	: ($index_l<0)
		
	: (This:C1470.length<=$index_l)
		
	Else 
		
		$value_t:=This:C1470.valueOf()
		$result_t:=$value_t[[$index_l+1]]
		
End case 

$0:=new String ($result_t)
