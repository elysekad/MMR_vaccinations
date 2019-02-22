# This script calls the contents of "MMR_plots_final". It creates an html report with a bar plot of 
# MMR vaccination counts for the time period 2014-2018 (averaged over these years) against MMR 
# vaccination counts for 2019. 
# 
# It creates a folder with week_#. This folder contains the html report and a folder with all of the 
# plots that were rendered for that week's report. 

########################################################################################################
#last week of data you would like included in the report
last_week <- 6
#enter administered date that goes in footnote of plot
administered_date <- "2/9/2019"
#enter reported data that goes in footnote of plot
reported_date <- "2/12/2019"
#complete file path to excel file with data
data_file_path <- 'C:/R_Studio/MMR_vaccinations/data/MMR_Administered_CDCWeek_20142019.xlsx'
#file path of folder where you would like html reports and plots to be saved. 
reports_file_path <- 'C:/R_Studio/MMR_vaccinations/reports'
#complete file path to where MMR_plots_final.Rmd lives
Rmd_file <- 'C:/R_Studio/MMR_vaccinations/MMR_plots_final.Rmd'

########################################################################################################

rmarkdown::render(Rmd_file,
                  output_file = paste0(reports_file_path,"/week_", last_week, "/MMR_vaccine_plots_week_", last_week, '.html'),
                  params = list(last_week=last_week,
                                administered_date=administered_date,
                                reported_date=reported_date, 
                                data_file_path=data_file_path, 
                                reports_file_path=reports_file_path),
                    encoding="UTF-8")

