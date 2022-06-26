CREATE ROLE 'rl_lectura', 'rl_escritura';

GRANT SELECT ON tienda.* TO 'rl_lectura';
GRANT INSERT, UPDATE, DELETE ON tienda.* TO 'rl_escritura';

SHOW GRANTS FOR 'rl_lectura';
SHOW GRANTS FOR 'rl_escritura';



