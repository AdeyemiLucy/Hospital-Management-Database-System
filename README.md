# Hospital-Management-Database-System
This project presents a relational database system built with SQL Server for managing hospital operations  including patient registration, appointments, medical records. Designed for healthcare data tracking and query-based insights. It is ideal for understanding relational database design in a healthcare setting and practicing SQL query writing, table normalization, and real-world data management.
This project simulates a hospital management database system using SQL Server. It is designed to handle essential healthcare operations such as:

- Patient registration and profile management
- Doctor assignments by specialty and department
- Appointment scheduling and status tracking
- Storage of medical records including diagnoses and prescriptions
- Querying patient demographics and visit patterns


##  Database and Table Design

The database was created using T-SQL in Microsoft SQL Server Management Studio (SSMS). The schema was normalized and structured to follow relational database principles and support healthcare operations.

###  Database Creation
```sql
CREATE DATABASE HospitalManagementDB;
```
### Tables Overview
Each table in the database represents a real-world entity in a hospital system:

1. Patients - This table stores personal and login details for each patient.
- patient_id (Primary Key)
- first_name, last_name
- DOB, gender, address
- username, password
- insurance_info, email, telephone_number
- exit_date (optional: tracks when a patient leaves the hospital system)

2. Doctors- This stores doctor profile information including department and specialty.

- doctor_id (Primary Key)
- first_name, last_name
- specialization
- department_id (Foreign Key from Departments)
- telephone phone

3. Departments - Defines medical departments within the hospital.
- department_id (Primary Key)
- department_name

4. Appointments - Links patients and doctors with appointment details.
- appointment_id (Primary Key)
- patient_id (FK from Patients)
- doctor_id (FK from Doctors)
- appointment_date, appointment_time
- status (scheduled, cancelled, completed)

5. Medical_Records - Stores patient diagnosis and prescription data.
- record_id (Primary Key)
- patient_id (FK from Patients)
- diagnosis
- prescription


##  Insertion of data

The database was populated with realistic sample data for testing and demonstration purposes. This includes patients, doctors, departments, appointments, and medical records.

The full script for the insertion of values can be viewed here



#### This section outlines key observations drawn from SQL queries run against the hospital management database.

### 1. The usernames and email addresses of patients who have provided both email and telephone number.
```
SELECT username, email
FROM Patients
WHERE email IS NOT NULL
AND telephone_number IS NOT NULL;
```

<img width="226" alt="Screenshot 2025-04-25 225210" src="https://github.com/user-attachments/assets/51308db2-a1b2-48a6-acc2-19d3b5bccc92" />

### 2. The number of active patients still present in the hospital
```
SELECT gender, COUNT(*) AS active_patients
FROM Patients
WHERE DOE IS NULL
GROUP BY gender;
```
<img width="251" alt="12" src="https://github.com/user-attachments/assets/7cfa1b83-cba6-44f2-a085-9add23f625c3" />


### 3. The names and specialties of all doctors practicing at the hospital.
```
SELECT first_name, last_name, specialization
FROM Doctors
```
<img width="379" alt="2" src="https://github.com/user-attachments/assets/a91ee0e7-a9ce-4b91-8f1c-42f3ea782bfa" />
<img width="377" alt="1" src="https://github.com/user-attachments/assets/903cbb85-735f-414f-8e1a-c142d733d21b" />

### 4. The names of all patients who have completed appointments with a doctor.
```
SELECT P.first_name, P.last_name, A.[status]
FROM Patients AS P
JOIN Appointments AS A ON P.patient_id = A.patient_id
WHERE A.[status] = 'completed';
```
<img width="275" alt="3" src="https://github.com/user-attachments/assets/3a03dc24-e577-4a88-a6b5-2e7a4d1f8cdd" />

### 5. The medical record IDs and corresponding diagnoses for all patients.
```
SELECT 
    MR. record_id, 
    P.patient_id, 
    MR.diagnosis
FROM Medical_Records AS MR
JOIN Patients AS P ON  MR.patient_id = p.patient_id
ORDER BY record_id
```
<img width="407" alt="5" src="https://github.com/user-attachments/assets/c6e7fa00-5e70-428f-bc35-29445ee92a88" />
<img width="442" alt="4" src="https://github.com/user-attachments/assets/ba8236e1-189d-4240-a8ca-e381663b3229" />

### 6. Patients who have appointments scheduled with a doctor on weekdays (Monday to Friday) after 3 PM.

```

SELECT P.username, P.email
FROM Patients AS P
JOIN Appointments AS A ON P.patient_id = A.patient_id
WHERE DATENAME(WEEKDAY,A.appointment_date) 
    IN ('Monday', 'Tuesday', 'Wednesday','Thursday', 'Friday')
    AND A.appointment_time > '15:00:00'
    AND A.status ='Scheduled'
```

<img width="224" alt="6" src="https://github.com/user-attachments/assets/3a7abad8-277a-4000-a9c3-405d859b1dee" />

### 7. Appointment details (date, time, doctor) for appointments scheduled in the 'Cardiology' department between January 20, 2024, and April 30, 2024.
```
SELECT A.appointment_date, A. appointment_time, D.first_name, D.last_name, DE.name
FROM Appointments as A
INNER JOIN Doctors AS D ON A.doctor_id = D.doctor_id
JOIN Departments AS DE ON DE.department_id = D.department_id
WHERE A.appointment_date BETWEEN '2024-01-20' AND '2024-04-30'
AND DE.name ='Cardiology';
```
<img width="489" alt="7" src="https://github.com/user-attachments/assets/172543c3-3663-4575-94ce-e9a7436de6e8" />


### 8. The names of patients who have completed appointments with a doctor whose specialty is 'Neurology' or 'Dermatology'.
```
SELECT P.first_name, P.last_name, D.specialization
FROM Patients AS P
JOIN Appointments AS A ON P.patient_id = A.patient_id
JOIN Doctors AS D ON D.doctor_id = A.doctor_id
WHERE
     A.status= 'completed'
    AND D.specialization IN('Neurologist', 'Dermatologist')
```

<img width="311" alt="8" src="https://github.com/user-attachments/assets/8144fd9a-7f96-4e98-a1d9-7ca7a89d3257" />

### 9. Distinct patient IDs for patients who have appointments scheduled in the 'Cardiology' department.

```
SELECT A. patient_id, DE.name
FROM Appointments AS A
JOIN Doctors AS D ON A.doctor_id = D.doctor_id
JOIN Departments AS DE ON DE.department_id = D.department_id
WHERE DE.name = 'Cardiology'
AND A.[status] = 'Scheduled';
```
<img width="192" alt="9" src="https://github.com/user-attachments/assets/c0a12e3b-5865-41d0-8f06-b432857d9f88" />

### 10.The patient IDs and appointment dates for appointments scheduled, sorted in ascending order of patient IDs.

```
SELECT P.patient_id,P.first_name, P.last_name, A.appointment_date, D.specialization
FROM Patients AS P
JOIN Appointments AS A  ON P.patient_id = A.patient_id
JOIN Doctors AS D ON D.doctor_id = A. doctor_id
WHERE A.[status] ='Scheduled'
ORDER BY P.patient_id;
```
<img width="515" alt="10" src="https://github.com/user-attachments/assets/4a6a9da7-6e0a-405b-b893-5d1dcc46dfa5" />

### 11. The usernames and email addresses of patients who have appointments scheduled with a doctor on weekdays (Monday to Friday) after 3 PM.

```
SELECT P.username, P.email
FROM Patients AS P
JOIN Appointments AS A ON P.patient_id = A.patient_id
WHERE DATENAME(WEEKDAY,A.appointment_date) 
    IN ('Monday', 'Tuesday', 'Wednesday','Thursday', 'Friday')
    AND A.appointment_time > '15:00:00'
    AND A.status ='Scheduled'
```
<img width="223" alt="11" src="https://github.com/user-attachments/assets/31b37942-cb01-40d8-a4a5-24937132ed9b" />



## Conclusion

This project showcases the design and implementation of a hospital management database system using SQL Server. It covers essential healthcare operations such as patient registration, appointment scheduling, doctor-patient interactions, and medical record tracking.
By creating normalized tables, inserting realistic data, and writing practical SQL queries, this project demonstrates how structured databases can support efficient data storage, retrieval, and analysis in a healthcare setting. 

The ability to organize, query, and interpret this data accurately is critical for hospitals to improve decision-making, optimize resources, and enhance patient care.
This project not only strengthened my understanding of relational databases and SQL but also laid a strong foundation for more advanced analytics work in real-world environments.


Thank you for viewing this project! Feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/adeyemilucy?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BHinUZJ6RQ%2FKixtkPpE%2BFLA%3D%3D) or check out my learning journey on [Medium](https://medium.com/@adeyemilucie).


