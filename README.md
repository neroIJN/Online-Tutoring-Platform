# Online-Tutoring-Platform
Online Tutoring Platform
This project is an online tutoring platform designed to facilitate interactions between students and tutors. It allows students to sign in, manage profiles, view their subjects, and get in touch with tutors for specific subjects. Tutors can manage their profiles, offer various subjects, and provide personalized tutoring to students based on their chosen streams.

Features
User Authentication: The platform supports user authentication for students, tutors, and administrators.
User Profiles: Users can manage their profiles, including updating personal details, stream names, and contact information.
Student Management: Admins can manage student details, including their subjects, streams, and contact information.
Tutor Management: Tutors can create and update their profiles, offer tutoring in specific subjects, and interact with students.
Subject Enrollment: Students can enroll in subjects, and tutors can manage their offerings.
Phone Number Management: Each student has associated phone numbers for communication.
Database Design
The project utilizes MySQL for data storage, with the following tables:

SIGNIN: Stores user login credentials and types (Teacher, Student, Admin).
USER: Stores user details including names, user type, and stream names.
STUDENT: Stores detailed student information, including contact details and date of birth.
STUDENT_SUBJECT: Links students to their enrolled subjects.
STUDENT_PHONES: Stores multiple phone numbers associated with students.
TUTOR: Stores tutor details such as name and subject specialization.
TUTOR_SUBJECT: Links tutors to subjects they can teach.
Key SQL Operations:
INSERT, UPDATE, DELETE: CRUD operations are performed on various tables to manage users, students, tutors, and subjects.
Foreign Key Constraints: Used for data integrity, ensuring relationships between tables (e.g., USER_ID in USER table and SIGNIN table).
Installation
Clone the repository.
Set up a MySQL database and import the schema and data using the provided SQL script.
Customize the platform as needed to fit your requirements.
Technologies Used
MySQL for database management.
SQL queries for CRUD operations.
