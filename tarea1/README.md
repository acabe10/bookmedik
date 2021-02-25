# Tarea 1: Ejecución de una aplicación web PHP en docker

* Queremos ejecutar en un contenedor docker la aplicación web escrita en PHP: bookMedik (https://github.com/evilnapsis/bookmedik).
* Es necesario tener un contenedor con mariadb donde vamos a crear la base de datos y los datos de la aplicación. El script para generar la base de datos y los registros lo encuentras en el repositorio y se llama schema.sql. Debes crear un usuario con su contraseña en la base de datos. La base de datos se llama bookmedik y se crea al ejecutar el script.
* Ejecuta el contenedor mariadb y carga los datos del script schema.sql. Para más información.
* El contenedor mariadb debe tener un volumen para guardar la base de datos.
* El contenedor que creas debe tener un volumen para guardar los logs de apache2.
* Crea una imagen docker con la aplicación desde una imagen base de debian o ubuntu. Ten en cuenta que el fichero de configuración de la base de datos (core\controller\Database.php) lo tienes que configurar utilizando las variables de entorno del contenedor mariadb. (Nota: Para obtener las variables de entorno en PHP usar la función getenv. Para más infomación).
* La imagen la tienes que crear en tu máquina con el comando docker build.
* Crea un script con docker compose que levante el escenario con los dos contenedores.(Usuario: admin, contraseña: admin).
