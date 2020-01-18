# Disability-In-India-ETL

./Data Integration and ETL/2001 contains 32 xls downloaded from the india.gov.in for 2001
./Data Integration and ETL/2011_Pre contains 32 xls downloaded from the india.gov.in for 2011

./Data Integration and ETL/xxxx_Cleaned is an intermediat step of cleaning ./Data Integration and ETL/xxxx_keseled contains cleaned files

the files of 2001 get merged into 2001.csv using merging.ipynb
the files of 2011 get merged into 2011.csv using merging.ipynb

files 2001.csv & 2011.csv are the final data we insert into the warehouse using Talend

# Database Connection and project importation

It's better to use this configuration below because my database configuration was like this, to import the project and to run jobs easy.
    user : root
    password : root
make sure to run the file (./Data Integration and ETL/Disability Warehouse Creation Script.sql) to create the data warehouse


when you import the project in Tatend Studio run job that has name "all_jobs.job" , We’ve created this global job to help us organize the sequence of execution of our elementary jobs.

# The Reporting Demo with Power BI 
<center>
  
[![Watch the video](https://i9.ytimg.com/vi/41ObhrmWKLo/mq1.jpg?sqp=CJ7qh_EF&rs=AOn4CLDB_nv6eB-LTs1fpfalytIu39MeGg)](https://www.youtube.com/watch?v=41ObhrmWKLo&feature=youtu.be)
 
</center>



<hr>


Thank you
