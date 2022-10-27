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

Another function was developed to clean and normalize the data from the Precio_semana files. The function takes the returned Dataframe from the previous step and execute a transformation process in which null values are transformed to 0 to preserve the integrity of the data, the repeted values are deleted and values with typos are corrected and transformed to the proper structure.

## 3. Local database creation in MySQL:

A local database is created using MySQL server to storage the corrected dataframes.

## 4. MySQL-Python connection through SQLAlchemy.

## 5. Data transformation with MySQL and relational entity structure development:

An additional stage of data cleansing is completed, correcting data with same ids and incorrect designations. Afterwards, relations between table are defined and primary and foreign keys are set.


