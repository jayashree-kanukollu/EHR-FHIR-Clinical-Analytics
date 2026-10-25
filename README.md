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

The project follows an end-to-end ETL (Extract, Transform, Load) workflow, integrating standardized FHIR healthcare data with relational database management and interactive business intelligence reporting.

```text
HAPI FHIR R4 REST API
        |
        |  Patient & Observation Resources
        v
Python (Google Colab)
        |
        |  API Requests & JSON Parsing
        |  Data Cleaning & Validation
        |  Data Transformation
        v
Structured CSV Datasets
        |
        |  Data Import
        v
MySQL Database
        |
        |  Primary & Foreign Keys
        |  SQL Joins & Aggregations
        |  Clinical Data Validation
        v
Power BI Desktop
        |
        |  Data Modeling & DAX
        |  Clinical KPIs & Visualizations
        v
Interactive Healthcare Analytics Dashboard
```

### Workflow

1. Data Extraction — FHIR R4 API

Retrieved Patient and Observation resources from the publicly accessible HAPI FHIR test server using Python REST API requests.

2. Data Transformation — Python

Parsed FHIR JSON resources, organized patient demographics and clinical observations into structured datasets, and performed data cleaning and validation.

3. Data Storage — MySQL

Imported the prepared datasets into relational tables, established primary and foreign key relationships, and performed SQL-based clinical analysis.

4. Data Visualization — Power BI

Connected Power BI to MySQL and developed interactive dashboards covering patient demographics, clinical measurements, laboratory tests, and data quality.

## Dataset Description & Data Quality

### Dataset Overview

The dataset was extracted from the publicly accessible HAPI FHIR R4 test server using FHIR Patient and Observation resources.

| Metric | Result |
|---|---|
| Total Patients | 20 |
| Total Clinical Observations | 580 |
| Distinct Clinical Tests (LOINC Codes) | 29 |
| Observations per Patient | 29 |
| Data Source | HAPI FHIR R4 Test Server |
| Database | MySQL |
| Reporting Tool | Power BI |

Note: The HAPI FHIR server is a public testing environment. The extracted records are used for technical demonstration and should not be interpreted as a representative clinical population or validated real-world patient dataset.

### Data Quality Validation

Performed data-quality checks using Python, SQL, and Power BI to assess the completeness and consistency of the extracted clinical observations.

| Quality Metric | Result |
|---|---|
| Observation Field Completeness | 100% |
| Missing Patient IDs | 0 |
| Missing LOINC Codes | 0 |
| Missing Measurement Values | 0 |
| Missing Measurement Units | 0 |
| Missing Observation Dates | 0 |
| Duplicate Observation IDs | 0 |

Validation Scope: Completeness was evaluated across five observation fields: patient ID, LOINC code, measurement value, unit, and observation date.

These checks demonstrate completeness and uniqueness within the analyzed dataset; they do not independently establish clinical accuracy or verify every observation against its original FHIR resource.

## Power BI Dashboards & Key Findings

Developed a two-page interactive Power BI report to explore patient demographics, clinical observations, laboratory measurements, and data quality.

### Dashboard 1: Patient & Clinical Overview

Key Features:
- KPI cards displaying 20 patients, 580 clinical observations, and 29 distinct clinical tests.
- Patient gender distribution using an interactive donut chart.
- Patient age distribution across age groups.
- Patient-level clinical test coverage matrix with conditional formatting.
- BMI versus systolic blood pressure scatter plot to explore relationships between clinical measurements.

Key Findings:
- The dataset contains 14 male patients (70%) and 6 female patients (30%).
- Each of the 20 patients has 29 clinical observations in the analyzed dataset.
- The clinical test coverage matrix shows consistent observation coverage across the 29 LOINC-coded tests.

### Dashboard 2: Laboratory & Clinical Analytics

Key Features:
- Glucose measurement distribution categorized into concentration ranges (mg/dL).
- Cholesterol versus triglycerides scatter plot for patient-level laboratory comparisons.
- Laboratory test volume and average results combo chart.
- Data completeness and duplicate observation KPI cards.
- Field-level data-quality summary covering five essential observation fields.

Key Findings:
- The glucose distribution includes 10 patients in the 80–99 mg/dL range.
- Two glucose measurements above 300 mg/dL were identified in the MySQL data (312.938 and 408.963 mg/dL). These values were not independently verified against the source FHIR resources.
- Data completeness reached 100% across the five evaluated observation fields.
- No duplicate observation IDs were detected.

Interpretation Note: This analysis demonstrates clinical data integration, analytical reporting, and quality assessment using records from a public FHIR test environment. Results are descriptive and should not be used for patient diagnosis or clinical decision-making.

## Technologies & Tools

| Technology | Application in Project |

| Python | FHIR API requests, JSON parsing, data cleaning, transformation, and validation |
| FHIR R4 REST API | Retrieval of standardized Patient and Observation resources 
| LOINC | Identification and classification of laboratory and clinical measurements |
| Google Colab / Jupyter Notebook | Development and execution of Python ETL workflows |
| MySQL | Relational database creation, structured data storage, and data integrity |
| SQL | Joins, aggregation, clinical analysis, and data validation |
| Power BI | Interactive dashboards, clinical KPIs, and data visualization |
| DAX | Calculated measures, clinical comparisons, and data-quality metrics |

## Project Repository Structure

```text
EHR-FHIR-Clinical-Analytics/
│
├── 01_Python/
│   └── EHR_FHIR_Data_Extraction.ipynb
│
├── 02_SQL/
│   └── EHR_ANALYTICS_SQL.sql
│
├── 03_PowerBI/
│   └── EHR ANALYTICS DASHBOARD.pbix
│
├── 04_Screenshots/
│   ├── Patient_Clinical_Overview.png
│   └── Laboratory_Clinical_Analytics.png
│
└── README.md
```

The repository contains the Python extraction workflow, SQL database and analysis scripts, and dashboard previews. The Power BI `.pbix` file should be published only after its embedded data and connection settings have been reviewed for public sharing.

## Dashboard Previews

### Dashboard 1: Patient & Clinical Overview

![Patient and Clinical Overview Dashboard]"C:\my local files\projects UNCC\EHR analytics\patient and clinical overview dashboard.png"

### Dashboard 2: Laboratory & Clinical Analytics

![Laboratory and Clinical Analytics Dashboard]"C:\my local files\projects UNCC\EHR analytics\laboratory and clinical analytics dashboard.png"

## Project Conclusion

This project demonstrates an end-to-end healthcare analytics workflow, integrating standardized FHIR R4 clinical data with Python, MySQL, SQL, and Power BI.

Key accomplishments:
- Extracted and transformed 20 Patient records and 580 clinical Observations from a public FHIR test environment.
- Created a relational database with primary and foreign key relationships.
- Used SQL to analyze LOINC-coded clinical measurements and validate data consistency.
- Developed two interactive Power BI dashboards for patient demographics, laboratory analytics, and data-quality monitoring.
- Achieved 100% completeness across five evaluated observation fields, with zero duplicate observation IDs.

Skills Demonstrated: Healthcare interoperability, FHIR R4, REST APIs, Python ETL, relational database modeling, SQL analytics, Power BI, DAX, and clinical data-quality assessment.

