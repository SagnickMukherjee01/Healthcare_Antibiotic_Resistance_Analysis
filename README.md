# 🧬 Healthcare Antibiotic Resistance Analysis

## 📖 Project Overview

Antibiotic resistance is one of the most critical global health challenges of our time.  
This project analyzes hospital microbiology data to understand **antibiotic resistance patterns** among common pathogens such as *Klebsiella pneumoniae*, *E. coli*, *Pseudomonas aeruginosa*, *Staphylococcus aureus*, and others.  

Using data analytics tools like **Excel, SQL, Power BI, and Python**, this project aims to explore infection trends, antibiotic sensitivity, and ward-specific resistance patterns.  
It connects my background in **Microbiology** with my growing skills in **Data Analytics**.

---

## 🎯 Objectives

- Analyze **infection distribution** across wards, age groups, and specimen types.  
- Identify **most frequently isolated bacteria** and their preferred infection sites.  
- Examine **antibiotic resistance patterns** across pathogens and antibiotics.  
- Track **seasonal or monthly trends** in infection rates and resistance levels.  
- Detect **multi-drug resistant organisms (MDROs)** within hospital samples.  
- Use **statistical and predictive analysis** to explore relationships between patient demographics, bacteria type, and resistance likelihood.  
- Provide **data-driven recommendations** for infection control and antibiotic stewardship programs.

---

## 📊 Dataset Description

The dataset is fully synthetic but modeled to represent **real-world hospital microbiology records**.  
It includes **4 key sheets**:

---

### 1️⃣ `Patient_Info`
| Column Name | Description |
|--------------|-------------|
| Patient_ID | Unique ID for each patient |
| Age | Patient’s age |
| Gender | Male/Female |
| Ward | Ward where admitted (ICU, Surgery, Pediatrics, etc.) |
| Admission_Date | Date of admission |
| Discharge_Date | Date of discharge |

---

### 2️⃣ `Specimen_Tests`
| Column Name | Description |
|--------------|-------------|
| Specimen_ID | Unique ID for specimen |
| Patient_ID | Linked with `Patient_Info` |
| Specimen_Type | Type (Urine, Sputum, Blood, Wound, etc.) |
| Collection_Date | Date of collection |

---

### 3️⃣ `Bacteria_Isolates`
| Column Name | Description |
|--------------|-------------|
| Isolate_ID | Unique isolate number |
| Specimen_ID | Linked with `Specimen_Tests` |
| Bacteria_Name | Name of bacteria isolated |
| Infection_Site | Infection site (Respiratory, Urinary, Wound, Bloodstream, etc.) |

---

### 4️⃣ `Antibiotic_Resistance`
| Column Name | Description |
|--------------|-------------|
| Isolate_ID | Linked with `Bacteria_Isolates` |
| Antibiotic_Name | Tested antibiotic |
| Test_Date | Date of antibiotic sensitivity test |
| Sensitivity | Test result — Sensitive / Intermediate / Resistant |

> 💡 Note: “Resistant” means the bacteria shows little or no inhibition zone, while “Sensitive” indicates a clear zone of inhibition.

---

## 🧠 Tools & Technologies

- **Microsoft Excel** – Data cleaning and summary analysis  
- **SQL** – Querying and joining relational data  
- **Power BI / Tableau** – Visualization dashboards  
- **Python (Pandas, Matplotlib, Seaborn)** – Data processing & insights  
- **Statistics** – Hypothesis testing and correlation analysis  

---

## 📂 Project Structure

📦 Healthcare_Antibiotic_Resistance_Analysis

├── 📂 data → Raw dataset (.xlsx)

├── 📂 notebooks → Python notebooks

├── 📂 sql → SQL queries

├── 📂 dashboards → Power BI / Tableau files

└── 📄 README.md → Project overview


---

## 🗓️ Project Timeline (28 Days)

| Phase | Duration | Key Focus |
|-------|-----------|-----------|
| Day 1–2 | Setup | Repository setup, dataset understanding |
| Day 3–6 | Data Exploration | Cleaning & preprocessing in Excel/SQL |
| Day 7–14 | Analysis | SQL joins + Python analysis |
| Day 15–22 | Visualization | Power BI / Tableau dashboard |
| Day 23–26 | Insights | Interpretation & documentation |
| Day 27–28 | Finalization | GitHub polishing, README refinement |

---

## 🔗 Dataset 

📥 [Hospital_Antibiotic_Resistance.xlsx]

---

## ✍️ Author

**Sagnick Mukherjee**  
📍 Madhyamgram, Kolkata, India  
🎓 B.Sc. (Hons.) in Microbiology  
💼 Aspiring Healthcare Data Analyst  
🔗 [LinkedIn Profile – www.linkedin.com/in/sagnick-mukherjee-48700a338]
