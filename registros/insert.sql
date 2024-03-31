-----sql de insercion de registros

INSERT INTO public.adquisicion(
	idadquisicion, fecha, pago, idusuario)
	VALUES (2023-08-20, 950, 1),
			(2023-08-21, 280, 2),
			(2023-08-22, 10, 3),
			(2023-08-23, 10, 1);
			
INSERT INTO public.articulos(
	 nombre, cantidad_disponibles, vendidos, precio)
	 VALUES ('sombrero de pato', 0, 2, 250),
	 		('espada maquiavelica', 98, 1, 10),
	 		('casco', 1, 1, 700),
	 		('alas gamer', 20, 0, 1500),
			('eyesor',148,2,30);
			
INSERT INTO public.usuario(
	 nombre, edad, apodo, creditos)
	VALUES ( 'juanito', 13, 'juanitopro', 3000),
	( 'roberto', 18, 'purefoot', 124),
	( 'erick', 20, 'cofi', 243);

INSERT INTO public.adquisicion_detalle(
	idarticulo, idadquisicion)
	VALUES (1, 1),
	VALUES (1, 3),
	VALUES (2, 1),
	VALUES (2, 4),
	VALUES (3, 2),
	VALUES (4, 2);