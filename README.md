#Database schema development
The database structure was designed using normalization to 3 normal forms, work was carried out with the flyway migration application tool.

The project contains several migrations, accepts the address of the Postgresql database server, login and password through command-line arguments, creates a database structure on it using the flyway library in accordance with the task. One of the migrations edits the existing database structure (add and remove tables).

##Option 3

##Design a fast food restaurant database:

1) The restaurant has a certain number of numbered tables: tables
   - Unique table number (primary key)
   - Number of seats at the table

2) The order is assigned to one of the tables: orders
   - Unique order number (primary key)
   - Table number (foreign key)

3) The order details explain the composition of the order: order_details
   - ID (primary key)
   - Order number (foreign key)
   - Dish (foreign key)
   - Quantity

4) The menu describes all the dishes of the institution, indicating their characteristics: menu
   -ID (primary key)
   - Name
   - Weight
   - Price
   - Section (foreign key)

5) All dishes are divided by menu sections (for example, drinks, burgers ...): sections
   - ID (primary key)
   - Section name

6) Each dish has a certain composition: menu_products
   - ID (primary key)
   - Dish (foreign key)
   - Product (foreign key)

7) Ingredients for dishes are in a separate table: products
   - ID (primary key)
   - Name

