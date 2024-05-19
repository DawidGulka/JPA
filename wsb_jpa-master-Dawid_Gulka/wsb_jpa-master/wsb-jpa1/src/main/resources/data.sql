-- Insert addresses
INSERT INTO address (id, address_line1, address_line2, city, postal_code) VALUES (1, 'line1', 'line2', 'city', '62-030');
INSERT INTO address (id, address_line1, address_line2, city, postal_code) VALUES (2, 'line1', 'line2', 'city', '62-031');

-- Insert doctors
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (1, 'John', 'Doe', '123456789', 'john.doe@example.com', 'DOC123', 'SURGEON', 1);

-- Insert patients
INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, additional_field) VALUES (1, 'Jane', 'Doe', '987654321', 'jane.doe@example.com', 'PAT456', '1980-01-01', 2, 'Special Info');
INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, additional_field) VALUES (2, 'Adam', 'Kowalski', '123456789', 'adam.kowalski@example.com', 'PAT123', '1990-05-15', 1, 'Some Additional Info');

-- Insert visits
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (1, 'Routine checkup', '2023-05-19 10:00:00', 1, 1);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (2, 'Follow-up visit', '2023-05-20 11:00:00', 1, 1);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (3, 'Annual checkup', '2023-05-21 12:00:00', 1, 2);

-- Insert medical treatments
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (1, 'Ultrasound', 'USG', 1);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (2, 'X-ray', 'RTG', 2);
