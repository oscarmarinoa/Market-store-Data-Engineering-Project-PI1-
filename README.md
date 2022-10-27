# Market-store-Data-Engineering-Project-PI1
Data transformation and load script for a market store price survey.


## Procedure

1. Data extraction and load of datasets.
2. Data transformation with python.
3. Local database creation in MySQL.
4. MySQL-Python connection through SQLAlchemy
5. Data transformation with MySQL and relational entity structure development.

## Dataset

The dataset for this project is formed by three tables.

* Sucursal: A file that has details on market branches like location and type of store.
* Producto: The table holds detailed information from the items sold.
* Precio_semana: The Precio_semana table contain several files for which a incremental load process has been constructed. The files contain information related to sales made during a time period in different market branches and the products sold.
