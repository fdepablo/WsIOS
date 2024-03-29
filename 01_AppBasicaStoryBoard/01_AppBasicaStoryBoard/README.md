# Pasos para crear esta app

Una vez creada la app podemos empezar a poner nuestros componentes en el fichero "Main.storyboard"

El storyboard de tu app contiene por defecto una escena "scene", la cual representa una pantalla de contenido en tu aplicacion. La flecha que apunta en el lado izquierdo de la pantalla representa la scena que será el punto de entrada. Esto es, sera esa escena la que se ejecute cuando el usuario inicie nuestra app. 

## Añadir un TextField a la escena

0. vamos al "Main.storyboard"
1. Pulsamos el boton "+"
2. Elegimos un text Field, podemos usar el filtro de busqueda
3. Arrastramos el componente y lo ponemos en nuestra escena
4. Podemos colocarlo donde queramos y darle otro tamaño
5. Podemos cambiar muchas de sus propiedades dentro del inspector
de codigo. En el inspector de atributos (5 boton) podemos poner el placeholder que queramos ("Ponga un nombre")

## Añadir un Label a la escena

0. vamos al "Main.storyboard"
1. Pulsamos el boton "+"
2. Elegimos un Label, podemos usar el filtro de busqueda
3. Arrastramos el componente y lo ponemos en nuestra escena, justo encima
del TextField
4. Doble click en el componente y lo podemos renombrar ("Nombre:")

## Añadir un Button a la escena

0. vamos al "Main.storyboard"
1. Pulsamos el boton "+"
2. Elegimos un Button, podemos usar el filtro de busqueda
3. Arrastramos el componente y lo ponemos en nuestra escena, justo debajo del TextField
4. Doble click en el componente y lo podemos renombrar ("Poner el texto del label por defecto")
5. Podemos ejecutar nuestra app con el boton de play y ver como se ve.
6. Dentro del sumulador (que aparecerá la primera vez que ejecutemos la app) en la barra de apple podemos ver sus opciones. Algunos atajos.

cmd+shift+k -> mostrar/ocultar el teclado en el simulador
cmd+flechas -> rotar pantalla

## Conectar la Interfaz con el código

En este apartado vamos a ver como podemos conectar el fichero "Main.Storyboard" con el controlador "ViewController.swift"

## Conectar el TextField con el código

0. vamos al "Main.storyboard"
1. Abrimos el "Assistant". Para ello pulsamos el boton "Adjust editor option" que se encuentra justo a la derecha del inspector de codigo, un boton con varias lineas en horizontal. Podemos cerrarlo en cualquier momento pulsando la "x" de dicha ventana.
2. Ahora tenemos que ver al mismo tiempo el "Main" y el "ViewController"
3. Ponemos justo debajo de la clase el comentario "//MARK: Properties"
4. Pinchamos en el TextField y a la vez que pulsamos "ctrl" arrastramos el TextFiel debajo del comentario que acabamos de poner y soltamos. Debemos apreciar como mientras lo hacemos aparece una linea azul.
5. Aparcera una ventana emergente, le ponemos el nombre "nameTextField"
6. Pulsamos el boton "connect"
7. Aparecera la propiedad con una anotacion "IBOutlet". Esta anotacion le dice a XCODE que quieres conectar esta interfaz desde la Interface Builder (de ahi viene el prefijo IB). Tambien añadira la palabra reservada weak, la cual indica que esta referencia no va contar a la hora de mantener con vida al objeto que esta apuntando (en este caso el TextField)

## Conectar la label con el código

0. vamos al "Main.storyboard" y con el "Assistant" abierto
1. Pinchamos en el Label y a la vez que pulsamos "ctrl" arrastramos el Label debajo del comentario "MARK;Properties" y soltamos. Debemos apreciar como mientras lo hacemos aparece una linea azul.
2. Aparcera una ventana emergente, le ponemos el nombre "nameLabel"
3. Pulsamos el boton "connect"
4. Aparecera la propiedad con una anotacion IBOutlet

## Definir una accion de botón

En esta parte vamos a hacer que cuando pulsemos el boton, se cambie
el texto del label.

0. vamos al "Main.storyboard" y con el "Assistant" abierto
1. Ponemos justo debajo del método "viewDidLoad" el comentario "//MARK: Actions"
2. Pinchamos en el Button y a la vez que pulsamos "ctrl" arrastramos el Button debajo del comentario "MARK:Actions" y soltamos. Debemos apreciar como mientras lo hacemos aparece una linea azul.
3. Aparcera un Dialogo, como "connection" elegiremos "Action" como "Name" "setDefaultLabelText" y como "Type" "UIButton"
4. pulsamos el boton "connect"
5. Dentro del metodo que se acaba de crear ponemos el siguiente código:
        nameLabel.text = "boton pulsado"
        
## Nota Importante

Si en algún momento queremos borrar una de las conexiones que hemos creado de un componente de la vista a un controlador debemos de tener cierto cuidado. Por ejemplo, cuando hemos arrastrado un textView al ViewController para conectar la vista con el controlador mediante un atributo anotado con @IBOutlet y luego nos arrepentimos del haberlo hecho. En este caso, NO Seria suficiente con borrar dicho atributo del ViewController, ya que por defecto se queda una referencia desde la vista a dicho atributo, y al arrancar la aplicacion nos daría un error. Por ello, siempre que borremos eñ atributo asociado a un componente del maini.storyboard, tambien deberemos de seleccionar el componente en el main.storyboard (Vista) y pulsar el ultimo enlace de arriba a la derecha llamado "Show the connections inspector" y borrar a mano la conexión que se habia creado de manera automatica dentro del apartado "Referencing Outlets"

Lo mismo podría ocurrir en el caso de que borremos un boton o algún otro componente.
