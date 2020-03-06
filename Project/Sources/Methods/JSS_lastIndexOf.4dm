//%attributes = {"invisible":true,"preemptive":"capable"}
  // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/lastIndexOf

C_TEXT:C284($1;$searchValue_t)
C_LONGINT:C283($2;$fromIndex_l)
C_OBJECT:C1216($0)

C_LONGINT:C283($result_l;$length_l;$returnResult_l)
C_TEXT:C284($value_t)

ASSERT:C1129(This:C1470.PrimitiveValue.type="string";"JSString Object may not been initialized correctly.")

If (Count parameters:C259>0)
	$searchValue_t:=$1
Else 
	$searchValue_t:="undefined"
End if 

$value_t:=This:C1470.valueOf()
$length_l:=This:C1470.length

If (Count parameters:C259>1)
	
	$fromIndex_l:=$2
	
	  // when second parameter (fromIndex) is passed, 
	  // the TEXT is used only from the first character to fromIndex plus the length of the pattern.
	$value_t:=Substring:C12($value_t;1;$2+Length:C16($searchValue_t))
	
Else 
	$fromIndex_l:=0
End if 

If ($searchValue_t="")
	
	Case of 
		: ($fromIndex_l<=$length_l)
			$result_l:=$fromIndex_l
			
		: ($fromIndex_l>$length_l)
			$result_l:=$length_l
			
	End case 
	
Else 
	
	Case of 
		: ($fromIndex_l<=0)
			  // for index value equals to or less than 0, the search starts at index 1.
			$fromIndex_l:=1
			
		: ($fromIndex_l>$length_l)
			  // for index value greater than the length of the string, the search starts at the length.
			$fromIndex_l:=$length_l
			
	End case 
	
	Repeat 
		
		$result_l:=Position:C15($searchValue_t;$value_t;$fromIndex_l;*)
		If ($result_l>0)
			$fromIndex_l:=$result_l-1
		End if 
		
	Until ($result_l=0)
	$result_l:=$result_l-1  // In JSFunction, position index starts from 0
	
End if 

$0:=new Number ($result_l)
