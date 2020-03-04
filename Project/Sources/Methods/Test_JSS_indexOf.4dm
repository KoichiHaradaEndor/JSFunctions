//%attributes = {"invisible":true}
C_OBJECT:C1216($s)

$s:=new String ("Blue Whale")
ASSERT:C1129($s.indexOf("Blue").valueOf()=0;"Error in test case 1")
ASSERT:C1129($s.indexOf("Blute").valueOf()=-1;"Error in test case 2")
ASSERT:C1129($s.indexOf("Whale";0).valueOf()=5;"Error in test case 3")
ASSERT:C1129($s.indexOf("Whale";5).valueOf()=5;"Error in test case 4")
ASSERT:C1129($s.indexOf("Whale";7).valueOf()=-1;"Error in test case 5")
ASSERT:C1129($s.indexOf("").valueOf()=0;"Error in test case 6")
ASSERT:C1129($s.indexOf("";9).valueOf()=9;"Error in test case 7")
ASSERT:C1129($s.indexOf("";10).valueOf()=10;"Error in test case 8")
ASSERT:C1129($s.indexOf("";11).valueOf()=10;"Error in test case 9")
ASSERT:C1129($s.indexOf("blue";11).valueOf()=-1;"Error in test case 10")
