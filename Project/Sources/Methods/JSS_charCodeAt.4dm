//%attributes = {"invisible":true,"preemptive":"capable"}
  // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/charCodeAt

C_LONGINT:C283($1;$index_l)
C_OBJECT:C1216($0)

C_LONGINT:C283($result_l)
C_OBJECT:C1216($result_o)

If (Count parameters:C259=0)
	$index_l:=0
Else 
	$index_l:=$1
End if 

$result_o:=This:C1470.charAt($index_l)

Case of 
	: (Undefined:C82($result_o.PrimitiveValue))
		
	Else 
		
		$result_l:=Character code:C91($result_o.PrimitiveValue)
		
End case 

$0:=new Number ($result_l)
