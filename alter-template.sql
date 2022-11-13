-- Active: 1668309933536@@127.0.0.1@3306@clientes
/*ALTER TABLE reclamos 
    ADD `id_user` INT(11) NOT NULL AFTER `fecha`;
    CHANGE `id` `id_reclamo` INT(11) NOT NULL;
    ADD PRIMARY KEY (id_reclamo);*/

/*ALTER TABLE `usuario`
    CHANGE `id` `id_user` INT(11) NOT NULL;*/

/*ALTER TABLE `solicitudes`
    CHANGE `id` `id_solicitud` INT(13) NOT NULL;
    CHANGE `tipo_solicitud` `tipo_solicitud` VARCHAR(22) NOT NULL;
    CHANGE `fecha` `fecha_solicitud` date NOT NULL;
    ADD `id_user` INT(11) NOT NULL AFTER `fecha_solicitud`;
    ADD `detalle_solicitud` VARCHAR(100) NOT NULL AFTER `id_user`;
    ADD PRIMARY KEY (id_solicitud);*/

/*ALTER TABLE `sugerencias`
    CHANGE `id` `id_sugerencia` INT(13) NOT NULL;
    CHANGE `fecha` `fecha_sugerencia` date NOT NULL;
    CHANGE `sugerencia` `detalle_sugerencia` VARCHAR(100) NOT NULL;
    ADD `id_user` INT(11) NOT NULL AFTER `detalle_sugerencia`;
    ADD PRIMARY KEY (id_sugerencia);*/

/*ALTER TABLE `denuncias`
    CHANGE `id` `id_denuncia` INT(13) NOT NULL;
    CHANGE `denuncia` `detalle_denuncia` VARCHAR(100) NOT NULL;
    ADD `id_user` INT(11) NOT NULL AFTER `detalle_denuncia`;
    ADD PRIMARY KEY (id_denuncia);*/

/* Llaves foraneas */
ALTER TABLE `reclamos`
ADD FOREIGN KEY(id_user) REFERENCES usuario(id_user);

ALTER TABLE `denuncias`
ADD FOREIGN KEY(id_user) REFERENCES usuario(id_user);

ALTER TABLE `solicitudes`
ADD FOREIGN KEY(id_user) REFERENCES usuario(id_user);

ALTER TABLE `sugerencias`
ADD FOREIGN KEY(id_user) REFERENCES usuario(id_user);

ALTER TABLE `reclamos`
ADD FOREIGN KEY(id_user) REFERENCES usuario(id_user);