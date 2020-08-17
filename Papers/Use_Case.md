## Name: Anthony Scholeno
## File: Project Step 7, Use Case

#### Use Case: Online Exam

##### Actors
Student

##### Trigger
Student needs to take an Exam.

##### Pre-Condition
An Exam has been created for the student

##### Post-Condition
Student will have received grade and exam results have been recorded

##### Normal Flow
1. The Student logs into the webpage to access the exam
2. Student selects exam they are taking
3. The student will be prompted confirm their information (Name, email, etc.)
4. Student takes the exam
5. Once the student has completed the exam they will submit it for grade calculation
6. The exam will auto grade and return the grade
7. The grade will be logged in the database with the students information
8. The student will exit the exam

##### Alternate Flow
A. The Student does not have an account
1. Student will select "e-mail the Administrator to have an account created"
2. An administrator will create an account for the student to take the exam
B. Students information is incorrect
1. The student will fill out a form with their correct information
2. The students information will be updated in the database

