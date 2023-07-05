BEGIN;

CREATE TABLE IF NOT EXISTS public.users (
	id serial PRIMARY KEY,
  user_name TEXT NOT NULL,
  first_name TEXT,
  last_name TEXT
);

ALTER TABLE public.users
	ADD COLUMN first_name text;

INSERT INTO public.users(first_name)
VALUES ('Sammy'), ('Paul');

GRANT SELECT ON public.users TO authenticator;

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

COMMIT;