# Parcial 11/06/2020

## Entrega
La entrega del parcial es utilizando **el mismo repositorio git donde fue clonado este proyecto**. Incluso los archivos extras (adjuntos) se deben colocar dentro de la carpeta `adjuntos_parcial/` y subir al repositorio.

### Branch
Una vez clonado el repositorio, se debe realizar un branch con el nombre `{sede}-{tema}-{apellido}` (sin espacios ni caracteres especiales ni acentos).

Por ejemplo, para el **Alumno de Rauch Perez Alejandro que tiene el tema B**:
* `git checkout -b rauch-b-perez`

### Push
Una vez terminado el trabajo, se debe commitear y pushear a la rama del alumno/a:
1. `git add .`
2. `git commit -m "entrega final"`
3. `git push -u origin rauch-b-perez`

En caso de que por alguna razón no pueda pushear al repo, se debe guardar todo el parcial en un archivo comprimido y enviar al mail de la cátedra: `web2@alumnos.exa.unicen.edu.ar`.

## DB
Para importar la base de datos se deben seguir estos pasos

1. Entrar a phpMyAdmin: `http://localhost/phpmyadmin`
2. Crear una nueva base de datos con el nombre **correspondiente al tema** (`db_huellas`, `db_ranchito` o `db_covid`)
3. Entrar a la base de datos nueva e ir a "importar" en el menu superior
4. Importar la base de datos seleccionande el archivo desde `database/db_*.sql`

Suerte :)

