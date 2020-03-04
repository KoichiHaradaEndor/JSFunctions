//%attributes = {"invisible":true,"preemptive":"capable"}
  // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/indexOf

C_TEXT:C284($1;$searchValue_t)
C_LONGINT:C283($2;$fromIndex_l)
C_OBJECT:C1216($0)

C_LONGINT:C283($result_l;$length_l)
C_TEXT:C284($value_t)

ASSERT:C1129(This:C1470.PrimitiveValue.type="string";"JSString Object may not been initialized correctly.")

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

$value_t:=This:C1470.valueOf()
$length_l:=This:C1470.length

If ($searchValue_t="")
	
	Case of 
		: ($fromIndex_l<=$length_l)
			$result_l:=$fromIndex_l
			
		: ($fromIndex_l>$length_l)
			$result_l:=$length_l
			
	End case 
	
Else 
	
	Case of 
		: ($fromIndex_l<0)
			  // for index value less than 0, the search starts at index 0.
			$fromIndex_l:=0
			
		: ($fromIndex_l>$length_l)
			  // for index value greater than the length of the string, the search starts at the length.
			$fromIndex_l:=$length_l
			
	End case 
	
	$fromIndex_l:=$fromIndex_l+1  // In 4D, position index starts from 1
	$result_l:=Position:C15($searchValue_t;$value_t;$fromIndex_l;*)
	$result_l:=$result_l-1  // In JSFunction, position index starts from 0
	
End if 

$0:=new Number ($result_l)
