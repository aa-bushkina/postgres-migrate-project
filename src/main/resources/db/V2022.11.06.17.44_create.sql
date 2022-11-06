CREATE TABLE tables
(
    table_num   SERIAL  NOT NULL,
    seats_quantity INT NOT NULL,
    CONSTRAINT tables_pk PRIMARY KEY (table_num)
);

CREATE TABLE orders
(
    order_num   SERIAL  NOT NULL,
    table_num_id INT NOT NULL REFERENCES tables (table_num) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT orders_pk PRIMARY KEY (order_num)
);

CREATE TABLE sections
(
    id   SERIAL  NOT NULL,
    name VARCHAR NOT NULL,
    CONSTRAINT sections_pk PRIMARY KEY (id)
);

CREATE TABLE menu
(
    id   SERIAL  NOT NULL,
    dish_name VARCHAR NOT NULL,
    weight INT NOT NULL,
    price MONEY NOT NULL,
    section_id INT NOT NULL REFERENCES sections (id) ON UPDATE CASCADE ON DELETE CASCADE,
    quantity INT NOT NULL,
    CONSTRAINT menu_pk PRIMARY KEY (id)
);

CREATE TABLE order_details
(
    id   SERIAL  NOT NULL,
    order_id INT NOT NULL REFERENCES orders (order_num) ON UPDATE CASCADE ON DELETE CASCADE,
    dish_id INT NOT NULL REFERENCES menu (id) ON UPDATE CASCADE ON DELETE CASCADE,
    quantity INT NOT NULL,
    CONSTRAINT order_details_pk PRIMARY KEY (id)
);


CREATE TABLE products
(
    id   SERIAL  NOT NULL,
    name VARCHAR NOT NULL,
    CONSTRAINT products_pk PRIMARY KEY (id)
);


CREATE TABLE menu_products
(
    id   SERIAL  NOT NULL,
    dish_id INT NOT NULL REFERENCES menu (id) ON UPDATE CASCADE ON DELETE CASCADE,
    product_id INT NOT NULL REFERENCES products (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT menu_products_pk PRIMARY KEY (id)
);
