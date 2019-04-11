[![Build Status](https://travis-ci.com/MysticGoten/KODemo.svg?branch=master)](https://travis-ci.com/MysticGoten/KODemo)


# Thank you very much for your time and consideration.

# KODemo

## What I built:
This KODemo is a full stack web application using Java jdk 8, Spring, and Maven 
that parses an XML RSS feed from the National Vulnerability Database (NVD) and 
presents it on a web page in a jQuery DataTable using React. CI with Travis CI is 
passing and so are the unit tests.

## Why I built it:
I built this in the hopes it will get me hired at my next forever job where I can 
advance my career.

## How to set it up:
You can download or clone the repo and look at KODemo in your IDE of choice and deploy 
it using tomcat 7 or your app server of choice (manually or in eclipse).

## How to deploy it:
(There is also a KODemo-war repo here where you can download the war)<br/>
It was built in eclipse ide, so you could add tomcat 7 to eclipse and deploy it there<br/>
OR<br/>
Deploy it manually in tomcat 7 for windows (maybe other OS is similar):
1. Install tomcat 7 from https://tomcat.apache.org/download-70.cgi
2. Drop the KODemo.war file in the tomcat webapps folder where you installed it 
at (C:\apache-tomcat-7.0.93\webapps)
3. Make sure JAVA_HOME is set in environment variables
4. Click the startup.bat file in C:\apache-tomcat-7.0.93\bin or run the file from 
command prompt to see if you get errors
5. You should now notice a folder called KODemo in C:\apache-tomcat-
7.0.93\webapps if everything is good
6. Hit Ctrl + Z to stop the deployment when done

## How to use it:
Once KODemo is deployed, go to http://localhost:8080/KODemo. You will go to the 
landing page and an AJAX request will automatically display the datatable 
afterwards. You can click the links to go to specific CVE pages or have fun with 
many of the features of Datatables (filter results based on search text, rows per 
page, change pages, click the top table headers to sort by column, and see the 
total amount of rows).
