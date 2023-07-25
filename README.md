# Crazy4Cats

![img](https://github.com/toffycaluga/Crazy4Cats-inforcap/blob/main/app/assets/images/crazy4cats.png)
Crazy4Cats es una aplicación web dedicada a los amantes de los gatos, donde los usuarios pueden publicar y compartir sus aventuras con sus felinos. Además, permite que los usuarios den "like" o "dislike" a las publicaciones de otros usuarios.

## Características

- Registro y autenticación de usuarios con Devise.
- Publicación y visualización de posts con títulos y descripciones.
- Reacciones "like" y "dislike" a los posts.
- Comentarios anónimos o por usuarios registrados.

## Set-Up Inicial

1.  Clona el repositorio desde GitHub:

        git clone https://github.com/toffycaluga/Crazy4Cats-inforcap

2.  Instala las dependencias del proyecto:

        bundle install

3.  Crea la base de datos y ejecuta las migraciones:

        rails db:create
        rails db:migrate

4.  Opcionalmente, puedes ejecutar los seeds para tener algunos datos de prueba:

        rails db:seed

5.  Inicia el servidor local:

        rails server

## Uso

1. Accede a la aplicación en tu navegador web: `http://localhost:3000`

2. Regístrate como nuevo usuario o inicia sesión si ya tienes una cuenta.

3. Desde la página de inicio, puedes ver las publicaciones de otros usuarios y dar "like" o "dislike" a cada post.

4. Para crear un nuevo post, haz clic en "Crear post" y completa los campos requeridos.

5. Los usuarios también pueden dejar comentarios en las publicaciones, ya sea de forma anónima o identificados.

## Tecnologías utilizadas

- Ruby on Rails
- Devise gem para autenticación de usuarios
- PostgreSQL como bases de datos
- Bootstrap para estilos y diseño

## Paso a paso para subir a heroku

1. Crea una cuenta o inicia sesión en Heroku en https://www.heroku.com/.

2. Una vez que hayas iniciado sesión, en el Dashboard de Heroku, haz clic en el botón "New" (Nuevo) y selecciona "Create new app" (Crear nueva app).

3. En la página "Create new app", ingresa un nombre para tu aplicación y selecciona la región más adecuada.

4. Luego, en la pestaña "Deploy" (Desplegar) de la página de tu aplicación, en la sección "Deployment method" (Método de despliegue), elige la opción "GitHub" (también puedes elegir Git si has subido el código a GitHub previamente).

5. Conecta tu cuenta de GitHub a Heroku y busca el repositorio del proyecto en la lista.

6. Después de conectar el repositorio, puedes elegir entre desplegar la rama principal automáticamente o desplegar manualmente eligiendo la rama.

7. Una vez que hayas configurado el despliegue, ve a la pestaña "Settings" (Configuraciones) y haz clic en "Reveal Config Vars" (Mostrar variables de configuración).

8. Agrega todas las variables de entorno necesarias para tu aplicación. Asegúrate de configurar la clave secreta de Rails y cualquier otra variable que necesites.

9. Ahora, en la pestaña "Resources" (Recursos), asegúrate de que esté habilitado el servicio de base de datos PostgreSQL para tu aplicación. Si no lo está, agrégalo seleccionando "Heroku Postgres" en la sección "Add-ons".

10. Una vez que hayas configurado todo, haz clic en el botón "Deploy Branch" (Desplegar rama) en la pestaña "Deploy" para iniciar el despliegue de tu aplicación.

11. Heroku comenzará a desplegar la aplicación y podrás ver el progreso en los registros (logs). Si todo va bien, la aplicación debería estar disponible en la URL de Heroku.

⌨️ con ❤️ por [Toffy Caluga](https://github.com/toffycaluga)
