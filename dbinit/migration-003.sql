ALTER TABLE public.users
	ADD COLUMN first_name text;
  
GRANT SELECT ON public.users TO authenticator;