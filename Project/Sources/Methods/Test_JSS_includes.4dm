//%attributes = {"invisible":true}
C_OBJECT:C1216($s)

$s:=new String ("To be, or not to be, that is the question.")
ASSERT:C1129($s.includes("To be").valueOf()=True:C214;"Error in test case 1")
ASSERT:C1129($s.includes("question").valueOf()=True:C214;"Error in test case 2")
ASSERT:C1129($s.includes("nonexistent").valueOf()=False:C215;"Error in test case 3")
ASSERT:C1129($s.includes("To be";1).valueOf()=False:C215;"Error in test case 4")
ASSERT:C1129($s.includes("TO BE").valueOf()=False:C215;"Error in test case 5")
ASSERT:C1129($s.includes("").valueOf()=True:C214;"Error in test case 6")

$s:=new String ("undefined")
ASSERT:C1129($s.includes().valueOf()=True:C214;"Error in test case 7")
