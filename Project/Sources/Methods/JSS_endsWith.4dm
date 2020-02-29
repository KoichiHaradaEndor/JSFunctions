//%attributes = {"invisible":true,"preemptive":"capable"}
  // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/endsWith

C_TEXT:C284($1;$searchString_t)
C_LONGINT:C283($2;$length_l)
C_OBJECT:C1216($0)

C_TEXT:C284($value_t)
C_BOOLEAN:C305($result_b)
C_LONGINT:C283($i)

ASSERT:C1129(This:C1470.PrimitiveValue.type="string";"JSString Object may not been initialized correctly.")

$searchString_t:=$1

Case of 
	: (Count parameters:C259=1)
		
		$length_l:=This:C1470.length
		
	: ($2>This:C1470.length)
		
		$length_l:=This:C1470.length
		
	Else 
		
		$length_l:=$2
		
End case 

$value_t:=This:C1470.valueOf()
$value_t:=Substring:C12($value_t;$length_l-Length:C16($searchString_t)+1;Length:C16($searchString_t))

$result_b:=True:C214
For ($i;Length:C16($searchString_t);1;-1)
	
	If (Character code:C91($value_t[[$i]])#Character code:C91($searchString_t[[$i]]))
		
		$result_b:=False:C215
		$i:=0
		
	End if 
	
End for 

$0:=new Boolean ($result_b)
