USE mysql;
SELECT * FROM user;

CREATE USER admin2@localhost identified by '123abc';

GRANT SELECT, INSERT, UPDATE, DELETE on tienda.* to admin2@localhost;

SHOW GRANTS for admin2@localhost;

REVOKE UPDATE, DELETE ON tienda.* FROM admin2@localhost;

DROP USER admin2@localhost;

CREATE USER admin1@localhost IDENTIFIED BY '123abc';