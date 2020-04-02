//%attributes = {"invisible":true,"preemptive":"capable"}
ASSERT:C1129(encodeURIComponent ("?x=test")="%3Fx%3Dtest";"Error in test case 1")
ASSERT:C1129(encodeURIComponent (";,/?:@&=+$")="%3B%2C%2F%3F%3A%40%26%3D%2B%24";"Error in test case 2")  // Reserved Characters
ASSERT:C1129(encodeURIComponent ("-_.!~*'()")="-_.!~*'()";"Error in test case 3")  // Unescaped Characters
ASSERT:C1129(encodeURIComponent ("#")="%23";"Error in test case 4")  // Number Sign
ASSERT:C1129(encodeURIComponent ("ABC abc 123")="ABC%20abc%20123";"Error in test case 5")  // Alphanumeric Characters + Space
