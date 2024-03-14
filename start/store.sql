DROP TABLE IF EXISTS action_figure;

CREATE TABLE action_figure(
    id SERIAL PRIMARY KEY,
    action_figure_title VARCHAR(30)
        NOT NULL
        UNIQUE
        CHECK(action_figure_title ~ '^[A-Z][a-z]*(?:(?: |-)[A-Z\d][a-z]*)*$'),
    quantity INT
        NOT NULL
        CHECK(quantity > 0 AND quantity < 31),
    price DECIMAL(4,2)
        NOT NULL
        CHECK(price BETWEEN 10 AND 100)
);

\COPY action_figure FROM './data/action_figure.csv' WITH CSV HEADER;

DROP TABLE IF EXISTS employee;

CREATE TABLE employee(
    id SERIAL PRIMARY KEY,
    employee_name VARCHAR(30)
        NOT NULL
        CHECK(employee_name ~ '^[A-Z][a-z]*( [A-Z][a-z]*)$'),
    position VARCHAR(50)
        NOT NULL
        CHECK(position IN (
                'Sales Associate', 
                'Store Manager', 
                'Inventory Clerk', 
                'Customer Service Representative', 
                'IT Specialist', 
                'Marketing Coordinator', 
                'Assistant Manager', 
                'Finance Analyst', 
                'Security Officer', 
                'HR Coordinator'
            )
        ),
    salary DECIMAL(7,2)
        NOT NULL
        CHECK(salary BETWEEN 31987.20 AND 65000)
);

\COPY employee FROM './data/employee.csv' WITH CSV HEADER;

-- -- Drop the table if it exists
DROP TABLE IF EXISTS game;

-- Create Game Table
CREATE TABLE game (
    game_id SERIAL PRIMARY KEY,
    game_title VARCHAR(255)
        NOT NULL
        UNIQUE
        CHECK(game_title ~ '^[A-Za-z0-9 _\-:''\\]+$'),
    quantity INT
        NOT NULL
        CHECK(quantity BETWEEN 1 AND 50),
    price DECIMAL(5, 2)
        NOT NULL
        CHECK(price BETWEEN 10 AND 60)
);


-- Insert Sample Data into Game Table
\COPY game FROM './data/game.csv' WITH CSV HEADER;

DROP TABLE IF EXISTS poster;

CREATE TABLE poster(
    id SERIAL PRIMARY KEY,
    poster_title VARCHAR(30)
        NOT NULL
        UNIQUE
        CHECK(poster_title ~ '^[A-Z][A-Za-z\-]*( [A-Z0-9][a-z]*)*$'),
    quantity INT
        NOT NULL
        CHECK(quantity BETWEEN 1 AND 30),
    price DECIMAL(4,2)
        NOT NULL
        CHECK(price BETWEEN 6 AND 20)
);

\COPY poster FROM './data/poster.csv' WITH CSV HEADER;