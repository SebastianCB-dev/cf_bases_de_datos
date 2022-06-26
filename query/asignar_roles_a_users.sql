GRANT 'rl_lectura', 'rl_escritura' TO admin1@localhost;

SHOW GRANTS FOR admin1@localhost;

REVOKE 'rl_escritura' FROM admin1@localhost;

REVOKE DELETE ON tienda.* FROM 'rl_escritura';

SHOW GRANTS FOR 'rl_escritura';

DROP ROLE 'rl_escritura';

