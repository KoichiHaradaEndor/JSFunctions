//%attributes = {"invisible":true,"preemptive":"capable"}
C_TEXT:C284($0;$result_t)

$result_t:=""

Case of 
	: (Undefined:C82(This:C1470.PrimitiveValue))
		
	Else 
		
		$result_t:=This:C1470.PrimitiveValue
		
End case 

$0:=$result_t
