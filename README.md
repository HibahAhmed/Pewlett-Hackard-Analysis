# Pewlett-Hackard-Analysis

## Overview 

The Pewlett Hackard analysis was performed on the company data of mentorship eligibilities and the employee data. This led to creating entity relationship diagrams, and manage tables with writing SQL queries. 

## Resources

- PostgreSQL 14
- PGAdmin
- Software: Python 3.7.6

## Results

A database roadmap to demonstrate the entity relationship is created to make the analysis process more efficient as shown below. 
![EmployeeDB](https://user-images.githubusercontent.com/95547517/153546430-2393acb9-010c-439e-9e3b-d509456c2d27.png)

A table was filtered then retreived that filtered the data to retrieve employees that were born between 1952 and 1955 as shown below. 
![retirement_titles](https://user-images.githubusercontent.com/95547517/153547728-53216ab9-eb2b-443b-b2de-8b78684f9aab.png)

A data table was then filtered to sort the titles of employees with employees that are kept to date. 
![Unique_titles](https://user-images.githubusercontent.com/95547517/153547965-cf801da2-a243-4d5e-bb1f-63928eb517de.png)

Lastly, a mentorship eligibility table was created using DISTINCT ON as well as the INTO clause.

![image](https://user-images.githubusercontent.com/95547517/153689768-99b61abe-5f10-4947-897e-49d4b5f1ebe8.png)

## Summary

A table was filtered to show a count of employees by their most recent job title in descending order.
The retiring titles table was able to show the different positions of the different employees. Overall, the retiring titles demonstrates that there is a very high number of senior staff with a total of 37,332 employees. There is a total of 90398 and of those were 37,332 as mentioned before. (37,332/90,398) x 100 = 41.3% of the staff will be retiring. Because of a fairly high number of senior positions, there is a posibility of needing to create a hiring process in the future generation of Pewlett Hackard employees.

![image](https://user-images.githubusercontent.com/95547517/153548367-12af65dd-f138-45e2-849f-e0bc8c3f76f6.png)
