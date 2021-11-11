# WsIOS

Workspace con ejemplos de aplicaciones IOS. Para abrirlo solo hace falta hacer doble click en el fichero "WsIOS.xcworkspace"

## Crear un workspace
Antes de crear un proyecto podemos crear un workspace (WS) donde poner todos los proyectos. Para ello crear una carpeta "WsIOS", por ejemplo. 

Una vez creada la carpeta abrimos XCODE y dentro de File -> New -> Workspace y lo ponemos dentro de la carpeta que hemos creado. 

Ahora podemos hacer doble click siempre que queramos sobre ese Workspace y se abrirá con todos nuestros proyectos.

## Crear una aplicación iOS

1. Posicionarnos dentro de nuestro WS
2. File -> New -> proyect 
3. En la pestaña "iOS" Elegir la opcion "App". Pulsamos "next"
4. Elegir nombre de la app y demás campos. El más importante es "UserInterface", en el que podremos elegir "SwiftUI" o "Storyboard". Esta sería la manera en la que queremos realizar nuestras pantallas. Nosotros elegiremos la opcion "Storyboard". Pulsamos "next"
5. Guardaremos nuestro proyecto dentro de la carpeta de nuestro WS y configuraremos las opciones "add to" y "group" en caso de que queramos añadir este proyecto a nuestro WS


## Partes más importantes de un proyecto iOS.

En XCODE -> preferences -> tenemos las diferentes opciones de configuración de nuestro proyecto (tamaños de letra, etc)

En la barra superior de nuestra app podemos encontrar una seríe de botones. Justo a la derecha de los botones de cerrar(rojo) /minimizar(amarillo) /maximizar(verde)

1. El boton que oculta/muestra la columna de navegación (derecha del boton maximizar)
2. Boton de play y stop en la barra arriba a la izquierda
3. A la derecha del boton de stop podemos seleccionar para que dispositivo queremos lanzar la aplicación, incluso podriamos elegir un dispositivo físico si lo tuvieramos. Tambien podemos seleccionar que proyecto queremos ejecutar en caso de estar en un workspace con varios proyectos
4. Si pulsamos play se debería de arrancar nuestra aplicacion en un dispositivo virtual o fisico. Stop para pararlo
5. A la derecha de la barra tenemos el boton "+" que es un boton para agregar distintos componentes de las librerias, componentes graficos, componentes de modificacion, colores, etc. Para ello tenemos que estar situado en un storyboard
6. A la derecha del boton "+" tenemos el boton con doble fecha, que sirve para ver los cambios en caso de que tengamos nuestro proyecto en github
7. A la derecha del boton de la doble fecha tenemos el boton de inspeccion de codigo, más adelante se habla de él.

Dentro de la columna de la izquierda(justo debajo del boton de cerrar) tenemos lo que se conoce como columna de navegación y tenemos diferentes vistas:

1. La primera y más inportante es la que sale seleccionada, que es la navegación del proyecto. 
2. La siguiente sería la del repositorio GIT
3. La siguiente sería donde podemos ver nuestras clases y su herencia
4. La siguiente sería un potente buscador
5. La sigueinte sería donde podemos ver errores o warnings de nuestro proyecto
6. La siguiente sería la parte de Test Unitarios
7. La siguiente sería las sesiones de debug
8. La siguiente serían los breakpoints de nuestra app
9. La ultima muestra ultimas construcciones de la app y ejecuciones

Si queremos ver las propiedades generales de nuestro proyecto podemos pulsar en el proyecto raiz "01_AppBasicaStoryBoard", podemos muchas opciones ahí, como la versión de la app, la version de IOS que vamos a utilizar, etc.

Dentro del proyecto, podemos encontrar diferentes carpetas, la más importante es la carpeta que se llama como nuestro proyecto "01_AppBasicaStoryBoard". Dentro de esta carpeta podemos encontrar los siguientes ficheros:

1. AppDelegate.swift -> En este fichero podemos manejar las notificaciones de nuestra app, como pueden ser que la app se esta ejecutando o que esta pasando a segundo plano
2. SceneDelegate.swift -> Básicamente para indicar cual es la primera pantalla de nuestra app cuando se termine de cargar
3. Assets.xcassets -> Donde establecemos todas las imagenes de nuestra app.
4. LaunchScreen.storyboard -> Pantalla que se muestra mientras se carga nuestra app
5. Info.plist -> Fichero de configuración de nuestra app. Esta ligado con la información mostrada en la raiz de nuestro proyecto. Los test tambien tendrían un Info.plist para su configuración.
6. ViewController.swift (Solo con StoryBoard) -> Lleva la parte que comunica la vista con el modelo.
7. Main.storyboard (Solo con StoryBoard) -> Es donde pondremos nuestros componentes visuales para que el usuario interaccione con ellos (cajas de texto, botones, etc).
8. ContentView.swift (Solo con SwiftUI) -> Sería la pantalla principal de la app. Unificaría los dos siguientes archivos ViewController.swift y Main.storyboard

Si pulsamos cuaquiera de estos ficheros podemos ver el codigo en él. Además podemos desplegar la columna de la derecha del todo que es la llamada "inspector de código" y sirve para modificar las direfentes opciones de los ficheros. Podemos mostrar/ocultar  el "inspector de código" pulsando el boton superior derecha, justo a la derecha de las dobles flechas.

Las carpetas 01_AppBasicaStoryBoardTests y 01_AppBasicaStoryBoardUITests estan destinadas para las pruebas unitarias de nuestra app

Depuracion. Para depurar el codigo ejecutamos normalmente nuestra app y si encuentra un punto de ruptura se parará la app. Podremos inspeccionar la app y su log en la barra inferior de nuestro IDE. 

Para poner/quitar un punto de ruptura, simplemente habría que hacer doble click sobre la linea que queramos.

Para empezar a desarrollar nuestra primera app ir a "pasos.md"


## Tips

1. Si pulsamos windows+click sobre una funcion o metedo podemos ver su documentacion

## Bibliografia

https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/BuildABasicUI.html#//apple_ref/doc/uid/TP40015214-CH5-SW1

