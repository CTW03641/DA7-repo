DO $$ 
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'academy') THEN
        CREATE DATABASE academy;
    END IF;
END $$;

\c academy;

CREATE TABLE IF NOT EXISTS cars (
    id serial PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO
    cars(name)
VALUES
    ('serie 1');

INSERT INTO
    cars(name)
VALUES
    ('serie 5');