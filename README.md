# MMR_vaccinations
Due to the measles outbreak in Clark County, DOH needed a way to visualize changes in MMR vaccination rates for each county in WA State. Two plots were created for every county, one for youth 18 years and younger and the second for adults 19 years and older  I created a way to automate the creation of bar plots comparing MMR vaccination counts from 2014-2018 (averaged) and 2019 by county. Data for these plots was pulled from the WA State Immunication Information System.  

## Getting Started

### File descriptions

* MMR_plots.Rmd - creates an html report with both bar plots for each county and a folder with each plot as an individual png file. 
* rendering_plots.R - calls MMR_plots.Rmd file with specified parameters
* plots - folder of sample plot png files
* MMR_vaccine_plots_week_6.thml - sample html report output
* MMR_administered_data - example of data structure

### Set up

Download MMR_plots.Rmd and rendering_plots.R. Create a folder where you would like the reports to be saved. 

## Running the scripts

When you run the “rendering_plots.R” file, you have to enter the parameters at the top of the page in between the rows of #'s:

*	last_week – this is the week number of the most recent week you wanted included in this report
*	administered_date – administered date that goes in footnote of plot ("All vaccines administered as of 'administered_date' and reported as of 'reported_date'")
*	reported_date – reported date that goes in footnote of plot
*	data_file_path – file path to excel file with MMR vaccine data
*	reports_file_path – path to folder where you would like the reports/plots to be saved
*	Rmd_file – this is the file path to the “MMR_plots_final.Rmd” file

You probably only need to enter the last three the first time you run the script. Once you enter these parameters, highlight all and run the script. It will create a folder with the week number as the title in the reports_file_path folder. The folder will have the report and a folder labeled “plots” with all of the plots. You do not need to open or make any changes to the MMR_plots.Rmd file. 
