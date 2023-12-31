\connect organizational-app;

SET client_encoding = 'LATIN1';

CREATE OR REPLACE FUNCTION trigger_updated_at()
RETURNS TRIGGER AS $$
BEGIN
   NEW.updated_at = NOW();
   RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TABLE IF NOT EXISTS public.users (
	id serial PRIMARY KEY,
  user_name TEXT NOT NULL,
  first_name TEXT,
  last_name TEXT
);

CREATE TABLE IF NOT EXISTS public.thing (
   id SERIAL PRIMARY KEY,
   name VARCHAR(100) NOT NULL,
   created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
   updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TRIGGER thing_trigger_updated_at
   BEFORE UPDATE ON public.thing
   FOR EACH ROW
   EXECUTE PROCEDURE trigger_updated_at();