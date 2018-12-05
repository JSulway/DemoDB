# Model SQLServer

These scripts are used to create the simplified tables in SQL Server

### Getting Started

- Instructions assume SQL Server Express and Management Studio are already installed
- Create a SQL Server Database named "demoDB"
- Create a "demo" schema in the database (using query "CREATE SCHEMA demo")
- To run commands in subsequent steps, open SQL Query pane in Management Studio (R-click "demo" database, choose "New query"), paste in commands, click "Execute" button

### Creating the tables

- Run the commands in the "create_tables.sql" file

### Updating the tables

- Run the commands in the "drop_tables.sql" file to remove the existing tables
- Then rerun the commands in the "create_tables.sql" file

### Loading the sample data

- Run the commands in the "load_data.sql" file

# Elasticsearch

The data between Elasticsearch and SQL MUST be consistent at all times - if a change is made in one, it must also be made in the other.

### Updating data in Elasticsearch
Delete all data on Elasticsearch with this command

- curl -XDELETE "localhost:9200/demo?pretty"

### Add the index again
- curl -XPUT "localhost:9200/demo"

### Add the mapping
- curl -XPUT "localhost:9200/demo/planet/_mapping"  -d @mapping.json

### Add the players files
- curl -XPUT "http://localhost:9200/team/planet/1" -d @planet1.json
- curl -XPUT "http://localhost:9200/team/planet/2" -d @planet2.json

### You may need to restart the fullstack to make it operational again.

