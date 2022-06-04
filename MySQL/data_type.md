# Tipos de datos en MySQL
En general, la mayoría de los servidores de base de datos nos permiten almacenar los mismo tipo de datos, como strings, fechas y número.

## Alfanuméricos
* Char: string de caracteres.
* Varchar: string de caracteres con una longitud máxima.
En ambos casos nosotros debemos de especificar la longitud máxima que podrá almacenar el campo. Opcionalmente podemos definir el charset que almacenará.
```
varchar(20) character set utf8 
```
Con MySQL nosotros podemos establecer el charset que usará la base de datos desde su creación.
```
create database nombre character set utf8;
```

## Números enteros
* Tinyint: número entero de 1 byte (-128 a 127).
* Smallint: número entero de 2 bytes (-32768 a 32767).
* Mediumint: número entero de 3 bytes (-8388608 a 8388607).
* Int: número entero de 4 bytes (-2147483648 a 2147483647).
* Bigint: número entero de 8 bytes (-9223372036854775808 a 9223372036854775807).

## Números flotantes
* Float: número decimal de 4 bytes.
* Double: número decimal de 8 bytes.

En ambos casos nosotros debemos de especificar la cantidad de dígitos que almacenará la columna antes y después del punto (p,s) 

```
precio float(10,2) -> 10 dígitos antes del punto y 2 después del punto
```

## Tiempo
* Date: fecha (YYYY-MM-DD).
* DateTime: fecha y hora (YYYY-MM-DD HH:MM:SS).
* TimeStamp: fecha y hora (YYYY-MM-DD HH:MM:SS). -> No se recomienda usar este tipo de dato.
* Time: hora (HH:MM:SS).