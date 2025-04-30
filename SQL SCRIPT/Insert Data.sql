-- INSERT DATA INTO Patients table

INSERT INTO Patients (
    first_name, last_name,
    DOB, gender, address,
    username, password, 
    insurance_info, email, 
    telephone_number, DOE
)
VALUES
('Mary', 'Anne', '1990-05-12', 'M', '123 Elm St','maryanne123', 'pass123', 'Aetna', 'maryanne@gmail.com', '5551234567', NULL),
('Mary', 'Smith', '1985-10-20', 'F', '456 Oak Ave', 'marys', 'pass456', 'Cigna', 'marys@gmail.com', '5559876543', '2024-02-10'),
('James', 'Brown', '1978-08-05', 'M', '789 Pine Rd', 'jamesb', 'pass789', 'UnitedHealth', 'jamesb@gmail.com', NULL, '2023-11-15'),
('Linda', 'White', '2000-12-14', 'F', '234 Birch Ln', 'lindaw', 'pass234', 'BlueCross', 'lindaw@gmail.com', '5555647382', NULL),
('Robert', 'Johnson', '1965-03-25', 'M', '567 Cedar Dr', 'robertj', 'pass567', 'Medicare', 'robertj@gmail.com', '5553322114', NULL),
('Grace', 'Kelly', '1993-07-10', 'F', '789 Spruce Blvd', 'gracek', 'gkpass', 'Cigna', 'gracek@gmail.com', '5556677889', NULL),
('Samuel', 'Ojo', '1980-01-19', 'M', '12 Bode Thomas, Lagos', 'samojo', 'sam123', 'NHIS', 'samojo@gmail.com', '08012345678', '2024-01-10'),
('Amina', 'Bello', '1996-04-15', 'F', '25 Isaac John, Abuja', 'aminab', 'bello96', 'PrivateCare', 'aminab@gmail.com', '08123456789', NULL),
('Chukwu', 'Emeka', '1975-09-30', 'M', '42 Old Road, Enugu', 'emekac', 'chemu', 'NHIS', NULL, NULL, '2023-09-05'),
('Fatima', 'Yusuf', '1992-06-25', 'F', '11 Kofar Wambai, Kano', 'fatimay', 'fy92', 'NHIS', 'fyusuf@gmail.com', '08076543210', NULL),
('William', 'Green', '1981-03-09', 'M', '111 Maple Rd', 'willg', 'greeny', 'Cigna', 'willg@gmail.com', '5551112222', NULL),
('Julia', 'Adams', '1988-11-21', 'F', '222 Pineview', 'juliea', 'a88pass', 'Aetna', 'juliea@gmail.com', NULL, NULL),
('Victor', 'James', '1995-02-15', 'M', '10 Unity Street', 'victorj', 'vjpass', 'NHIS', 'vj@gmail.com', '08111222333', NULL),
('Helen', 'George', '1990-01-10', 'F', '99 High Street', 'helenge', 'hg123', 'Medicare', NULL, '07099887766', NULL),
('Ifeanyi', 'Nwosu', '1979-10-03', 'M', '8 Zik Avenue', 'ifen', 'ife1979', 'NHIS', 'ifenwosu@gmail.com', NULL, NULL),
('Ngozi', 'Okafor', '1984-12-12', 'F', '20 Airport Road', 'ngozio', 'okafor1984', 'NHIS', 'ngozi.ok@gmail.com', '08033322211', '2024-03-02'),
('Ahmed', 'Musa', '1993-09-11', 'M', '17 Ring Road', 'ahmedm', 'musah93', 'PrivateCare', 'amusa@gmail.com', NULL, NULL),
('Rebecca', 'Obi', '1987-07-23', 'F', '14 Queens Drive', 'rebeccaobi', 'rebo1987', 'NHIS', NULL, NULL, '2023-10-20'),
('Ibrahim', 'Sani', '1999-05-19', 'M', '5 Sokoto Road', 'ibsani', 'ibpass', 'BlueCross', 'ib@gmail.com', '07077766655', NULL),
('Joy', 'Okon', '1996-08-28', 'F', '30 Sunshine Avenue', 'joyokon', 'joyjoy', 'Aetna', 'joy.okon@gmail.com', NULL, NULL),
('Peter', 'Mensah', '1982-11-14', 'M', '7 Banana Island', 'petermen', 'pmensah', 'UnitedHealth', NULL, NULL, '2024-04-01'),
('Tolu', 'Adebayo', '1991-04-05', 'F', '89 Iwo Rd', 'tolua', 'tolu41', 'NHIS', 'tolua@gmail.com', '08011223344', NULL),
('Sarah', 'Williams', '1985-03-08', 'F', '3 Dolphin Estate', 'sarahw', 'sarahpass', 'PrivateCare', 'swilliams@gmail.com', NULL, NULL),
('Emmanuel', 'Ibe', '1970-07-07', 'M', '60 Herbert Macaulay', 'emmanueli', 'ibe7070', 'NHIS', NULL, '09055443322', '2023-12-20'),
('Chidinma', 'Uzo', '1998-06-01', 'F', '8 Masha Road', 'chidiuzo', 'chichi98', 'Cigna', 'uzo@gmail.com', '07099988877', NULL),
('Bolanle', 'Ayo', '2002-03-18', 'F', '44 Ogba', 'bolanlea', 'bols2002', 'NHIS', 'bolanle@gmail.com', '08122334455', NULL),
('Stephen', 'Odeh', '1976-05-30', 'M', '21 Tafawa Balewa', 'steveo', 'odeh76', 'NHIS', 'steve.odeh@gmail.com', NULL, NULL),
('Kemi', 'Ade', '1994-01-01', 'F', '18 Alausa', 'kemiade', 'kemkem94', 'NHIS', NULL, '08055443322', NULL),
('Charles', 'Umeh', '1983-10-09', 'M', '6 Broad Street', 'charlesu', 'umcharlie', 'UnitedHealth', 'charles@gmail.com', NULL, NULL),
('Blessing', 'Eze', '1990-12-29', 'F', '22 Ketu Road', 'blesseze', 'bless90', 'Cigna', 'blessing.e@gmail.com', '07012344321', NULL);


-- INSERT DATA INTO 'Departments' TABLE

INSERT INTO Departments(
    name
  )

 VALUES
('Cardiology'),
('Neurology'),
('Orthopedics'),
('Pediatrics'),
('Radiology'),
('Emergency'),
('Oncology'),
('Gastroenterology'),
('Dermatology'),
('General Surgery'),
('Gynecology'),
('Endocrinology'),
('Psychiatry');



-- INSERT VALUES INTO DOCTORS TABLE

INSERT INTO Doctors(
    first_name, last_name,
    telephone_number,
    specialization, 
    department_id
)

VALUES 
('John', 'Doe', '123-456-7890', 'Cardiologist', 1),
('Ngozi', 'Okafor', '234-567-8901', 'Neurologist', 2),
('Amara', 'Nwosu', '345-678-9012', 'Orthopedic Surgeon', 3),
('Michael', 'Williams', '456-789-0123', 'Pediatrician', 4),
('Sarah', 'Brown', '567-890-1234', 'Radiologist', 5),
('Chijioke', 'Ifeanyi', '678-901-2345', 'Emergency Medicine Specialist', 6),
('Amina', 'Sani', '789-012-3456', 'Oncologist', 7),
('James', 'Davis', '890-123-4567', 'Gastroenterologist', 8),
('Uche', 'Eze', '901-234-5678', 'Dermatologist', 9),
('Robert', 'Martinez', '012-345-6789', 'General Surgeon', 10),
('Olivia', 'Hernandez', '123-234-7890', 'Gynecologist', 12),
('Daniel', 'Lopez', '234-345-8901', 'Endocrinologist', 14),
('Sophia', 'Gonzalez', '345-456-9012', 'Psychiatrist', 15),
('Benjamin', 'Wilson', '456-567-0123', 'Cardiologist', 1),
('Chinonso', 'Opara', '567-678-1234', 'Neurologist', 2),
('William', 'Taylor', '678-789-2345', 'Orthopedic Surgeon', 3),
('Amelia', 'Anderson', '789-890-3456', 'Pediatrician', 4),
('Elijah', 'Thomas', '890-901-4567', 'Radiologist', 5),
('Ethan', 'Jackson', '901-012-5678', 'Emergency Medicine Specialist', 6),
('Mia', 'White', '012-123-6789', 'Oncologist', 7),
('Adeniyi', 'Oluwaseun', '123-234-7890', 'Gastroenterologist', 8),
('Harper', 'Martin', '234-345-8901', 'Dermatologist', 9),
('Leo', 'Thompson', '345-456-9012', 'General Surgeon', 10),
('Chloe', 'Garcia', '456-567-0123', 'Gynecologist', 12),
('Jackson', 'Rodriguez', '567-678-1234', 'Endocrinologist', 14),
('Isabella', 'Lewis', '678-789-2345', 'Psychiatrist', 15),
('Henry', 'Walker', '789-890-3456', 'Cardiologist', 1),
('Grace', 'Hall', '890-901-4567', 'Neurologist', 2),
('Matthew', 'Allen', '901-012-5678', 'Orthopedic Surgeon', 3),
('Lily', 'Young', '012-123-6789', 'Pediatrician', 4);


--INSERTION OF DATA INTO THE 'Appointments" TABLE

INSERT INTO Appointments (
    patient_id, doctor_id, 
    appointment_date,
    appointment_time,
    status
) 
  VALUES
(1, 2, '2024-04-10', '15:30:00', 'scheduled'),
(2, 4, '2024-04-12', '10:00:00', 'completed'),
(3, 6, '2024-04-15', '16:00:00', 'scheduled'),
(4, 8, '2024-04-18', '14:00:00', 'cancelled'),
(5, 10, '2024-04-20', '17:30:00', 'scheduled'),
(6, 12, '2024-01-20', '13:00:00', 'completed'),
(7, 14, '2024-02-10', '11:30:00', 'scheduled'),
(8, 16, '2024-02-15', '09:00:00', 'completed'),
(9, 18, '2024-03-25', '12:15:00', 'scheduled'),
(10, 20, '2024-03-30', '08:45:00', 'completed'),
(11, 22, '2024-04-01', '14:00:00', 'scheduled'),
(12, 24, '2024-04-02', '10:30:00', 'cancelled'),
(13, 26, '2024-04-03', '11:45:00', 'scheduled'),
(14, 28, '2024-04-04', '15:15:00', 'scheduled'),
(15, 30, '2024-04-05', '13:20:00', 'completed'),
(16, 2, '2024-04-06', '09:30:00', 'scheduled'),
(17, 4, '2024-04-07', '12:00:00', 'completed'),
(18, 6, '2024-04-08', '16:45:00', 'scheduled'),
(19, 8, '2024-04-09', '11:00:00', 'cancelled'),
(20, 10, '2024-04-10', '14:30:00', 'completed'),
(21, 12, '2024-04-11', '10:10:00', 'scheduled'),
(22, 14, '2024-04-12', '13:40:00', 'scheduled'),
(23, 16, '2024-04-13', '15:50:00', 'completed'),
(24, 18, '2024-04-14', '16:20:00', 'cancelled'),
(25, 20, '2024-04-15', '09:00:00', 'scheduled'),
(26, 22, '2024-04-16', '11:45:00', 'scheduled'),
(27, 24, '2024-04-17', '13:00:00', 'completed'),
(28, 26, '2024-04-18', '10:30:00', 'cancelled'),
(29, 28, '2024-04-19', '16:30:00', 'scheduled'),
(30, 30, '2024-04-20', '15:00:00', 'completed'),
(1, 2, '2024-04-21', '09:30:00', 'scheduled'),
(2, 4, '2024-04-22', '11:00:00', 'completed'),
(3, 6, '2024-04-23', '14:30:00', 'scheduled'),
(4, 8, '2024-04-24', '10:45:00', 'cancelled'),
(5, 10, '2024-04-25', '13:15:00', 'scheduled'),
(6, 12, '2024-04-26', '12:00:00', 'completed'),
(7, 14, '2024-04-27', '08:45:00', 'scheduled'),
(8, 16, '2024-04-28', '16:10:00', 'cancelled'),
(9, 18, '2024-04-29', '10:30:00', 'completed'),
(10, 20, '2024-04-30', '11:50:00', 'scheduled'),
(11, 22, '2024-05-01', '15:20:00', 'scheduled'),
(12, 24, '2024-05-02', '09:00:00', 'completed'),
(13, 26, '2024-05-03', '13:30:00', 'scheduled'),
(14, 28, '2024-05-04', '14:10:00', 'cancelled'),
(15, 30, '2024-05-05', '15:45:00', 'completed'),
(16, 2, '2024-05-06', '10:20:00', 'scheduled'),
(17, 4, '2024-05-07', '11:15:00', 'completed'),
(18, 6, '2024-05-08', '12:45:00', 'scheduled'),
(19, 8, '2024-05-09', '14:00:00', 'cancelled'),
(20, 10, '2024-05-10', '09:30:00', 'scheduled');

--INSERTION OF DATA INTO THE 'Medical_Records TABLE

INSERT INTO Medical_Records(
    patient_id, 
    diagnosis,
    prescription
  )

VALUES
  
(1, 'Hypertension', 'Lisinopril 10mg once daily'),
(2, 'Type 2 Diabetes', 'Metformin 500mg twice daily'),
(3, 'Asthma', 'Albuterol inhaler as needed'),
(4, 'Migraine', 'Sumatriptan 50mg at onset of headache'),
(5, 'Seasonal Allergies', 'Loratadine 10mg once daily'),
(6, 'Gastroesophageal Reflux Disease', 'Omeprazole 20mg before meals'),
(7, 'Urinary Tract Infection (Penicillin Allergy)', 'Ciprofloxacin 500mg twice daily for 5 days'),
(8, 'Acne', 'Clindamycin topical + Benzoyl Peroxide'),
(9, 'Depression', 'Fluoxetine 20mg once daily'),
(10, 'Anxiety', 'Sertraline 50mg once daily'),
(11, 'Back Pain', 'Ibuprofen 400mg every 6 hours as needed'),
(12, 'Hypothyroidism', 'Levothyroxine 75mcg once daily'),
(13, 'Otitis Media', 'Amoxicillin 500mg three times daily'),
(14, 'Eczema', 'Hydrocortisone cream twice daily'),
(15, 'Iron Deficiency Anemia', 'Ferrous sulfate 325mg once daily'),
(16, 'Upper Respiratory Infection', 'Paracetamol + Rest + Fluids'),
(17, 'PCOS', 'Metformin 500mg + Lifestyle modification'),
(18, 'Bronchitis', 'Azithromycin 500mg daily for 3 days'),
(19, 'Malaria', 'Artemether/Lumefantrine (Coartem) 3-day course'),
(20, 'Peptic Ulcer Disease', 'Pantoprazole 40mg before meals'),
(21, 'Insomnia', 'Melatonin 3mg at bedtime'),
(22, 'Sinusitis', 'Amoxicillin-Clavulanate 875/125mg twice daily'),
(23, 'Conjunctivitis', 'Chloramphenicol eye drops 4x daily'),
(24, 'Rheumatoid Arthritis', 'Naproxen 500mg twice daily'),
(25, 'Tuberculosis (latent)', 'Isoniazid 300mg daily + Pyridoxine'),
(26, 'Otitis Externa', 'Ciprofloxacin ear drops twice daily'),
(27, 'Dermatitis', 'Betamethasone cream once daily'),
(28, 'Bacterial Vaginosis', 'Metronidazole 500mg twice daily for 7 days'),
(29, 'Scabies', 'Permethrin cream applied overnight'),
(30, 'Hyperlipidemia', 'Atorvastatin 20mg once daily');

  
