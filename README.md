# ExamPortal
A full-stack web application portal that can help schools or universities to conduct examination for their students.

**Students**
* Students need to register in the portal with their uniquie roll number, email and password so as to write the examination.  
* Students on logging in will be redirected to their dashboard page where they can do following tasks:
  1. Download question paper set by the university (admin)  
  2. Upload their answer sheet which gets saved in database.
* Students have the liberty to change their password once they login.  
* Students can submit their answer sheet any number of times, but only their last response will be considered for evaluation.

**Admins**
* Admin needs to login with proper credentials.  
* They can upload the question paper in the portal.
* They decide which set of students get a particular question paper.  
* They can download attendance sheet, i.e., roll number of students who have succesfully submitted their question paper.  


**Technolgies Used**  
*JSP and servelet, HTML, CSS (Bootstrap 4), JavaScript (Vanilla)* 


**Starting up with a demo**  
* Registered students:108117000, 108117001, 111117000, 111117001, 106117000, 106117001   
* Password of students:password  
* Question Paper Codes: qp1.docx, qp2.docx, qp3.docx  
* Admin credentials:  username:admin, password:1234  



*Note: More about initializations can be found in src/Database/HandlingInitialization.java (or) src/PeekDatabase/Students.java*
