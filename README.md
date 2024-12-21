# Superstore Database Normalization

## Project Description</hr>
The goal of this project is to create a simple database normalization. This process is carried out to reduce redundancy and ensure referential integrity in the database. 

# Dataset</hr>
In this case, I use the superstore dataset [text](Superstore_Dataset_Formatted.csv), which is widely known. This data is very helpful for us to learn how to analyze data (e.g., Data Visualization, Importing to SQL, Python, etc.). Thanks for providing this data.

![alt text](dataset-capture.png)

## ER Diagram</hr>
I want normalize the dataset like ER Diagram below :

![alt text](<ER Diagram.png>)

## Steps</hr>
### 1. Import data from csv to SQL (use tools like dbeaver, mysql workbench, etc)
### 2. Create table :

![alt text](create_customers.png)

**customer_id CHAR(36) PRIMARY KEY DEFAULT (UUID())**
customer_id CHAR(36) PRIMARY KEY DEFAULT (UUID()): In this case, I use UUID() 36 characters for the PRIMARY KEY, except in the Orders table where I use the default PRIMARY KEY because it is already provided in the file. So, I'm not creating UUID() again.

![alt text](create_orders.png)

You can see in the code above, I add 3 FOREIGN KEYs to connect the Customers, Products, and Regions tables.
Note: You can see the complete code in the file I have provided.

### Insert data from the existing dataset

**Import data to customer table**

![alt text](import_customers.png)

**Import data to orders table**

![alt text](import_orders.png)

Note: You can see the complete code in the file I have provided.

## Conclusion
This project demonstrates the process of normalizing a database to reduce redundancy and ensure referential integrity. By using UUIDs as primary keys and appropriately setting foreign keys, we ensure that each record is uniquely identifiable and properly linked across the different tables. The steps provided guide you through importing data, creating tables, and ensuring data integrity. This normalization will help in efficient data management and querying for various data analysis tasks.

Thank you.

License
This project is licensed under the MIT License - see the LICENSE file for details.

Thank you,
Stay Blessed :)

Contact : elfridhasman@gmail.com

