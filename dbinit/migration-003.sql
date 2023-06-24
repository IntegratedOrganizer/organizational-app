ALTER TABLE public.users
	ADD COLUMN first_name text;

INSERT INTO public.users(first_name)
VALUES('Sammy');
  
GRANT SELECT ON public.users TO authenticator;