----creacion de tablas
CREATE TABLE IF NOT EXISTS public.adquisicion
(
    idadquisicion integer NOT NULL DEFAULT nextval('adquisicion_idadquisicion_seq'::regclass),
    fecha date,
    pago integer,
    idusuario integer,
    CONSTRAINT adquisicion_pkey PRIMARY KEY (idadquisicion),
    CONSTRAINT "IDUsuario" FOREIGN KEY (idusuario)
        REFERENCES public.usuario (idusuario) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.adquisicion
    OWNER to postgres;
------------------------------
CREATE TABLE IF NOT EXISTS public.articulos
(
    idarticulo integer NOT NULL DEFAULT nextval('articulos_idarticulo_seq'::regclass),
    nombre character varying COLLATE pg_catalog."default",
    cantidad_disponibles integer,
    vendidos integer,
    precio integer,
    CONSTRAINT articulos_pkey PRIMARY KEY (idarticulo)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.articulos
    OWNER to postgres;
--------------------------------
CREATE TABLE IF NOT EXISTS public.usuario
(
    idusuario integer NOT NULL DEFAULT nextval('usuario_idusuario_seq'::regclass),
    nombre character varying COLLATE pg_catalog."default",
    edad integer,
    apodo character varying COLLATE pg_catalog."default",
    creditos integer,
    CONSTRAINT usuario_pkey PRIMARY KEY (idusuario)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.usuario
    OWNER to postgres;
----------------------------------
CREATE TABLE IF NOT EXISTS public.adquisicion_detalle
(
    idarticulo integer,
    idadquisicion integer,
    CONSTRAINT idadquisicion FOREIGN KEY (idadquisicion)
        REFERENCES public.adquisicion (idadquisicion) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT idarticulo FOREIGN KEY (idarticulo)
        REFERENCES public.articulos (idarticulo) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.adquisicion_detalle
    OWNER to postgres;
	

