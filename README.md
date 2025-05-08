# Sistema de Control de vehicular 

- [Requerimientos funcionales](##requerimientos-funcionales)
- [Entregables](#entregables)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Consideraciones Extra](#consideraciones-extra)

## Requerimientos funcionales
- Administrar la información organizacional referente a control vehicular:
  - Licencias para conducir
  - Tarjetas de circulación
  - Multas
  - Tarjetas de verificación  
  - Pagos de refrendo
- El sistema debe permitir realizar las operaciones de inserción, actualización, eliminación y consulta de datos de acuerdo al rol seleccionado.
- El sistema debe generar automáticamente comprobantes impresos en pdf y respaldar la información en archivos .xml de los 5 documentos de inciso 1.
- La firma   y foto de  los conductores deberá ser almacenada en un directorio o en la base de datos.
- Emplear un sistema de validación usando username, password, key. Utilizar un sistema de validación que permita utilizar dos tipos de cuentas:
  - Usuario (Solo podrá consultar la información de cualquier entidad)
  - Administrador (Podrá realizar alta, modificación, consulta y eliminación de datos de cualquier entidad)
- Restricción de acceso al sistema, utilizando sesiones de tal forma que no se pueda acceder a ninguna de sus páginas sin haber realizado la autentificación.
- Interpretar  los errores  generados durante el uso del sistema.
- Diseño visualmente atractivo y uniforme.

## Entregables
- Documento digital que contenga los siguientes elementos:
    - Portada
    - Índice
    - Objetivos
    - Modelo Relacional de BD
    - Diagrama de componentes
    - Manual de Usuario
    - Conclusiones 
- Código Fuente (Carpeta completa)
- Base de Datos en archivo sql.

## Estructura del Proyecto

```
docker-compose.yml
init-script.sql
app/
|   Dockerfile #Dockerfile para imagen de apache
|   index.html #login
|   backups/
|   |   driver-licenses/
|   |   driving-permits/
|   |   fines/
|   |   payments/
|   |   verification-card/
|   lib/ # librerias utilizadas
|   |   fpdf/ #código fuente de fpdf
|   |   controller.php # controlador de db
|   models/ # Consultas y generacion de pdf
|   |   delete/
|   |   insert/
|   |   select/
|   |   update/
|   views/ #vistas de archivos
|   |   admin.html
|   |   user.html
|   |   delete/
|   |   insert/
|   |   select/
|   |   update/
```

## Consideraciones Extra
- El archivo PDF se mostrará en el navegador, no se descargará automáticamente ni se guardará en el sistema
- La firma y foto de la persona serán guardadas en la base de datos en formato base 64. Su flujo será el siguiente:
  - Los archivos serán traducidos nuevamente a archivo de imagen y serán asignados a una variable
  - Se crearán archivos temporales para el uso exclusivo de esa ejecución
  - Se hará uso de esos archivos generados
  - Una vez terminado el documento, los archivos serán eliminados
- Tanto el esquema, como los archivos generados serán escritos en inglés y en *snake case*
- Al momento de generar respaldos, por cada archivo creado, se generará un archivo xml individual, y será guardado con el siguiente formato: `documentType_idDocument.xml`
- PLUS. Hacer que el usuario solo pueda acceder a sus propios archivos
