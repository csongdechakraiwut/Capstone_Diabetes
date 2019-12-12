#filename: EDA

#  The purpose of this file is to initally explore the raw data.
#  Visually explore and comparisons 

rm(list=ls())

setwd("C:/Users/19175/Desktop/dataset_diabetes")
library('ggplot2')


#df <- read.csv("train_DNEs.csv")
#df1 <- read.csv("test.csv")

#df <- read.csv("diabetic_data.csv")
df <- read.csv("target.csv")

col = colnames(df)

ggplot(df0, aes(x=age)) + geom_histogram(stat = "count")



# COLUMN NAMES, enter manually for plotting below

# [1] "encounter_id"             "patient_nbr"             
# [3] "race"                     "gender"                  
# [5] "age"                      "weight"                  
# [7] "admission_type_id"        "discharge_disposition_id"
# [9] "admission_source_id"      "time_in_hospital"        
# [11] "payer_code"               "medical_specialty"       
# [13] "num_lab_procedures"       "num_procedures"          
# [15] "num_medications"          "number_outpatient"       
# [17] "number_emergency"         "number_inpatient"        
# [19] "diag_1"                   "diag_2"                  
# [21] "diag_3"                   "number_diagnoses"        
# [23] "max_glu_serum"            "A1Cresult"               
# [25] "metformin"                "repaglinide"             
# [27] "nateglinide"              "chlorpropamide"          
# [29] "glimepiride"              "acetohexamide"           
# [31] "glipizide"                "glyburide"               
# [33] "tolbutamide"              "pioglitazone"            
# [35] "rosiglitazone"            "acarbose"                
# [37] "miglitol"                 "troglitazone"            
# [39] "tolazamide"               "examide"                 
# [41] "citoglipton"              "insulin"                 
# [43] "glyburide.metformin"      "glipizide.metformin"     
# [45] "glimepiride.pioglitazone" "metformin.rosiglitazone" 
# [47] "metformin.pioglitazone"   "change"                  
# [49] "diabetesMed"              "readmitted"              
# [51] "V51"



# create new data frame of only readmittance cases and non-readmittance cases
df0 <- df[ which(df$V51==0), ]
df1 <- df[ which(df$V51==1), ]


#toggle through col names & compare 
ggplot(df0, aes(x=max_glu_serum)) + geom_histogram(stat = "count")
ggplot(df1, aes(x=max_glu_serum)) + geom_histogram(stat = "count")




#compare percentages
# find which features have a higher percentage in YES, than NO target variable

a<-0
b<-0
c<-0
a <- (table(df1$max_glu_serum))/nrow(df1)
b <- (table(df0$max_glu_serum))/nrow(df0)
c <- a/b
sort(c)




vec1 = sort(unique(df$age))
sm0 <- 0
sm1 <- 0

for (k in seq(vec1)){
  sm0[k] = sum(df0$age==vec1[k])
  sm1[k] = sum(df1$age==vec1[k])
}
sm1
sm0
sm1 = sm1/(length(df1$max_glu_serum))
sm0 = sm0/(length(df0$max_glu_serum))
A = sm1/sm0
print(sm1/sm0)
vec1
print(sm0/sm1)

B = sm0/sm1





