use mysql ;

DROP USER IF EXISTS READONLY@LOCALHOST;
CREATE USER IF NOT EXISTS READONLY@LOCALHOST IDENTIFIED BY 'COOLPASSWORD';

DROP USER IF EXISTS HRDEPARTMENT@LOCALHOST;
CREATE USER IF NOT EXISTS HRDEPARTMENT@LOCALHOST IDENTIFIED BY 'SECUREPASSWORD';

GRANT SELECT ON *.* TO READONLY@LOCALHOST;
GRANT SELECT, INSERT, UPDATE ON *.* TO HRDEPARTMENT@LOCALHOST;
USE PREMIER_LEAGUE_DB;