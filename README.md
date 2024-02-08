# Doctorcare api website

## Project Introduction
The demand for businesses to find suitable candidates for jobs and for individuals to find employment opportunities is increasing rapidly. As a result, the design and development of recruitment websites using modern information technology have become crucial. This project aims to fulfill the needs of businesses and job seekers by providing an online platform for recruitment purposes.

The project utilizes the following technologies:
- Programming language: Java
- Framework: Spring MVC +Spring boot + Spring Security
- Database: MySQL

## Functional Description

### For User,Patient:
- Register, log in, and log out of the system
- Forgot password
- Display information of prominent specialties
- Display information of prominent medical facilities
- Display personal information
- General search
- Search by doctor's specialty
- Make an appointment

### For Doctors:
- Register, log in, and log out of the system
- Forgot password
- Display patient list
- Receive/cancel patient's examination schedule
- Lock/unlock the doctor's account

### For Admin:
- Lock/unlock the patient's account
- Add doctor's account

## Demo Link : https://findjobwebapp-nlmetolt6a-as.a.run.app/asm02

## Deployment Instructions :
1.To deploy the project on your local machine, follow these steps:

- Step 1: Install Java Development Kit (JDK) and MySQL on your computer.
- Step 2: Use the SQL script provided in the "sql script" folder to set up the database.
- Step 3: Install Apache Tomcat or a similar web server to deploy the Spring MVC application.
- Step 4: Configure the database connection by modifying the information in the "jpaconfig.java" file to match your configuration.
- Step 5: Run the application on the server (preferably Tomcat 9).
- Step 6: Using postman to get API

2.Deploy by using dockerfile
- Step 1 : if you using window ,download docker desktop
- Step 2 : use command docker build -t abc(name of project) .
- Step 3 : Open Docker Desktop , and run it with port 8080
