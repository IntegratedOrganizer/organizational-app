\connect organizational-app;

-- /*Create user table in public schema*/
-- CREATE TABLE public.user (
--     id SERIAL PRIMARY KEY,
--     username TEXT,
--     created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- COMMENT ON TABLE public.user IS
-- 'Forum users.';

-- /*Create post table in public schema*/
-- CREATE TABLE public.post (
--     id SERIAL PRIMARY KEY,
--     title TEXT,
--     body TEXT,
--     created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     author_id INTEGER NOT NULL REFERENCES public.user(id)
-- );

-- COMMENT ON TABLE public.post IS
-- 'Forum posts written by a user.';

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