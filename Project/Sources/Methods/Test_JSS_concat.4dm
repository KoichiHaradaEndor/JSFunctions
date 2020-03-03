//%attributes = {"invisible":true}
C_OBJECT:C1216($s)

$s:=new String ("Hello, ")
ASSERT:C1129($s.concat("Kelvin";". Have a nice day.").valueOf()="Hello, Kelvin. Have a nice day.";"Error in test case 1")

$s:=new String ("")
ASSERT:C1129($s.concat("true").valueOf()="true";"Error in test case 2")
ASSERT:C1129($s.concat(4;5).valueOf()="45";"Error in test case 3")
ASSERT:C1129($s.concat(Null:C1517).valueOf()="null";"Error in test case 4")
ASSERT:C1129($s.concat(New collection:C1472("Hello";" ";"Venkat";"!")).valueOf()="Hello, ,Venkat,!";"Error in test case 5")
