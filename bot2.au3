#include <IE.au3>
#prag ma compile(inputboxres, true)
#comments-start
 Global $user = InputBox("Hello","Please Enter Your EmailID")
 Global $pswrd = InputBox("Hello Again","Please Enter Your Password")
#comments-end'
 Func signInbackpack()
	Global $oIE = _IECreate("usebackpack.com")
	Local $username = _IEGetObjByName($oIE,"user[email]" )
	Local $password = _IEGetObjByName($oIE, "user[password]")
	Local $button = _IEGetObjByName ($oIE, "commit")
   _IEFormElementSetValue ($username, "piyush16066@iiitd.ac.in")
   _IEFormElementSetValue ($password, "temp1234")
   _IEAction ($button,"click")
 EndFunc

Func changetopic()
   Sleep(1000)
   Send("!n{TAB 1}{ENTER}")
   Sleep(3000)
   Send("!n{TAB 3}{ENTER}")
   Sleep(1000)
   _IEQuit($oIE)
   Sleep(1000)
   $oIE = _IECreate("usebackpack.com")
   Sleep(1000)
EndFunc

Func changetopicBE()
   Sleep(1000)
   Send("!n{TAB 1}{ENTER}")
   Sleep(5000)
   Send("!n{TAB 3}{ENTER}")
   Sleep(1000)
   _IEQuit($oIE)
   Sleep(1000)
   $oIE = _IECreate("usebackpack.com")
   Sleep(1000)
EndFunc

Func CSE131()
   _IENavigate($oIE, "https://www.usebackpack.com/resources/Lecture/695/generate")
   Call("changetopic")

   _IENavigate($oIE,"https://www.usebackpack.com/resources/Exam/695/generate")
   Call("changetopic")

   _IENavigate($oIE, "https://www.usebackpack.com/resources/Solution/695/generate")
   Call("changetopic")

   _IENavigate($oIE,"https://www.usebackpack.com/resources/Other/695/generate")
   Call("changetopic")
EndFunc

Func CSE101()
   _IENavigate($oIE, "https://www.usebackpack.com/resources/Homework/631/generate")
   Call("changetopic")

   _IENavigate($oIE, "https://www.usebackpack.com/resources/Tutorial/631/generate")
   Call("changetopic")

   _IENavigate($oIE, "https://www.usebackpack.com/resources/Lab/631/generate")
   Call("changetopic")

   _IENavigate($oIE,"https://www.usebackpack.com/resources/Exam/631/generate")
   Call("changetopic")

   _IENavigate($oIE, "https://www.usebackpack.com/resources/Solution/631/generate")
   Call("changetopic")

   _IENavigate($oIE,"https://www.usebackpack.com/resources/Other/631/generate")
   Call("changetopic")
EndFunc

Func ECE113()
   _IENavigate($oIE, "https://www.usebackpack.com/resources/Homework/696/generate")
   Call("changetopic")

   _IENavigate($oIE, "https://www.usebackpack.com/resources/Lecture/696/generate")
   Call("changetopicBE")

   _IENavigate($oIE, "https://www.usebackpack.com/resources/Tutorial/696/generate")
   Call("changetopic")

   _IENavigate($oIE, "https://www.usebackpack.com/resources/Lab/696/generate")
   Call("changetopic")

   _IENavigate($oIE, "https://www.usebackpack.com/resources/Solution/696/generate")
   Call("changetopic")

   _IENavigate($oIE,"https://www.usebackpack.com/resources/Other/696/generate")
   Call("changetopic")
EndFunc

Func MTH100()
   _IENavigate($oIE, "https://www.usebackpack.com/resources/Homework/672/generate")
   Call("changetopic")

   _IENavigate($oIE, "https://www.usebackpack.com/resources/Tutorial/672/generate")
   Call("changetopic")

   _IENavigate($oIE, "https://www.usebackpack.com/resources/Lecture/672/generate")
   Call("changetopic")

   _IENavigate($oIE, "https://www.usebackpack.com/resources/Solution/672/generate")
   Call("changetopic")

   _IENavigate($oIE,"https://www.usebackpack.com/resources/Other/672/generate")
   Call("changetopic")
EndFunc

Call ("signInbackpack")
Sleep(2000)
Call ("CSE131")
Call ("CSE101")
Call ("ECE113")
Call ("MTH100")

