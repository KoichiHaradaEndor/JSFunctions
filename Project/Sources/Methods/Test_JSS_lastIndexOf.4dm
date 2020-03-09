//%attributes = {"invisible":true}
C_OBJECT:C1216($s)

$s:=new String ("AAAXABAABBCAC")
ASSERT:C1129($s.lastIndexOf("ABBC").valueOf()=7;"Error in test case 1")

$s:=new String ("Brave new world")
ASSERT:C1129($s.lastIndexOf("w").valueOf()=10;"Error in test case 1")
ASSERT:C1129($s.lastIndexOf("new").valueOf()=6;"Error in test case 2")

$s:=new String ("canal")
ASSERT:C1129($s.lastIndexOf("a").valueOf()=3;"Error in test case 3")
ASSERT:C1129($s.lastIndexOf("a";2).valueOf()=1;"Error in test case 4")
ASSERT:C1129($s.lastIndexOf("a";0).valueOf()=-1;"Error in test case 5")
ASSERT:C1129($s.lastIndexOf("x").valueOf()=-1;"Error in test case 6")
ASSERT:C1129($s.lastIndexOf("c";-5).valueOf()=0;"Error in test case 7")
ASSERT:C1129($s.lastIndexOf("c";0).valueOf()=0;"Error in test case 8")
ASSERT:C1129($s.lastIndexOf("").valueOf()=5;"Error in test case 9")
ASSERT:C1129($s.lastIndexOf("";2).valueOf()=2;"Error in test case 10")

$s:=new String ("abab")
ASSERT:C1129($s.lastIndexOf("ab";2).valueOf()=2;"Error in test case 11")
