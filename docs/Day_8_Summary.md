Pivot name: Bacteria_Site_Pivot
Purpose: To analyze how often each bacteria is isolated from different infection sites.

Bacteria	Bloodstream	Respiratory	Urinary	Wound	Total
Acinetobacter baumannii	39	40	39	41	159
Enterococcus faecalis	42	38	48	49	177
Escherichia coli	33	45	48	53	179
Klebsiella pneumoniae	44	43	41	35	163
Pseudomonas aeruginosa	37	43	46	44	170
Staphylococcus aureus	32	34	46	40	152
Total	227	243	268	262	1000
🔍 1️⃣ Overall Distribution

The total isolates are 1000, spread across 4 major infection sites.

The Urinary tract has the highest number of infections (268 cases, 26.8%).

The Bloodstream has the lowest (227 cases, 22.7%), but still significant.

✅ Insight: Urinary infections are the most common source of bacterial isolates in this dataset.

🔍 2️⃣ Most Common Bacteria Overall

Escherichia coli (E. coli) has the highest total count – 179 isolates (17.9%).

Followed by Enterococcus faecalis (177) and Pseudomonas aeruginosa (170).

✅ Insight: E. coli remains the most frequent pathogen across all infection types — consistent with clinical patterns (often found in UTIs).

🔍 3️⃣ Site-specific Dominance
Infection Site	Most Common Bacteria	Observation
Bloodstream	Klebsiella pneumoniae (44)	K. pneumoniae causes the most bloodstream infections here.
Respiratory	E. coli (45) & Pseudomonas aeruginosa (43)	Respiratory infections are often caused by Pseudomonas and E. coli.
Urinary	E. coli (48) & Staphylococcus aureus (46)	E. coli is the top urinary pathogen — classic UTI agent.
Wound	E. coli (53)	E. coli dominates wound infections, followed by Enterococcus.

✅ Insight:
Different bacteria dominate different sites — a key clinical insight for antibiotic policy design.

🔍 4️⃣ Diversity Observation

Each site shows contributions from multiple bacteria → no single bacteria dominates entirely.

The distribution is relatively balanced, showing multi-bacterial infection risk in hospitals.

✅ Insight: Infection control should address multiple pathogens simultaneously, not just one.
👇

----------------------------------------------------

🧠 Pivot Table Recap
Antibiotic	Intermediate (I)	Resistant (R)	Sensitive (S)	Total
Amoxicillin	10.40%	33.60%	56.00%	100%
Ceftriaxone	9.20%	35.30%	55.50%	100%
Ciprofloxacin	11.30%	35.40%	53.30%	100%
Gentamicin	10.50%	34.40%	55.10%	100%
Meropenem	10.00%	36.70%	53.30%	100%
Tetracycline	10.30%	33.30%	56.40%	100%
Vancomycin	7.60%	34.20%	58.20%	100%
Overall (Avg.)	9.90%	34.70%	55.40%	100%
🔍 1️⃣ Overall Pattern

Across all antibiotics:

Resistant (R): ~35%

Sensitive (S): ~55%

Intermediate (I): ~10%

✅ Insight: Around one-third of bacterial isolates show resistance — a concerning level indicating growing antimicrobial resistance (AMR).
More than half are still sensitive, suggesting treatment options are available but require careful choice.

🔍 2️⃣ Most Effective Antibiotic (Highest Sensitivity %)

Vancomycin shows the highest sensitivity rate: 58.2%.

Close behind: Tetracycline (56.4%) and Amoxicillin (56%).

✅ Insight: Vancomycin remains the most effective antibiotic in this dataset, making it a strong choice for resistant Gram-positive infections.

🔍 3️⃣ Least Effective Antibiotic (Highest Resistance %)

Meropenem has the highest resistance rate: 36.7%, followed closely by Ciprofloxacin (35.4%).

Carbapenem resistance (like Meropenem) is especially alarming, since it’s often the “last-resort” drug.

✅ Insight: Meropenem resistance indicates emergence of multidrug-resistant (MDR) strains — a serious clinical concern.

🔍 4️⃣ Moderate Resistance Across the Board

Resistance rates for most antibiotics range from 33–37%, showing no antibiotic is completely safe from resistance.

The Intermediate (I) category (~10%) suggests partial susceptibility — could improve with dose optimization.

✅ Insight: Continuous monitoring is essential; rotating or combining antibiotics may reduce further resistance development.

----------------------------------------------------

🧮 Pivot Recap: Ward vs Patient Count
Ward	Number of Patients
General	302
ICU	291
Pediatric	292
Surgery	315
Total	1200
🔍 1️⃣ Overall Patient Distribution

Total patients analyzed: 1200

The distribution across wards is fairly balanced, with each ward handling around 24–26% of total patients.

✅ Insight: Patient load is well distributed, showing that no single ward is overburdened.

🔍 2️⃣ Highest Patient Load

Surgery Ward has the highest number of patients (315) — about 26.3% of total.

✅ Insight: The surgery department experiences the highest admission rate, likely due to post-operative care and trauma cases.

🔍 3️⃣ Lowest Patient Load

ICU has the lowest count (291) — roughly 24.2% of total.

✅ Insight: Slightly fewer patients in ICU may reflect either effective triage or limited critical cases during the study period.

🔍 4️⃣ Pediatric and General Wards

Both Pediatric (292) and General (302) have moderate patient loads, showing balanced utilization of general and child care facilities.

✅ Insight: Indicates healthy hospital capacity management across both adult and child patients.