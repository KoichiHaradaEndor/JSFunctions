//%attributes = {"invisible":true}
C_OBJECT:C1216($s)

$s:=new String ("Brave new world")
ASSERT:C1129($s.charAt().valueOf()="B";"Error in test case 1")
ASSERT:C1129($s.charAt(0).valueOf()="B";"Error in test case 2")
ASSERT:C1129($s.charAt(1).valueOf()="r";"Error in test case 3")
ASSERT:C1129($s.charAt(2).valueOf()="a";"Error in test case 4")
ASSERT:C1129($s.charAt(3).valueOf()="v";"Error in test case 5")
ASSERT:C1129($s.charAt(4).valueOf()="e";"Error in test case 6")
ASSERT:C1129($s.charAt(-1).valueOf()="";"Error in test case 7")
ASSERT:C1129($s.charAt(999).valueOf()="";"Error in test case 8")
ALERT:C41("Done")
