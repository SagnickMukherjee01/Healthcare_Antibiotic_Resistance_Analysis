--- Exploratory Data Analysis

create database Healthcare_Antibiotic_Resistance_Analysis;
use Healthcare_Antibiotic_Resistance_Analysis;
create table Patient_Info (patient_id varchar(100) primary key,age int,gender varchar(10),ward varchar(50),admission_date DATE,discharge_date DATE);
create table Specimen_Tests (specimen_id varchar(100) primary key,patient_id varchar(100),specimen_type varchar(100), collection_date DATE,foreign key(patient_id) references Patient_Info(patient_id));
create table Bacteria_Isolates (isolate_id varchar(100) primary key,specimen_id varchar(100),bacteria_name varchar(200), infection_site varchar(100), foreign key(specimen_id) references Specimen_Tests(specimen_id));
create table Antibiotic_Resistance(isolate_id varchar(100),antibiotic_name varchar(100),sensitivity varchar(10),test_date DATE, primary key(isolate_id,antibiotic_name),foreign key(isolate_id) references Bacteria_Isolates(isolate_id));
select * from antibiotic_resistance limit 10;
select * from bacteria_isolates limit 10;
select * from patient_info limit 10;
select * from specimen_tests limit 10;
select p.patient_id,p.gender,s.specimen_type,s.collection_date from patient_info p join specimen_tests s on p.patient_id=s.patient_id limit 10;
select s.specimen_id,s.specimen_type,b.bacteria_name from specimen_tests s join bacteria_isolates b on s.specimen_id=b.specimen_id limit 10;
select b.bacteria_name,a.antibiotic_name,a.sensitivity from bacteria_isolates b join antibiotic_resistance a on b.isolate_id=a.isolate_id limit 10;
select ward,count(*) as Total_Patients from patient_info group by ward order by Total_Patients desc;
select specimen_type,count(*) as Total_Specimen from specimen_tests group by specimen_type order by Total_Specimen desc;
select bacteria_name,count(*) as Total_Isolates from bacteria_isolates group by bacteria_name order by Total_Isolates desc limit 5;
select p.ward,b.bacteria_name,count(*) as Infection_Count from patient_info p join specimen_tests s on p.patient_id=s.patient_id join bacteria_isolates b on s.specimen_id=b.specimen_id group by p.ward, b.bacteria_name order by Infection_Count desc;
select a.antibiotic_name,a.sensitivity ,count(*) as Test_Count from Antibiotic_Resistance a group by a.antibiotic_name, a.sensitivity order by a.antibiotic_name, a.sensitivity;
select isolate_id,count(*) as Resistant_Count from Antibiotic_Resistance where sensitivity="R" group by isolate_id having count(*)>=3 order by Resistant_Count desc;

-- SQL ANALYSIS

select b.Bacteria_Name, count(*) as Resistant_Count from bacteria_isolates as b join Antibiotic_Resistance as a on b.isolate_id=a.isolate_id where a.sensitivity="R" group by b.Bacteria_Name order by Resistant_Count desc limit 5;
--- Escherichia Coli has highest number of resistant count followed by Enterococcus Faecallis followed by Pseudomonas Aeruginosa
select Antibiotic_Name, round((sum(case when sensitivity="R" then 1 else 0 end)*100.0)/count(*),2) as Resistance_Percentage from Antibiotic_Resistance group by Antibiotic_Name order by Resistance_Percentage desc;
--- Meropenam has highest resistance_percentage followed by Ciprofolxacin and Ceftriaxone
select b.Bacteria_Name, count(distinct a.Isolate_Id) as MDR_Isolates from Bacteria_Isolates as b join Antibiotic_Resistance as a on b.isolate_id=a.isolate_id where a.sensitivity="R" group by b.Bacteria_Name having count(distinct a.Antibiotic_Name)>=3 order by MDR_Isolates desc;
--- Escherichia Coli is the most dangerous for patient care followed by Enterococcus Faecallis followed by Pseudomonas Aeruginosa