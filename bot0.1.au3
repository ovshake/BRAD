$ZipFile5="C:\Users\Abhishek\Downloads\BackPack_Resources\ComputerSystemsManagement_Exams.zip"
$ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources"
$objShell5 = ObjCreate("Shell.Application")
$FilesInZip5= $objShell5.NameSpace($ZipFile5)
$objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)


$ZipFile5="C:\Users\Abhishek\Downloads\BackPack_Resources\ComputerSystemsManagement_Lectures.zip"
$ExtractTo5="C:\Users\Abhishek\Downloads\BackPack_Resources\CSE131\Lectures"
$objShell5 = ObjCreate ("Shell.Application")
$FilesInZip5=$objShell5.NameSpace($ZipFile5)
$objShell5.NameSpace($ExtractTo5).CopyHere($FilesInZip5,0x4)