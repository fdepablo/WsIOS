#  Ejemplo de tablas y navegacion
Vamos a ver como podemos crear otra escena, crear una tabla y la navegación entre escenas.

## Crear la clase Persona del ejemplo anterior
1. Creamos Persona.swift según el ejemplo anterior
2. Tambien podemos llevarnos los test

## Crear una tabla
Cuando creamos una tabla, automaticamente se nos crea una nueva scena con la tabla dentro.

1. Vamos a Main.storyboard
2. Mediante la librería de objetos (boton "+"), creamos un "Table View Controller Object". Alternativamente podemos hacerlo con "View > Utilities > Show Object Library."
3. Arrastramos la tabla a la izquierda de la escena que ya existe. OJO! no equivocarse con "Table View Object" que no incluye el controlador de la escena

## Establecer la tabla como primera scena
En este caso queremos hacer que la primera escena que vea el usuario sea la tabla.

1. Arrastramos el storyboard entry point (flecha que apunta al View Controller original) a la izquierda del Table View Controller que hemos creado.
2. Ejecutamos la aplicacion para ver que todo va bien.

## Diseño y Configuracion de la tabla

Altura de las filas

1. Seleccionamos en el Main.storyboard la tabla que acabamos de crear y vamos al panel de la derecha (utility area) pulsando en el "size inspector"
2. Buscamos la etiqueta "Row Height" y la establecemos a 90. Pulsamos enter. Sera la altura de las filas de la tabla.

Las filas de la tabla seran gestionadas por el objeto "UITableViewCell" que es el responsable de dibujar su contenido. Necesitaremos usar un objeto de ese tipo para dibujar el estilo que tendran nuestras filas en la app y para ello debemos crear una subclase de "UITableViewCell"

1. Creamos una "Cocoa Touch Class". File -> new -> File... -> Cocoa Touch Class
2. En el campo "Class" ponemos "Persona"
3. En el campo "Subclass" elegimos "UITableViewController" (nos cambiara el titulo de la clase)
4. Nos aseguramos que el lenguaje es swift
5. Pulsamos "next" y nos aseguramos que la clase va dentro de nuestro proyecto. Tambien nos aseguramos que el "Target" es nuestro proyecto.
6. Pulsamos "Create"
7. XCode ha tenido que crearnos el fichero "PersonaTableViewCell.swift"

El siguiente paso sera conectar la tabla de la vista con el fichero "PersonaTableViewCell.swift" que acabamos de crear, ya que este sera el responsable de gestionar los datos de la tabla.

1.








