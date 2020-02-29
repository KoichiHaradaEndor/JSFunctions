//%attributes = {"invisible":true,"preemptive":"capable"}
  // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/concat
C_TEXT:C284(${1})
C_OBJECT:C1216($0)

C_TEXT:C284($result_t)

C_LONGINT:C283($index_l)

ASSERT:C1129(This:C1470.PrimitiveValue.type="string";"JSString Object may not been initialized correctly.")

$result_t:=This:C1470.valueOf()
For ($index_l;1;Count parameters:C259)
	$result_t:=$result_t+${$index_l}
End for 

$0:=new String ($result_t)
