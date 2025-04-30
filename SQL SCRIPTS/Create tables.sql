CREATE DATABASE


CREATE OF TABLES

-- CREATE TABLE Patients(
	patient_id INT PRIMARY KEY IDENTITY(1,1),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	date_of_birth DATE NOT NULL,
	username VARCHAR(30) NOT NULL,
	password VARCHAR(30) NOT NULL,
	email VARCHAR(30),
	telephone_number VARCHAR(30),
	insurance_info VARCHAR(50),
	exit_date DATE
);


-- THE DOCTORS TABLE

CREATE TABLE Doctors(
	doctor_id INT PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	Specialty VARCHAR(30),
	email VARCHAR(30), 
	telephone_number VARCHAR(20)
);


--THE APPOINTMENT TABLE

CREATE TABLE Appointments(
	Appointment_id INT PRIMARY KEY IDENTITY(1,1),
	patient_id INT REFERENCES Patients(patient_id),
	doctor_id INT REFERENCES Doctors(doctor_id),
	appointment_date DATE, 
	appointment_time TIME, 
	department VARCHAR(30), 
	status VARCHAR(20)
);

--THE DEPARTMET TABLE

CREATE TABLE Departments(
	Department_id INT PRIMARY KEY IDENTITY(1,1),
	name_of_department VARCHAR(30) UNIQUE NOT NULL
);

--THE MEDICAL RECORDS TABLE

CREATE TABLE Records(
	record_id INT PRIMARY KEY IDENTITY(1,1),
	patient_id INT REFERENCES Patients(patient_id),
	diagnosis VARCHAR(100),
	prescription VARCHAR(100),
);
	
