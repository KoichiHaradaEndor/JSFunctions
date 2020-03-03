//%attributes = {"invisible":true}
C_OBJECT:C1216($s)

$s:=new String ("Brave new world")
ASSERT:C1129($s.charCodeAt().valueOf()=0x0042;"Error in test case 1")
ASSERT:C1129($s.charCodeAt(0).valueOf()=0x0042;"Error in test case 2")
ASSERT:C1129($s.charCodeAt(1).valueOf()=0x0072;"Error in test case 3")
ASSERT:C1129($s.charCodeAt(2).valueOf()=0x0061;"Error in test case 4")
ASSERT:C1129($s.charCodeAt(3).valueOf()=0x0076;"Error in test case 5")
ASSERT:C1129($s.charCodeAt(4).valueOf()=0x0065;"Error in test case 6")
ASSERT:C1129($s.charCodeAt(-1).valueOf()=0x0000;"Error in test case 7")
ASSERT:C1129($s.charCodeAt(999).valueOf()=0x0000;"Error in test case 8")
