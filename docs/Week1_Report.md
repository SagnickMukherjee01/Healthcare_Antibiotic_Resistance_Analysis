🏥 Week 1 Summary Report – Healthcare Antibiotic Resistance Analysis
📊 Dataset Characteristics

The dataset contains hospital-level patient records on antibiotic usage and bacterial infections.

Includes patient demographics, bacterial isolates, and antibiotic test results.

Key tables: Patient_Info, Bacteria_Isolates, Antibiotic_Resistance, and Specimen_Tests.

Important columns: Patient ID, Age, Gender, Bacteria Name, Specimen Type, Antibiotic Name, Sensitivity Result (Resistant/Sensitive), and Admission Date.

The dataset enables analysis of antibiotic resistance patterns across various bacterial species.

🧹 Data Cleaning Steps

Verified and removed duplicate entries — none were found.

Checked and handled missing values across all columns.

Ensured naming consistency (e.g., “E. coli” standardized format).

Converted date columns to DD-MMM-YYYY for uniformity.

Standardized text formatting for bacteria and antibiotic names.

Confirmed primary key uniqueness and validated relational integrity using SQL constraints.

📈 Early Observations

Age Distribution: The mean age (45.98 years) and median (46 years) indicate a balanced patient spread, with infections more frequent among middle-aged and older adults.

Bacteria Frequency: E. coli (179) and Enterococcus faecalis (177) were the most frequently observed bacteria.

Resistance Trends: Around 34.7% of samples showed antibiotic resistance. Meropenem (36.7%) and Ciprofloxacin (35.4%) displayed higher resistance levels, suggesting possible overuse or emerging antimicrobial resistance.

📅 Week 1 Summary

In Week 1, the focus was on understanding dataset structure, cleaning data, and identifying preliminary resistance trends. Results showed a balanced age distribution centered around 46 years and a 34.7% overall antibiotic resistance rate, with Meropenem and Ciprofloxacin exhibiting the highest resistance. These findings highlight the need for continued monitoring of prescribing patterns and bacterial response trends in clinical settings.