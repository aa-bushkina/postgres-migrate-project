CREATE TABLE menu_products
(
    id         SERIAL NOT NULL,
    dish_id    INT    NOT NULL REFERENCES menu (id) ON UPDATE CASCADE ON DELETE CASCADE,
    product_id INT    NOT NULL REFERENCES products (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT menu_products_pk PRIMARY KEY (id)
);