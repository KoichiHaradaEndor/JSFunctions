//%attributes = {"invisible":true,"preemptive":"capable"}
  // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/includes

C_TEXT:C284($1;$searchValue_t)
C_LONGINT:C283($2;$fromIndex_l)
C_OBJECT:C1216($0)

C_BOOLEAN:C305($result_b)

If (Count parameters:C259>0)
	$searchValue_t:=$1
Else 
	$searchValue_t:="undefined"
End if 

If (Count parameters:C259>1)
	$fromIndex_l:=$2
Else 
	$fromIndex_l:=0
End if 

$result_b:=(This:C1470.indexOf($searchValue_t;$fromIndex_l).valueOf()#-1)

$0:=new Boolean ($result_b)
