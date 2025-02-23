CREATE TABLE Categories (id integer PRIMARY KEY, name varchar(255) NOT NULL) ;
CREATE TABLE SubCategories ( id integer PRIMARY KEY, name varchar(255) NOT NULL, category_id integer, FOREIGN KEY (category_id) REFERENCES Categories(id) ON UPDATE CASCADE ON DELETE CASCADE);
CREATE TABLE Produits (id integer PRIMARY KEY, name varchar(255) NOT NULL UNIQUE, Price decimal(10,2) NOT NULL, Weight decimal(10,2) NOT NULL, subCategory_id integer, supplier_id integer, buy_quantity integer NOT NULL,
                       FOREIGN KEY (subCategory_id) REFERENCES SubCategories(id) ON UPDATE CASCADE ON DELETE CASCADE,
                       FOREIGN KEY (supplier_id) REFERENCES suppliers(id) ON UPDATE CASCADE ON DELETE CASCADE);
CREATE TABLE Suppliers (id integer PRIMARY KEY, name varchar(255) NOT NULL, adress varchar(255) NOT NULL, Phone varchar(15));






CREATE TABLE SALES_PRODUCTS (
    Sale_ID INTEGER PRIMARY KEY,
    Produit_ID INTEGER,
    Quantity INTEGER,
    FOREIGN KEY (Product_ID) REFERENCES PRODUCTS(Product_ID)
);

CREATE TABLE BUY_PRODUCT (
    Buy_ID INTEGER PRIMARY KEY,
    Produit_ID INTEGER,
    Quantity INTEGER,
    FOREIGN KEY (Product_ID) REFERENCES PRODUCTS(Product_ID)
);

CREATE TABLE BUY (
Buy_ID INTEGER PRIMARY KEY,
Supplier_ID INTEGER,
Warehouse_ID INTEGER,
Buy_date DATETIME,
Delivery_date DATETIME,
Status ENUM('En attente', 'En cours', 'Livré', 'Annulé')
 FOREIGN KEY (Supplier_ID) REFERENCES SUPPLIERS(Product_ID)
 FOREIGN KEY (Warehouse_ID) REFERENCES WAREHOUSES(Warehouse_ID)

);

CREATE TABLE SALES (
Sale_ID INT PRIMARY KEY,
Warehouse_ID INT,
Sale_date DATETIME,
Delivery_date DATETIME,
Status ENUM('En attente', 'En cours', 'Livré', 'Annulé')
 FOREIGN KEY (Warehouse_ID) REFERENCES WAREHOUSES(Warehouse_ID)

);







