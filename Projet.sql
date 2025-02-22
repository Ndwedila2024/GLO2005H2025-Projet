CREATE TABLE Categories (id integer PRIMARY KEY, name varchar(255) NOT NULL) ;
CREATE TABLE SubCategories ( id integer PRIMARY KEY, name varchar(255) NOT NULL, category_id integer, FOREIGN KEY (category_id) REFERENCES Categories(id) ON UPDATE CASCADE ON DELETE CASCADE);
CREATE TABLE Produits (id integer PRIMARY KEY, name varchar(255) NOT NULL UNIQUE, Price decimal(10,2) NOT NULL, Weight decimal(10,2) NOT NULL, subCategory_id integer, supplier_id integer, buy_quantity integer NOT NULL,
                       FOREIGN KEY (subCategory_id) REFERENCES SubCategories(id) ON UPDATE CASCADE ON DELETE CASCADE,
                       FOREIGN KEY (supplier_id) REFERENCES suppliers(id) ON UPDATE CASCADE ON DELETE CASCADE);
CREATE TABLE Suppliers (id integer PRIMARY KEY, name varchar(255) NOT NULL, adress varchar(255) NOT NULL, Phone varchar(15));

