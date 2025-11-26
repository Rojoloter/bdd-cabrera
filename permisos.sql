-- Usuario administrador
CREATE ROLE administrador
   WITH LOGIN
   SUPERUSER
   PASSWORD 'admin123';


-- Usuario normal
CREATE ROLE usuario_redsocial
   WITH LOGIN
   NOSUPERUSER
   PASSWORD 'usuario123';

-- Le da al usuario el permiso para poder realizar inserciones en las sig. tablas.
GRANT SELECT, INSERT ON Usuarios TO usuario_redsocial;
GRANT SELECT, INSERT ON Publicaciones TO usuario_redsocial;
GRANT SELECT, INSERT ON Grupos TO usuario_redsocial;
GRANT SELECT, INSERT ON Mensajes TO usuario_redsocial;

GRANT SELECT, INSERT ON Usuario_Envia_Mensaje TO usuario_redsocial;
GRANT SELECT, INSERT ON Usuario_Recibe_Mensaje TO usuario_redsocial;
GRANT SELECT, INSERT ON Usuario_Publica_Publicacion TO usuario_redsocial;
GRANT SELECT, INSERT ON Usuario_Pertenece_Grupo TO usuario_redsocial;
GRANT SELECT, INSERT ON Usuario_Destaca_Publicacion TO usuario_redsocial;
