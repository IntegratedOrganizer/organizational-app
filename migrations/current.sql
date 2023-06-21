-- Enter migration here

/*Create user table in public schema*/
CREATE TABLE public.users (
    id SERIAL PRIMARY KEY,
    username TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

/*Create some dummy users*/
INSERT INTO public.users (username) VALUES
('Benjie'),
('Singingwolfboy'),
('Lexius');