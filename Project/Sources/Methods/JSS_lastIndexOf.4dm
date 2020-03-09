//%attributes = {"invisible":true,"preemptive":"capable"}
  // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/lastIndexOf

C_TEXT:C284($1;$pattern_t)
C_LONGINT:C283($2;$fromIndex_l)
C_OBJECT:C1216($0)

C_LONGINT:C283($i;$patternLength_l)
C_TEXT:C284($primitiveValue_t;$aChar_t)
C_COLLECTION:C1488($badCharacters_c;$queryResults_c)
C_OBJECT:C1216($queryResults_o)
C_BOOLEAN:C305($matched_b)

ASSERT:C1129(This:C1470.PrimitiveValue.type="string";"JSString Object may not been initialized correctly.")

$primitiveValue_t:=This:C1470.PrimitiveValue.value

If (Count parameters:C259>0)
	$pattern_t:=$1
Else 
	$pattern_t:="undefined"
End if 
$patternLength_l:=Length:C16($pattern_t)

Case of 
	: (Count parameters:C259<=1)
		$fromIndex_l:=This:C1470.length-$patternLength_l+1
		
	: ($2<0)
		$fromIndex_l:=1
		
	: ($2>=This:C1470.length)
		$fromIndex_l:=This:C1470.length-$patternLength_l+1
		
	Else 
		$fromIndex_l:=$2+1  // index starts at 0, but in 4D index starts from 1
		
End case 

$result_l:=-1

  // Create the bad character list
$badCharacters_c:=New collection:C1472()
For ($i;1;$patternLength_l)
	
	$aChar_t:=$pattern_t[[$i]]
	$queryResults_c:=$badCharacters_c.query("key = :1";$aChar_t)
	If ($queryResults_c.length=0)
		$badCharacters_c.push(New object:C1471("key";$aChar_t;"distance";$i-1))
	End if 
	
End for 

Case of 
	: ($fromIndex_l+$patternLength_l-1>This:C1470.length)
		
	Else 
		
		While ($fromIndex_l>0)
			
			$matched_b:=True:C214
			For ($i;1;$patternLength_l)
				
				$aChar_t:=$primitiveValue_t[[$fromIndex_l+$i-1]]
				If (Character code:C91($pattern_t[[$i]])#Character code:C91($aChar_t))
					
					$matched_b:=False:C215
					$i:=$patternLength_l
					$queryResults_c:=$badCharacters_c.query("key = :1";$aChar_t)
					If ($queryResults_c.length>0)
						$fromIndex_l:=$fromIndex_l-$queryResults_c[0].distance
					Else 
						$fromIndex_l:=$fromIndex_l-$patternLength_l
					End if 
					
				End if 
				
			End for 
			
			If ($matched_b)
				$result_l:=$fromIndex_l-1
				$fromIndex_l:=0
			End if 
			
		End while 
		
End case 

$0:=new Number ($result_l)
