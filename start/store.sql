DROP TABLE IF EXISTS action_figure;

CREATE TABLE action_figure(
    id SERIAL PRIMARY KEY,
    action_figure_title VARCHAR(30),
    quantity INT,
    price DECIMAL(4,2)
);

\COPY action_figure FROM './data/action_figure.csv' WITH CSV HEADER;

DROP TABLE IF EXISTS employee;

CREATE TABLE employee(
    id SERIAL PRIMARY KEY,
    employee_name VARCHAR(30),
    position VARCHAR(50),
    salary DECIMAL(7,2)
);

\COPY employee FROM './data/employee.csv' WITH CSV HEADER;

-- Drop the table if it exists
DROP TABLE IF EXISTS game;

-- Create Game Table
CREATE TABLE game (
    game_id INT PRIMARY KEY,
    game_title VARCHAR(255),
    quantity INT,
    price DECIMAL(5, 2)
);


-- Insert Sample Data into Game Table
\COPY game FROM './data/game.csv' WITH CSV HEADER;

DROP TABLE IF EXISTS poster;

CREATE TABLE poster(
    id SERIAL PRIMARY KEY,
    poster_title VARCHAR(30),
    quantity INT,
    price DECIMAL(4,2)
);

\COPY poster FROM './data/poster.csv' WITH CSV HEADER;