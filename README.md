# EHR FHIR Data Integration & Clinical Analytics

### Python | FHIR R4 REST API | MySQL | SQL | Power BI | DAX | Healthcare Analytics

## Project Overview

Developed an end-to-end healthcare data integration and analytics workflow using the FHIR R4 REST API, Python, MySQL, and Power BI to extract, transform, validate, and visualize structured electronic health record (EHR) data.

The project uses publicly accessible FHIR test data from the HAPI FHIR server to demonstrate healthcare interoperability, clinical data processing, relational database modeling, and interactive reporting.

### Project Highlights

- 20 patient records processed and analyzed.
- 580 clinical observations extracted and integrated.
- 29 distinct LOINC-coded clinical tests analyzed.
- Two interactive Power BI dashboard pages developed for patient demographics, laboratory measurements, and clinical analytics.
- 100% completeness across five evaluated observation fields, with zero duplicate observation IDs in the analyzed dataset.

## Project Architecture & Data Pipeline

The project follows an end-to-end ETL (Extract, Transform, Load) workflow integrating FHIR healthcare data with relational database management and business intelligence reporting.

```text
HAPI FHIR R4 REST API
          |
          v
Patient & Observation Resources
          |
          v
Python / Google Colab
  - API Requests
  - JSON Parsing
  - Data Cleaning
  - Data Validation
          |
          v
Structured CSV Datasets
          |
          v
MySQL Database
  - Primary & Foreign Keys
  - SQL Joins & Aggregations
  - Clinical Data Analysis
          |
          v
Power BI Desktop
  - Data Modeling
  - DAX Measures
  - Clinical KPIs
  - Interactive Visualizations
          |
          v
Healthcare Analytics Dashboards
```

## Dataset Description

Data was obtained from the publicly accessible HAPI FHIR R4 test server.

| Dataset Metric | Result |

| Total Patients | 20 |
| Total Clinical Observations | 580 |
| Distinct LOINC Codes | 29 |
| Observations per Patient | 29 |
| Source | HAPI FHIR R4 Test Server |
| Database | MySQL |
| Visualization | Power BI |

Data Disclaimer: The HAPI FHIR server is a public testing environment. These records are used for technical demonstration and do not represent a validated real-world patient population.

## Data Extraction & Transformation — Python

- Retrieved FHIR Patient and Observation resources through REST API requests.
- Parsed nested FHIR JSON resources into structured datasets.
- Extracted patient demographics, clinical test identifiers, measurement values, units, and observation dates.
- Cleaned and transformed data into relational formats.
- Performed missing-value, duplicate-record, and patient-reference validation.
- Prepared structured CSV files for MySQL import.

Python Notebook: [View FHIR Data Extraction & Transformation](EHR_FHIR_Data_Extraction.ipynb)

## Database Management & Clinical Analytics — SQL

Created a relational MySQL database to organize patient records and clinical observations.

SQL Operations:
- Database and table creation.
- Primary and foreign key relationships.
- INNER JOIN and LEFT JOIN operations.
- Clinical observation counts by patient and LOINC code.
- Laboratory measurement aggregation using COUNT, AVG, MIN, and MAX.
- Clinical KPI calculations and data validation.

SQL Script: [View SQL Analysis](EHR_ANALYTICS_SQL.sql)

## Data Quality Validation

Performed data-quality checks using Python, SQL, and Power BI.

| Quality Metric | Result |

| Observation Field Completeness | 100% |
| Missing Patient IDs | 0 |
| Missing LOINC Codes | 0 |
| Missing Measurement Values | 0 |
| Missing Measurement Units | 0 |
| Missing Observation Dates | 0 |
| Duplicate Observation IDs | 0 |

Completeness was evaluated across five observation fields: patient ID, LOINC code, measurement value, measurement unit, and observation date.

These checks demonstrate field completeness and record uniqueness within the analyzed dataset, not independent verification of clinical accuracy.

## Power BI Dashboards & Key Findings

Developed two interactive Power BI dashboard pages to analyze patient demographics, clinical observations, laboratory measurements, and data quality.

### Dashboard 1: Patient & Clinical Overview

![Patient and Clinical Overview Dashboard](patient%20and%20clinical%20overview%20dashboard.png)

Dashboard Features:
- Total Patients, Clinical Observations, and Unique Clinical Tests KPI cards.
- Patient gender distribution donut chart.
- Patient age distribution visualization.
- Clinical test coverage matrix with conditional formatting.
- BMI versus systolic blood pressure scatter plot.

Key Findings:
- The analyzed dataset contains 14 male patients (70%) and 6 female patients (30%).
- Each patient has 29 clinical observations.
- All 20 patients have records covering the 29 analyzed LOINC-coded tests.

### Dashboard 2: Laboratory & Clinical Analytics

![Laboratory and Clinical Analytics Dashboard](laboratory%20and%20clinical%20analytics%20dashboard.png)

Dashboard Features:
- Glucose distribution by measurement range (mg/dL).
- Cholesterol versus triglycerides scatter plot.
- Laboratory test volume and average result comparison.
- Data completeness and duplicate observation KPI cards.
- Field-level data-quality summary.

Key Findings:
- Ten patients have glucose measurements in the 80–99 mg/dL range.
- Two measurements above 300 mg/dL were identified in MySQL: 312.938 and 408.963 mg/dL. Source-level verification remains outstanding.
- The dataset demonstrated 100% completeness across five evaluated observation fields.
- Zero duplicate observation IDs were identified.

Clinical Disclaimer: These descriptive findings come from a public FHIR test environment and are not intended for diagnosis or clinical decision-making.

## Technologies & Tools

| Technology | Application |

| Python | Data extraction, JSON parsing, cleaning, and validation |
| FHIR R4 REST API | Standardized healthcare data retrieval |
| LOINC | Clinical and laboratory test identification |
| Google Colab | Python ETL development |
| MySQL | Relational database management |
| SQL | Joins, aggregations, validation, and analytics |
| Power BI | Interactive healthcare analytics dashboards |
| DAX | Calculated measures, KPIs, and data-quality metrics |

## Project Files

| File | Description |
|---|---|
| [EHR_FHIR_Data_Extraction.ipynb](EHR_FHIR_Data_Extraction.ipynb) | Python FHIR API extraction, transformation, and validation notebook |
| [EHR_ANALYTICS_SQL.sql](EHR_ANALYTICS_SQL.sql) | MySQL database creation and clinical analytics queries |
| [Patient & Clinical Overview Dashboard](patient%20and%20clinical%20overview%20dashboard.png) | Power BI dashboard screenshot — Page 1 |
| [Laboratory & Clinical Analytics Dashboard](laboratory%20and%20clinical%20analytics%20dashboard.png) | Power BI dashboard screenshot — Page 2 |

The original Power BI `.pbix` report is retained locally pending review of embedded data and database connection settings.

## Project Conclusion

This project demonstrates practical experience integrating standardized healthcare data into an end-to-end analytics workflow.

Skills Demonstrated:
- Healthcare data interoperability using FHIR R4.
- REST API integration and JSON processing.
- Python-based ETL and data validation.
- Relational database design and SQL analytics.
- Clinical data modeling and LOINC-based analysis.
- Power BI dashboard development and DAX.
- Healthcare data-quality monitoring and reporting.

The completed workflow demonstrates how structured EHR data can be transformed into accessible dashboards for descriptive clinical and operational analytics.
