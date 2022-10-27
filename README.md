# Market-store-Data-Engineering-Project-PI1
Data transformation and load script for a market store price survey.


## Procedure

1. Data extraction and load of datasets.
2. Data transformation with python.
3. Local database creation in MySQL.
4. MySQL-Python connection through SQLAlchemy.
5. Data transformation with MySQL and relational entity structure development.

## Dataset

The dataset for this project is formed by three tables.

* Sucursal: A file that has details on market branches like location and type of store.
* Producto: The table holds detailed information from the items sold.
* Precio_semana: The Precio_semana table contain several files for which an incremental load process has been constructed. The files contain information related to sales made during a time period in different market branches and the products sold.

## 1. Data extraction and load of datasets:

In this first stage a function was created to read different files extensions and return an appropriate Dataframe. The user has to copy the relative path of the file in the designated variable and execute the script.

**Note:** It is important to note that the function can read files with similar characteristics to the files used for the current project.

## 2. Data transformation with python:

For the second stage a data exploration process was caried out, identifying the structure of the data, its properties and missing values.

Another function was developed to clean and normalize the data from the Precio_semana files. The function takes the returned Dataframe from the previous step and execute a transformation process in which null values are transformed to 0 to preserve the integrity of the data, the repeated values are deleted and values with typos are corrected and transformed to the proper structure.

## 3. Local database creation in MySQL:

A local database is created using MySQL server to storage the corrected dataframes.

## 4. MySQL-Python connection through SQLAlchemy.

## 5. Data transformation with MySQL and relational entity structure development:

An additional stage of data cleansing is completed, correcting data with same ids and incorrect designations. Afterwards, relations between table are defined and primary and foreign keys are set.
 
The following diagram illustrates the flow chart of the project:

![Flow chart drawio 2](https://user-images.githubusercontent.com/105171514/198181589-26771455-2b77-4bb5-8a15-2394d7a39b9a.png)

## --> About the repository
You will find the following files:
* Code.ipynb and Code2.ipynb: Files with the functions for the data load, transformation and transfer to MySQL for producto, sucursal and precio_semana tables.
* Flow chart of the project.
* Dataset used here.
* Market-store-Data-Engineering-Project-PI1-: Folder with the queries run in MySQL.

## --> Information to highlight
* [MySQL and MariaDB](https://docs.sqlalchemy.org/en/14/dialects/mysql.html#module-sqlalchemy.dialects.mysql.base)
* [MySQL SUBSTRING_INDEX funtion](https://www.mysqltutorial.org/mysql-string-functions/mysql-substring_index-function/)

## Contact

Oscar Mario Mariño Arias: oscarmarinoa@gmail.com 

[LinkedIn](https://www.linkedin.com/in/oscar-mariño-arias-774098112/)
