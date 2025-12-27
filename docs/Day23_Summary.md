# Day_23 Summary:

## Project Overview:

This project analyzes **hospital antibiotic resistance patterns** using real-world styled healthcare data.  
The objective is to identify high-risk bacteria, ineffective antibiotics, and ward-level infection severity to support data-driven clinical decision-making and antibiotic stewardship.

## 🗂 Dataset Structure

The dataset consists of four interconnected tables:

- **Patient_Info**: Patient demographics and ward details
- **Specimen_Tests**: Sample collection information
- **Bacteria_Isolates**: Identified bacteria and infection sites
- **Antibiotic_Resistance**: Antibiotic sensitivity test results (R/S/I)

These tables are linked through primary and foreign keys, forming a relational healthcare database.

## 🎯 Objectives & Key Questions

- Which bacteria show the highest antibiotic resistance?
  
- Which antibiotics are least effective?

- Which hospital wards carry the highest infection burden?

- How does resistance vary by infection site and age group?

- Can resistance be predicted using patient and clinical factors?

## 🛠 Tools & Technologies Used

- **Excel** – Data cleaning, descriptive statistics, pivot analysis
  
- **SQL** – Analytical queries and integrity checks

- **Python (Pandas, Seaborn, Scikit-learn)** – EDA, visualization, logistic regression

- **Power BI** – Interactive dashboards and DAX modeling

- **Git & GitHub** – Version control and documentation

## 📊 Visual Snapshots


## 🔍 Key Insights

- **Merpenem** has highest resistance rate.

- **Escherichia coli** shows the highest overall resistance to **Ceftriaxone**

- **Enterococcus faecalis** exhibits high resistance to **Ciprofloxacin**

- **Surgery ward** has the highest infection load

- **Pediatric ward** shows elevated resistance risk

- **Urinary tract infections** have the highest resistance rates

- **Vancomycin** shows the highest sensitivity, while **Tetracycline** has the lowest resistance

## 🤖 Predictive Modeling

A logistic regression model was built to predict antibiotic resistance (R vs S).

- Resistant case recall: **50%**

- Sensitive case recall: **53%**

- Resistant recall was prioritized due to clinical risk

- Model highlights antibiotic choice as the strongest predictor of resistance

## 🚀 Next Steps

- Improve model performance using tree-based models

- Incorporate seasonal and dosage data

- Extend analysis to multi-drug resistance prediction

- Deploy dashboard with real-time hospital data




