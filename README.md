# Capstone_Diabetes
** NYCDSA _Capstone project
Title: Project 1 - Readmission Prediction

Purpose: The purpose of this project is to develop a predictive model which will help hospitals reduce their readmission rates among diabetic patients.

Introduction: A goal of the Affordable Health Care act is to increase the quality of hospital care in U.S hospitals.  One specific issue area in which hospitals can improve quality is by improving hospital readmission rates.  Under the Affordable Care Act, CMS created the Hospital Readmission Reduction Program in order to link payment data to the quality of hospital care in order to improve health quality for Americans.  Essentially, payments to Inpatient Prospective Payment System (IPPS) hospitals depend on each hospital’s readmission rates.  Hospitals with poor readmission performance are financially penalized through reduced payments.

Hospital Readmission Definitions according to CMS:
The 30-day risk standardized readmission measures include:
All-cause unplanned readmissions that happen within 30 days of discharge from the index (i.e., initial) admission.
Patients who are readmitted to the same hospital, or another applicable acute care hospital for any reason.

Data
https://archive.ics.uci.edu/ml/datasets/diabetes+130-us+hospitals+for+years+1999-2008
Beata Strack, Jonathan P. DeShazo, Chris Gennings, Juan L. Olmo, Sebastian Ventura, Krzysztof J. Cios, and John N. Clore, “Impact of HbA1c Measurement on Hospital Readmission Rates: Analysis of 70,000 Clinical Database Patient Records,” BioMed Research International, vol. 2014, Article ID 781670, 11 pages, 2014. 


Challenge:
Develop a model which predicts whether a patient will be readmitted in under 30 days.  A diabetic readmission reduction program intervention will use this model in order to target patients at high risk for readmission.   Models will be evaluated on AUC and FPR.

You will be expected to present this model to 
Hospital health intervention team - how will this affect rates / payment / the bottom line?
Data science team - how well does this model perform/ how is this model evaluated? 
Data engineering team - what is needed for model implementation? 

Deliverables
Model which predicts <30 readmission
Presentation




Supplemental Information:
Definitions:
Inpatient Prospective Payment System (IPPS) :Section 1886(d) of the Social Security Act (the Act) sets forth a system of payment for the operating costs of acute care hospital inpatient stays under Medicare Part A (Hospital Insurance) based on prospectively set rates. This payment system is referred to as the inpatient prospective payment system (IPPS). Under the IPPS, each case is categorized into a diagnosis-related group (DRG). Each DRG has a payment weight assigned to it, based on the average resources used to treat Medicare patients in that DRG.
Readmission Measures List: https://www.medicare.gov/hospitalCompare/Data/data-updated.html#MG16 

What is Hospital Readmission Reduction Program? 
https://www.cms.gov/Medicare/Quality-Initiatives-Patient-Assessment-Instruments/Value-Based-Programs/HRRP/Hospital-Readmission-Reduction-Program.html 
Applicable Hospitals: https://www.ssa.gov/OP_Home/ssact/title18/1886.htm 

Archives of Readmission Reduction Program:
https://www.cms.gov/Medicare/Medicare-Fee-for-Service-Payment/AcuteInpatientPPS/HRRP-Archives.html 

Details on Readmission Calculations:
https://www.medicare.gov/hospitalcompare/Data/30-day-measures.html 
See hospital performance categories
30 day risk standardized readmission calculations http://www.qualitynet.org/dcs/ContentServer?c=Page&pagename=QnetPublic%2FPage%2FQnetTier3&cid=1219069855273 

Payment Adjustment Non-Stratified Methodology (FY 2013 – FY 2018)
CMS measures hospital performance in the HRRP by calculating excess readmission ratios (ERRs) for each of the six program measures. An ERR is the ratio of predicted-to-expected readmissions for a given measure. Under the non-stratified methodology, measures with 25 or more eligible discharges and an ERR greater than 1.0 enter the payment adjustment factor formula. The threshold of 1.0 is applied to all hospitals, and an ERR greater than 1.0 indicates that a hospital performed worse than the average performance of all hospitals. The payment adjustment factor formula is used to calculate the size of the payment reduction. Payment reductions were capped at 1% (i.e. a minimum payment adjustment factor of 0.99) for FY 2013, 2% for FY 2014 (i.e. a minimum payment adjustment factor of 0.98) and 3% (i.e. a minimum payment adjustment factor of 0.97) for FY 2015 and onward. Payment reductions are applied to all Medicare FFS base operating DRG payments for the fiscal year.

