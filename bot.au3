#include <IE.au3>
#prag ma compile(inputboxres, true)

 Global $user = InputBox("Hello","Please Enter Your EmailID")
 Global $pswrd = InputBox("Hello Again","Please Enter Your Password","","*")


 Func signInbackpack()
   Global $oIE = _IECreate("usebackpack.com")
   Local $username = _IEGetObjByName($oIE,"user[email]" )
   Local $password = _IEGetObjByName($oIE, "user[password]")
   Local $button = _IEGetObjByName ($oIE, "commit")
   _IEFormElementSetValue ($username, $user)
   _IEFormElementSetValue ($password, $pswrd)
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
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\CSE131")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\CSE131\Exams")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\CSE131\Solutions")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\CSE131\Others")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\CSE131\Lectures")

   _IENavigate($oIE, "https://www.usebackpack.com/resources/Lecture/695/generate")
   Call("changetopic")

   _IENavigate($oIE,"https://www.usebackpack.com/resources/Exam/695/generate")
   Call("changetopic")

   _IENavigate($oIE, "https://www.usebackpack.com/resources/Solution/695/generate")
   Call("changetopic")

   _IENavigate($oIE,"https://www.usebackpack.com/resources/Other/695/generate")
   Call("changetopic")
   _IEQuit($oIE)

   Sleep(5000)

   $ZipFile5="C:\Users\Abhishek\Downloads\ComputerSystemsManagement_Exams.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\CSE131\Exams"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)


   $ZipFile5="C:\Users\Abhishek\Downloads\ComputerSystemsManagement_Lectures.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\CSE131\Lectures"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)


   $ZipFile5="C:\Users\Abhishek\Downloads\ComputerSystemsManagement_Others.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\CSE131\Others"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)


   $ZipFile5="C:\Users\Abhishek\Downloads\ComputerSystemsManagement_Solutions.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\CSE131\Solutions"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   FileDelete("C:\Users\Abhishek\Downloads\ComputerSystemsManagement_Solutions.zip")
   FileDelete("C:\Users\Abhishek\Downloads\ComputerSystemsManagement_Exams.zip")
   FileDelete("C:\Users\Abhishek\Downloads\ComputerSystemsManagement_Others.zip")
   FileDelete("C:\Users\Abhishek\Downloads\ComputerSystemsManagement_Lectures.zip")

EndFunc

Func CSE101()

   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\CSE101")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\CSE101\Exams")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\CSE101\Solutions")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\CSE101\Others")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\CSE101\Homeworks")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\CSE101\Labs")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\CSE101\Tutorials")

   $oIE = _IECreate("usebackpack.com")
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
   _IEQuit($oIE)

   $ZipFile5="C:\Users\Abhishek\Downloads\IntroductiontoProgramming_Exams.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\CSE101\Exams"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   $ZipFile5="C:\Users\Abhishek\Downloads\IntroductiontoProgramming_Homeworks.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\CSE101\Homeworks"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   $ZipFile5="C:\Users\Abhishek\Downloads\IntroductiontoProgramming_Labs.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\CSE101\Labs"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   $ZipFile5="C:\Users\Abhishek\Downloads\IntroductiontoProgramming_Others.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\CSE101\Others"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)


   $ZipFile5="C:\Users\Abhishek\Downloads\IntroductiontoProgramming_Solutions.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\CSE101\Solutions"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   $ZipFile5="C:\Users\Abhishek\Downloads\IntroductiontoProgramming_Tutorials.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\CSE101\Tutorials"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   FileDelete("C:\Users\Abhishek\Downloads\IntroductiontoProgramming_Solutions.zip")
   FileDelete("C:\Users\Abhishek\Downloads\IntroductiontoProgramming_Exams.zip")
   FileDelete("C:\Users\Abhishek\Downloads\IntroductiontoProgramming_Others.zip")
   FileDelete("C:\Users\Abhishek\Downloads\IntroductiontoProgramming_Labs.zip")
   FileDelete("C:\Users\Abhishek\Downloads\IntroductiontoProgramming_Homeworks.zip")
   FileDelete("C:\Users\Abhishek\Downloads\IntroductiontoProgramming_Tutorials.zip")

EndFunc

Func ECE113()
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\ECE113")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\ECE113\Tutorials")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\ECE113\Lectures")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\ECE113\Solutions")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\ECE113\Others")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\ECE113\Homeworks")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\ECE113\Labs")

   $oIE = _IECreate("usebackpack.com")
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
   _IEQuit($oIE)

   $ZipFile5="C:\Users\Abhishek\Downloads\BasicElectronics_Lectures.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\ECE113\Lectures"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   $ZipFile5="C:\Users\Abhishek\Downloads\BasicElectronics_Tutorials.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\ECE113\Tutorials"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   $ZipFile5="C:\Users\Abhishek\Downloads\BasicElectronics_Homeworks.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\ECE113\Homeworks"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   $ZipFile5="C:\Users\Abhishek\Downloads\BasicElectronics_Labs.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\ECE113\Labs"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   $ZipFile5="C:\Users\Abhishek\Downloads\BasicElectronics_Others.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\ECE113\Others"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)


   $ZipFile5="C:\Users\Abhishek\Downloads\BasicElectronics_Solutions.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\ECE113\Solutions"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   FileDelete("C:\Users\Abhishek\Downloads\BasicElectronics_Solutions.zip")
   FileDelete("C:\Users\Abhishek\Downloads\BasicElectronics_Lectures.zip")
   FileDelete("C:\Users\Abhishek\Downloads\BasicElectronics_Tutorials.zip")
   FileDelete("C:\Users\Abhishek\Downloads\BasicElectronics_Others.zip")
   FileDelete("C:\Users\Abhishek\Downloads\BasicElectronics_Labs.zip")
   FileDelete("C:\Users\Abhishek\Downloads\BasicElectronics_Homeworks.zip")

EndFunc

Func MTH100()

   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\MTH100")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\MTH100\Tutorials")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\MTH100\Lectures")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\MTH100\Solutions")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\MTH100\Others")
   DirCreate("C:\Users\Abhishek\Downloads\BackPack_Resources\MTH100\Homeworks")

   $oIE = _IECreate("usebackpack.com")
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
   _IEQuit($oIE)

   $ZipFile5="C:\Users\Abhishek\Downloads\Maths1_LinearAlgebra_Lectures.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\MTH100\Lectures"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   $ZipFile5="C:\Users\Abhishek\Downloads\Maths1_LinearAlgebra_Tutorials.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\MTH100\Tutorials"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   $ZipFile5="C:\Users\Abhishek\Downloads\Maths1_LinearAlgebra_Homeworks.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\MTH100\Homeworks"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   $ZipFile5="C:\Users\Abhishek\Downloads\Maths1_LinearAlgebra_Others.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\MTH100\Others"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)


   $ZipFile5="C:\Users\Abhishek\Downloads\Maths1_LinearAlgebra_Solutions.zip"
   $ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\MTH100\Solutions"
   $objShell5 = ObjCreate ("Shell.Application")
   $FilesInZip5=$objShell5.NameSpace($ZipFile5).items
   $objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)

   FileDelete("C:\Users\Abhishek\Downloads\Maths1_LinearAlgebra_Solutions.zip")
   FileDelete("C:\Users\Abhishek\Downloads\Maths1_LinearAlgebra_Lectures.zip")
   FileDelete("C:\Users\Abhishek\Downloads\Maths1_LinearAlgebra_Tutorials.zip")
   FileDelete("C:\Users\Abhishek\Downloads\Maths1_LinearAlgebra_Others.zip")
   FileDelete("C:\Users\Abhishek\Downloads\Maths1_LinearAlgebra_Homeworks.zip")

EndFunc

$input1=InputBox("Subject","Please Choose Option:"  & @LF & "1. CSE131"  & @LF & "2. CSE101"  & @LF & "3. ECE113"  & @LF & "4. MTH100"  & @LF & "5. All")
Call ("signInbackpack")
Sleep(2000)

If $input1 = "1" Then
   Call("CSE131")
ElseIf $input1= "3" Then
   Call("ECE113")
ElseIf $input1 = "4" Then
   Call ("MTH100")
ElseIf $input1 = "2"
   Call ("CSE101")
Else
   Call ("CSE131")
   Call ("CSE101")
   Call ("ECE113")
   Call ("MTH100")
EndIf
