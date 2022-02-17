#  Segue

La navegación o segue, es la manera que tiene IOS para pasar entre escenas.

Para hacer el paso entre escenas, debemos de crear las escenas que queramos en el Main.storyboard y a continuación unir dichas escenas mediante **segue**.

Para crear diferentes escenas, vamos al Main.stroryboard, pulsamos el boton **+** y buscamos por "ViewController". Arrastramos el componente a nuestro Main.storyboard.

Podemos aprecia que la escena que sera el punto de entrada de nuestra aplicacion, tiene una fecha a la derecha de ella.

Para crear una transición entre escenas, debemos de arrastar el componente que queremos que genere el evento de transicion, pulsando ctrl, hasta la escena que queremos mostrar.

IOS permite una manera de gestiionar navegación hacia atras de una manera muy sencilla. Para ello debemos de ir a **Editor** | **embed in** || **Navigation controller**

Si queremos hacer logica en los ViewController debemos de crear sus fichero swift correspondientes, y luego unirlos. Para ello:

1. Create file
2. Create Cocoa File
3. Elegir el fichero que extienda de **UIViewController"

El siguiente paso será unir el controlador que acabamos de crear con la vista del Main.storyboard. Para ello

1. Vamos al Main.storyboard
2. Elegir el "ViewController" que quermos asociar. Ojo! debemos elegirlo  desde la barra derecha
3. Ir a indentiy inspector
4. Elegir el fichero que hemos creado previamente

Para pasar información de una escena a otra debemos de usar una función llamada 



