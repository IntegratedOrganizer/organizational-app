
BEGIN;

SET client_encoding = 'LATIN1';

-- Required for Postgrest
CREATE USER anon;
    CREATE ROLE authenticator nologin;
    GRANT authenticator TO anon;
    GRANT USAGE ON SCHEMA public TO anon;
    ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO anon;
    GRANT SELECT ON ALL SEQUENCES IN SCHEMA public TO anon;
    GRANT SELECT ON ALL TABLES IN SCHEMA public TO anon;

CREATE OR REPLACE FUNCTION trigger_updated_at()
RETURNS TRIGGER AS $$
BEGIN
   NEW.updated_at = NOW();
   RETURN NEW;
END;
$$ LANGUAGE plpgsql;

COMMIT;