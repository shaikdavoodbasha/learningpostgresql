CREATE TABLE basics.products_basic(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    stock INTEGER DEFAULT 0,
    total_view BIGINT DEFAULT 0,
    price NUMERIC(10,2),
    -- digit after the decimal point
    is_active BOOLEAN DEFAULT true
);

INSERT INTO basics.products_basic(name,description,stock,total_view,price,is_active)
VALUES(
    'product-1','product- desc',100,1200,2342.34,true
);


SELECT * FROM basics.products_basic;

SELECT * FROM basics.products_basic WHERE is_active is true;