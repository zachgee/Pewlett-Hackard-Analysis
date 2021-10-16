# Pewlett-Hackard-Analysis

## Purpose

There are two major purposes of the Pewlett-Hackard Analysis Project: to determine how many employees are retiring and organize the retirees by title, and to show which employees are elligible to participate in Pewlett Hackard's mentorship program. In order to complete task one, a table was created to show the upcoming retirees with columns for their employee number, first name, last name and title. This table was created by gathering data from the employess.csv file and titles.csv (both can be found in the data folder of this repo.) The birthdays of the employees were also filtered in order to make sure only data for retirement-elligible employees was being gathered. By doing this, a csv titles "retirement_titles.csv" was created. From here a little futher investigation needed to be done, as there were some duplicate entrees due to employees who switched titles over the years. This final table can be found in the data folder in "unique_titles.csv.

The second deliverable we wrote a query that retrieved columns from our employees and dept_emp table, filtered data on current employees born in 1965 then ordered the table by emp_no. 

To complete part 2, a query was written that pulled data from the employees and dept_emp tables. Once again, the data was filtered by the employees birthday and ultimately placed in ascending order by the employee numbers. This final table can be found in the data folder in "mentorship_eligibility.csv"

## Results

By opening "unique titles.csv" - it can be seen that pewlett-Hackard has a substantial ammount of employees ready for retirement (90398 if you spend the whole day counting!) That's 30%! (90398/30024 - this number coming from the employees.csv). 

By examining the "retiring_titles.csv", we can see that the majority of titles retiring are those in senior positions (64% of those retiring). This is good news for the non retirees, as there will soon be a ton of room for upward mobility! 

Lastly, by looking at the "mentor_eligibility.csv" file in the data folder, we can see that there are 56,859 employees who are elligible for the mentorship program

## Conclusion

The data shows that the next five years will bring many internal shits to Pelett-Hackard. In five years, 60% of Pewlett-Hackard's current employees will have reached retirement. This presents a lot of upward opportunities for the other 40% of employees - however the company need to do a lot of hiring in the next five years to keep everything balanced. As employees move upward, Pewlett-Hackard can use the mentorship_elligibilty.csv to ensure that the values and skills needed to keep the company succesful will be passed down to the new generation of senior management.


