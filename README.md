# README

This project shows data analysis with RShiny studio

The data used were taken from https://chinookdatabase.codeplex.com/, a sample database. The purpouse of this app is only to show basic data visualizaion. 

Overview
========

The app allows the user to upload a file and show the data into a table or into a histogram. Already two samples files are in he project under the path Rshiny_app/data with the folloing information:

  - Total amount of money per artist: query for this results is:
    - select sum(total) as Total, billingcountry from Invoice group by billingcountry order by Total desc;
  - Total invoice divided by country
    - select sum(b.total) Total, e.name as Artist from Invoiceline as a, Invoice as b, Track as c, Album as d, Artist as e where a.invoiceid=b.invoiceid and a.trackid=c.trackid and c.albumid=d.albumid and d.artistid=e.artistid group by Artist order by Total desc

Dependencies
==========
   - R
   - Rstudio
   - Shiny

Compiling instruction
=========

  - Download the project from github 
  - start rstudio
  - go to the webrowser on localhost:8787 or the specified port where rstudio runs
  - open the app and click the "Run" button

