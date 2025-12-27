# README FILE:

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

### Dashboard:

![Clinical Insights Bacteria, Resistance   Ward Infection Analysis](https://github.com/user-attachments/assets/e1846aad-d107-4ccb-b13a-da65d8a83283)

## 🔍 Key Insights

- Escherichia coli and Enterococcus faecalis are the most prevalent bacterial pathogens, together accounting for the highest isolation counts across infection sites.

- E. coli demonstrates the highest overall resistance, particularly against Ceftriaxone, making it the most clinically concerning organism in this dataset.

- Meropenem shows the highest resistance rate (~36.7%), followed closely by Ciprofloxacin (~35%), signaling an alarming rise in resistance to commonly relied-upon and last-resort antibiotics.

- Despite moderate resistance levels across antibiotics (33–37%), Vancomycin retains the highest sensitivity (58.2%), while Tetracycline shows the lowest resistance, indicating comparatively reliable treatment options.

- Urinary tract infections (UTIs) emerge as the most common infection site (26.8%) and also show consistently high resistance across all age groups, highlighting a systemic infection-control challenge.

- Wound infections exhibit the highest overall resistance rate (36.6%), while bloodstream infections show the lowest resistance (33.5%).

- Age-wise analysis reveals a non-linear resistance trend: the 0–18 and 46–60 age groups show the highest resistance, whereas 31–45 and 60+ groups show comparatively lower rates.

- The most critical hotspot is wound infections in the 19–30 age group, showing the single highest resistance value (12.1%), while the same age group also exhibits the lowest resistance (5.5%) in respiratory infections, indicating high intra-group variability.

- Surgery ward carries the highest infection burden, while the Pediatric ward shows elevated resistance risk, suggesting priority areas for targeted antibiotic stewardship and infection control.

- Patient distribution across wards is balanced, indicating efficient hospital capacity utilization, with slightly higher demand in surgical care.

- Heatmap analysis proves most informative by revealing interaction effects between age group and infection site, uncovering hidden resistance hotspots not visible in isolated summaries.

- Chi-square testing shows no statistically significant association between bacterial species and resistance status, indicating that resistance patterns are broadly similar across bacteria and not driven by species alone.

- Overall findings suggest that antibiotic choice and infection site play a more critical role in resistance outcomes than bacterial species alone, reinforcing the need for site-specific and drug-focused antibiotic policies.

## 🤖 Predictive Modeling

A logistic regression model was built to predict antibiotic resistance (R vs S).

- Resistant case recall: **50%**

- Sensitive case recall: **53%**

- Resistant recall was prioritized due to clinical risk

- Model highlights antibiotic choice as the strongest predictor of resistance

## 🏥 Data-Driven Recommendations

### 1️⃣ Strengthen Antibiotic Stewardship in High-Risk Wards

Priority: Surgery & Pediatric Wards

- Implement mandatory antibiotic review within 48 hours of prescription in Surgery and Pediatric wards.

- Encourage culture-guided therapy instead of prolonged empirical treatment, especially post-surgery.

- Introduce senior clinician approval for high-risk antibiotics (Meropenem, Ciprofloxacin).

### 1️⃣ Strengthen Antibiotic Stewardship in High-Risk Wards

Priority: Surgery & Pediatric Wards

- Implement mandatory antibiotic review within 48 hours of prescription in Surgery and Pediatric wards.

- Encourage culture-guided therapy instead of prolonged empirical treatment, especially post-surgery.

- Introduce senior clinician approval for high-risk antibiotics (Meropenem, Ciprofloxacin).

### 3️⃣ Target Urinary Tract Infections (UTIs) as a Systemic Risk

UTIs = highest volume + highest resistance

- Standardize UTI treatment protocols hospital-wide.

- Promote early urine culture testing before starting antibiotics.

- Educate nursing staff on catheter care and early removal.

### 4️⃣ Leverage Effective Antibiotics Wisely

Vancomycin & Tetracycline

- Use Vancomycin preferentially for Gram-positive infections where sensitivity is proven.

- Encourage Tetracycline in suitable cases to reduce pressure on stronger drugs.

- Avoid overusing “stronger” drugs when older antibiotics remain effective.

### 5️⃣ Introduce Ward-Level AMR Dashboards (Monthly Review)

Using Existing Power BI / Excel Tools

- Share monthly ward-wise resistance summaries with doctors and infection control teams.

- Highlight:

High-resistance antibiotics

Infection hotspots

Pediatric & surgical risk zones

### 6️⃣ Focus on High-Risk Age Groups (0–18 & 46–60)

- Pediatric patients: prioritize dose accuracy & antibiotic duration control.

- Middle-aged surgical patients: enforce post-operative infection surveillance.

- Educate caregivers on antibiotic adherence and dangers of self-medication.

### 7️⃣ Avoid “One-Drug-Fits-All” Policies

Resistance does NOT vary significantly by bacteria species

- Shift focus from “which bacteria” → which drug + which site.

- Create site-specific antibiotic guidelines (UTI, wound, respiratory, bloodstream).

### 8️⃣ Promote Continuous Surveillance Instead of One-Time Audits

- Conduct quarterly AMR reviews rather than annual reports.

- Track resistance trends, not just counts.

- Use trend analysis to detect early warning signals.

### ✅ Conclusion

Antibiotic resistance in this dataset is driven more by antibiotic choice and infection site than bacterial species.
Focused stewardship in surgery, pediatric care, and urinary infections, combined with controlled use of high-resistance antibiotics like Meropenem and Ciprofloxacin, can significantly reduce resistance risk without heavy financial investment—making these recommendations highly practical for the Indian healthcare system.

## 🚀 Next Steps

- Improve model performance using tree-based models

- Incorporate seasonal and dosage data

- Extend analysis to multi-drug resistance prediction

- Deploy dashboard with real-time hospital data




