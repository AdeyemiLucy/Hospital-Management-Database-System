
-- The usernames and email addresses of patients who have provided both email and telephone number.

SELECT username, email
FROM Patients
WHERE email IS NOT NULL
AND telephone_number IS NOT NULL;

-- The number of active patients still present in the hospital
SELECT gender, COUNT(*) AS active_patients
FROM Patients
WHERE DOE IS NULL
GROUP BY gender;


-- The names and specialties of all doctors practicing at the hospital.
SELECT first_name, last_name, specialization
FROM Doctors

 -- The names of all patients who have completed appointments with a doctor.
SELECT P.first_name, P.last_name, A.[status]
FROM Patients AS P
JOIN Appointments AS A ON P.patient_id = A.patient_id
WHERE A.[status] = 'completed';

--The medical record IDs and corresponding diagnoses for all patients.
SELECT 
    MR. record_id, 
    P.patient_id, 
    MR.diagnosis
FROM Medical_Records AS MR
JOIN Patients AS P ON  MR.patient_id = p.patient_id
ORDER BY record_id

--Patients who have appointments scheduled with a doctor on weekdays (Monday to Friday) after 3 PM.

SELECT P.username, P.email
FROM Patients AS P
JOIN Appointments AS A ON P.patient_id = A.patient_id
WHERE DATENAME(WEEKDAY,A.appointment_date) 
    IN ('Monday', 'Tuesday', 'Wednesday','Thursday', 'Friday')
    AND A.appointment_time > '15:00:00'
    AND A.status ='Scheduled'

--Appointment details (date, time, doctor) for appointments scheduled in the 'Cardiology' department between January 20, 2024, and April 30, 2024.
SELECT A.appointment_date, A. appointment_time, D.first_name, D.last_name, DE.name
FROM Appointments as A
INNER JOIN Doctors AS D ON A.doctor_id = D.doctor_id
JOIN Departments AS DE ON DE.department_id = D.department_id
WHERE A.appointment_date BETWEEN '2024-01-20' AND '2024-04-30'
AND DE.name ='Cardiology';

--The names of patients who have completed appointments with a doctor whose specialty is 'Neurology' or 'Dermatology'.
SELECT P.first_name, P.last_name, D.specialization
FROM Patients AS P
JOIN Appointments AS A ON P.patient_id = A.patient_id
JOIN Doctors AS D ON D.doctor_id = A.doctor_id
WHERE
     A.status= 'completed'
    AND D.specialization IN('Neurologist', 'Dermatologist')

--Distinct patient IDs for patients who have appointments scheduled in the 'Cardiology' department.
SELECT A. patient_id, DE.name
FROM Appointments AS A
JOIN Doctors AS D ON A.doctor_id = D.doctor_id
JOIN Departments AS DE ON DE.department_id = D.department_id
WHERE DE.name = 'Cardiology'
AND A.[status] = 'Scheduled';

--The patient IDs and appointment dates for appointments scheduled, sorted in ascending order of patient IDs.
SELECT P.patient_id,P.first_name, P.last_name, A.appointment_date, D.specialization
FROM Patients AS P
JOIN Appointments AS A  ON P.patient_id = A.patient_id
JOIN Doctors AS D ON D.doctor_id = A. doctor_id
WHERE A.[status] ='Scheduled'
ORDER BY P.patient_id;

-- The usernames and email addresses of patients who have appointments scheduled with a doctor on weekdays (Monday to Friday) after 3 PM.
SELECT P.username, P.email
FROM Patients AS P
JOIN Appointments AS A ON P.patient_id = A.patient_id
WHERE DATENAME(WEEKDAY,A.appointment_date) 
    IN ('Monday', 'Tuesday', 'Wednesday','Thursday', 'Friday')
    AND A.appointment_time > '15:00:00'
    AND A.status ='Scheduled';



