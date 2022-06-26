SELECT aes_encrypt('micontraseña', 'key');
SELECT aes_decrypt( aes_encrypt('micontraseña', 'key'),'key');

SELECT md5('miconstraseña');

SELECT sha('miconstraseña');

SELECT sha2('micontraseña', 384) -- 0, 256, 384, longitud de bits
