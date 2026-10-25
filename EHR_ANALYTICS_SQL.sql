
CREATE DATABASE IF NOT EXISTS ehr_fhir_analytics;

USE ehr_fhir_analytics;

-- Verify the selected database
SELECT DATABASE();


USE ehr_fhir_analytics;

-- Step 2: Create Patients table

CREATE TABLE IF NOT EXISTS patients (
    patient_id VARCHAR(100) PRIMARY KEY,
    first_name VARCHAR(150),
    last_name VARCHAR(150),
    gender VARCHAR(20),
    birth_date DATE,
    active BOOLEAN
);

-- Verify the table structure
DESCRIBE patients;


USE ehr_fhir_analytics;

-- Verify imported patient records
SELECT COUNT(*) AS total_patients
FROM patients;


USE ehr_fhir_analytics;

-- Create Observations table

CREATE TABLE IF NOT EXISTS observations (
    observation_id VARCHAR(150) PRIMARY KEY,
    patient_id VARCHAR(100) NOT NULL,
    status VARCHAR(30),
    loinc_code VARCHAR(30),
    test_name TEXT,
    value DOUBLE,
    unit VARCHAR(100),
    date_original VARCHAR(50),
    date DATETIME,
    patient_reference VARCHAR(150),

    CONSTRAINT fk_observation_patient
        FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id)
);

-- Verify the table structure
DESCRIBE observations;


USE ehr_fhir_analytics;

-- Verify Observation import
SELECT
    COUNT(*) AS total_observations,
    COUNT(DISTINCT patient_id) AS unique_patients
FROM observations;


USE ehr_fhir_analytics;

-- Join Patient demographics with clinical observations

SELECT
    p.patient_id,
    p.gender,
    p.birth_date,
    o.observation_id,
    o.loinc_code,
    o.test_name,
    o.value,
    o.unit,
    o.date
FROM patients AS p
INNER JOIN observations AS o
    ON p.patient_id = o.patient_id
LIMIT 10;


USE ehr_fhir_analytics;

-- Count clinical observations for each patient
SELECT
    p.patient_id,
    p.gender,
    COUNT(o.observation_id) AS total_observations
FROM patients AS p
LEFT JOIN observations AS o
    ON p.patient_id = o.patient_id
GROUP BY
    p.patient_id,
    p.gender
ORDER BY total_observations DESC;


USE ehr_fhir_analytics;

-- Count observations by clinical test
SELECT
    loinc_code,
    test_name,
    unit,
    COUNT(*) AS total_observations,
    COUNT(DISTINCT patient_id) AS patients_tested
FROM observations
GROUP BY
    loinc_code,
    test_name,
    unit
ORDER BY total_observations DESC;


USE ehr_fhir_analytics;

-- Analyze laboratory measurements by test and unit
SELECT
    loinc_code,
    test_name,
    unit,
    COUNT(*) AS total_results,
    ROUND(AVG(value), 2) AS average_value,
    ROUND(MIN(value), 2) AS minimum_value,
    ROUND(MAX(value), 2) AS maximum_value
FROM observations
WHERE value IS NOT NULL
GROUP BY
    loinc_code,
    test_name,
    unit
ORDER BY test_name;


USE ehr_fhir_analytics;

--  Clinical Analytics KPIs

SELECT
    (SELECT COUNT(*)
     FROM patients) AS total_patients,

    COUNT(*) AS total_observations,

    COUNT(DISTINCT loinc_code) AS unique_lab_tests,

    ROUND(
        COUNT(*) /
        NULLIF(COUNT(DISTINCT patient_id), 0),
        2
    ) AS avg_observations_per_patient

FROM observations;
