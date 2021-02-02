 PROYECTO iOS
-
Antes de crear un proyecto es recomendable crear un workspace (WS) donde poner todos los proyectos. Para ello crear una carpeta "WsIOS" por ejemplo. Una vez creada la carpeta abrimos XCODE y dentro de File -> New -> Workspace y lo ponemos dentro de la carpeta que hemos creado. 

Ahora podemos hacer doble click siempre que queramos sobre ese WS y se abrirá con todos nuestros proyectos.

Para crear una aplicación iOS:
1) Posicionarnos dentro de nuestro WS
2) File -> New -> proyect 
3) En la pestaña "iOS" Elegir la opcion "App". Pulsamos "next"
3) Elegir nombre de la app y demás campos. El más importante es "UserInterface", en el que podremos elegir "SwiftUI" o "Storyboard". Esta sería la manera en la que queremos realizar nuestras pantallas. SwiftUI solo esta en las versiones más modernas de XCode. Con SwiftUI Apple quiere que hagamos una programación declarativa, en vez de la programación imperativa tradicionar. Pulsamos "next"
4) Guardaremos nuestro proyecto dentro de la carpeta de nuestro WS y configuraremos las opciones "add to" y "group" a nuestro WS (importante)


Partes más importantes de un proyecto iOS.
-
En XCODE -> preferences -> tenemos las diferentes opciones de configuración de nuestro proyecto (tamaños de letra, etc)

En la barra superior de nuestra app podemos encontrar los siguientes botones (es la barra donde aparecen los botones de cerrar/minimizar/maximizar)

1) El boton que oculta/muestra la columna de navegación (derecha del boton maximizar)
2) Boton de play y stop en la barra arriba a la izquierda
3) A la derecha del boton de stop podemos seleccionar para que dispositivo queremos lanzar la aplicación, incluso podriamos elegir un dispositivo físico si lo tuvieramos. Tambien podemos seleccionar que proyecto queremos ejecutar en caso de estar en un workspace con varios proyectos
4) Si pulsamos play se debería de arrancar nuestra aplicacion en un dispositivo virtual o fisico. Stop para pararlo
5) A la derecha de la barra tenemos el boton "+" que es un boton para agregar distintos componentes de las librerias, componentes graficos, componentes de modificacion, colores, etc
6) A la derecha del boton "+" tenemos el boton con doble fecha, que sirve para ver los cambios en caso de que tengamos nuestro proyecto en github
7) A la derecha del boton de la doble fecha tenemos el boton de inspeccion de codigo, más adelante se habla de él.

Dento de la columna de la izquierda tenemos lo que se conoce como columna de navegación y tenemos diferentes vistas:

1) la más inportante la que sale seleccionada que es la navegación del proyecto. 
2) La siguiente sería la del repositorio GIT
3) La siguiente sería donde podemos ver nuestras clases y su herencia
4) La siguiente sería un potente buscador
5) La sigueinte sería donde podemos ver errores o warnings de nuestro proyecto
6) La siguiente sería la parte de Test Unitarios
7) La siguiente sería las sesiones de debug
8) La siguiente serían los breakpoints de nuestra app

Si queremos ver las propiedades generales de nuestro proyecto podemos pulsar en el proyecto raiz "01_AppBasica", podemos muchas opciones ahí.

Dentro del proyecto podemos encontrar diferentes carpetas, la más importante es la carpeta que se llama como nuestro proyecto "01_AppBasica". Dentro de esta carpeta podemos encontrar los siguientes ficheros:

1) AppDelegate.swift -> En este fichero podemos manejar las notificaciones de nuestra app, como pueden ser que la app se esta ejecutando o que esta pasando a segundo plano
2) SceneDelegate.swift -> Básicamente para indicar cual es la primera pantalla de nuestra app
3) Assets.xcassets -> Donde establecemos todas las imagenes de nuestra app.
4) LaunchScreen.storyboard -> Pantalla que se muestra mientras se carga nuestra app
5) Info.plist -> Fichero de configuración de nuestra app. Esta ligado con la información mostrada en la raiz de nuestro proyecto. Los test tambien tendrían un Info.plist para su configuración.
6) ContenView.swift (Solo con SwiftUI) -> Sería la pantalla principal de la app. Unificaría los dos siguientes archivos ViewController y Main que se usaban en versiones antiguas.
7) ViewController.swift (Solo con StoryBoard) -> Lleva la parte que comunicará la vista con el modelo.
8) Main.storyboard (Solo con StoryBoard) -> Es donde pondremos nuestros componentes visuales al usuario.

Si pulsamos cuaquiera de estos ficheros podemos ver el codigo en él. Además podemos desplegar la columna de la derecha del todo que es la llamada "inspector de código" y sirve para modificar las direfentes opciones de los ficheros. Podemos mostrar/ocultar  el "inspector de código" pulsando el boton de la derecha de las doble fechas

Las carpetas 01_AppBasicaTests y 01_AppBasicaUITests estan destinadas para las pruebas unitarias de nuestra app

Depuracion. Para depurar el codigo ejecutamos normalmente nuestra app y si encuentra un punto de ruptura se parará la app. Podremos inspeccionar la app y su log en la barra inferior de nuestro IDE. 

Para poner/quitar un punto de ruptura, simplemente habría que hacer doble click sobre la linea que queramos.

