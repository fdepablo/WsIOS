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
3. En el campo "Subclass" elegimos "UITableViewCell" (nos cambiara el titulo de la clase)
4. Nos aseguramos que el lenguaje es swift
5. Pulsamos "next" y nos aseguramos que la clase va dentro de nuestro proyecto. Tambien nos aseguramos que el "Target" es nuestro proyecto.
6. Pulsamos "Create"
7. XCode ha tenido que crearnos el fichero "PersonaTableViewCell.swift"

## Diseño de Celdas

El siguiente paso será diseñar las celdas que vamos a usar en nuestra tabla

1. En el main.staroyboard dentro del "Table view controller scene" cambiamos el nombre de "Table View Cell" por el de "PersonaTableViewCell" y pulsamos enter
2. Abrimos el "Size Inspector" y establecemos el "row heigth" a 90. Pulsamos enter
3. Abrimos el "Identity inspector" y dentro del campo "class" y seleccionamos el valor "PersonaTableViewCell" (clase que creamos en el apartado anterior)
4. Creamos 6 labels dentro del espacio "prototype cells". Este espacio será el prototipo de todas nuestras celdas de la tabla. 3 label representarán la información de los atributos de la clase persona, mientras que las otras 3 labels representaran la etiqueta de cada atributo.
5. Arrancamos la app para ver que se ejecuta y todo va bien. Deberemos de ver que las celdas aparecen vacias
6. Si queremos ver como va quedando, podemos abrir el asistente y elegir "preview""

## Conectamos la UI con el codigo

1. Vamos al main.storyboard y seleccionamos una label del "PersonaTableViewCell"
2. Abrimos el asistente, se nos debe aparecer a la derecha la clase "PersonaTableViewCell"
3. Debajo de la clase creamos //MARK: Properties
4. Arrastramos los label (manteniendo presionado el boton ctrl) donde queremos mostrar la información de las personas debamo de la marca creada en el paso anterior. Deberemos de tener algo parecido al siguiente codigo:

    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var edadLabel: UILabel!
    @IBOutlet weak var pesoLabel: UILabel!

## Cargar los datos de la tabla

La clase que se encargará de conectar los datos con la tabla será un controlador.

1. Creamos una "Cocoa Touch Class". File -> new -> File... -> Cocoa Touch Class
2. En el campo "Class" ponemos "Persona"
3. En el campo "Subclass" elegimos "UITableViewController" (nos cambiara el titulo de la clase)
4. Nos aseguramos que el lenguaje es swift
5. Pulsamos "next" y nos aseguramos que la clase va dentro de nuestro proyecto. Tambien nos aseguramos que el "Target" es nuestro proyecto.
6. Pulsamos "Create"
7. XCode ha tenido que crearnos el fichero "PersonaTableViewController.swift"
8. Si es necesario podemos ordenar los ficheros .swift arrastrando y soltando

Ahora debemos de crear las personas y meterlas en la tabla con la ayuda del controlador creado

1. Abrimos el fichero "PersonaTableViewController.swift"
2. Creamos un array de personas como propiedad
3. Creamos un metodo que cargue las personas debajo de las propiedades -> cargarPersonas()
4. Dentro de ese metodo creamos 3 personas y las añadimos al array
5. Añadimos el metodo "cargarPersonas()" al metodo "viewDidLoad()"
6. Ejecutamos el proyecto para ver que todo va bien, de momento no se deben de mostrar los datos

## Mostar los datos en la tabla

Para mostrar datos en una tabla se necesitan 2 helpers, un data source y un delegate. El data source proporcionará a la tabla los datos que necesita, el delegate ayudará a mostrar dichos datos. 

La clase PersonaTableViewController.swift adopta los protocolos necesarios para poder usar tanto el data source como el delegate, pero debemos adaptarla modificando dos métodos principalmente

1. numberOfSections -> este metodo nos dice cuantas secciones (grupos de celdas) vamos a mostrar, normalmente 1
2. tableView -> 2 metodos sobrecargados. Ver en el código la explicación

Debemos de cambiar dichos metodos para poder mostrar los datos en la tabla (ir al codigo y poner dichos valores)

Por ultimo, debemos conectar el codigo hecho anteriormente en la clase PersonaTableViewController.swift en la escena de la lista de personas

1. Abrir storyboard
2. Seleccionar el table view controller
3. Abrir "Identity Inspector"
4. En el campo "class" seleccionar PersonaTableViewController
5. Ejecutamos la aplicacion, deberemos de ver ya cargados los datos en la lista

## Preparar la segunda escena para la navegación

1. Renombramos la clase ViewController.swift a PersonaViewController.swift, para ello cambiamos el nombre del fichero y el nombre de la clase del fichero
2. Para cambiar el nombre del fichero, pulsamos una vez sobre el fichero y luego enter. Renombramos
3. Luego nos metemos en la clase y la renombramos a PersonaViewController
4. Abrimos el storyboard
5. Seleccionamos la escena "View Controller"
6. Vamos al "Identity Inspector"
7. En el campo class seleccionarmos "PersonaViewController"
8. Ejecutamos los cambios para ver que todo funciona





