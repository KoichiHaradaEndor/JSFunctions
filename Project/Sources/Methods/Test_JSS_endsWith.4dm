//%attributes = {"invisible":true}
C_OBJECT:C1216($s)

$s:=new String ("To be, or not to be, that is the question.")
ASSERT:C1129($s.endsWith("question.").valueOf()=True:C214;"Error in test case 1")
ASSERT:C1129($s.endsWith("to be").valueOf()=False:C215;"Error in test case 2")
ASSERT:C1129($s.endsWith("to be";19).valueOf()=True:C214;"Error in test case 3")
