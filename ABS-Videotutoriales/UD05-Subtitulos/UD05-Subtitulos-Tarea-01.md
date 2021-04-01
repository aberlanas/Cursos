---
title: "UD05 SubtitleEdit - Tareas 01"
subtitle: "Herramientas de Creación de Vídeotutoriales para Aprendizaje Basado en Servicios"
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ABS, Didáctica]
titlepage: true,
page-background: "../rsrc/backgrounds/background-cefire.pdf"
page-background-opacity: 1
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "360049"
titlepage-rule-height: 0
titlepage-background: "../rsrc/backgrounds/background-title.pdf"
---

# Introducción

En esta unidad aprenderemos algunos conceptos sobre los subtítulos, cómo funcionan, crearemos unos subtitulos para un vídeo y veremos algunas ideas que se podrían poner en práctica con el alumnado.

# Conceptos sobre los subtitulos

Los subtitulos son el texto que se sobrepone durante determinados fotogramas de un vídeo para aportar 
más información a la escena. En el mundo del cine y las series son muy comunes si deseamos oir la interpretación de los actores originales, pero no dominamos el idioma en el que ha sido grabada la película o serie.

Para el soporte de personas con problemas de audición también se utilizan los subtitulos, ya que si contienen la información de lo que se esta oyendo en la escena, les permiten obtener la información que representa la escena *casi* completamente.

Es muy habitual ahora encontrar series y películas en plataformas de suscripción que nos ofrecen la posibilidad de seleccionar diferentes subtítulos, dependiendo del idioma en el que queremos que se reproduzcan.

A cada uno de estos "subtitulos" se les llama **pista**. 

Una definición no muy técnica de que podríamos dar acerca de las **pistas**(*en inglés track*) es que son los diferentes hilos de información de que se van reproduciendo a lo largo de un vídeo o audio. A medida que un vídeo se reproduce, si contiene audio se van reproduciendo por un lado la información de vídeo y la del audio. De esta manera al tratarse de dos informaciones diferentes es *fácilmente* intercambiable la misma pista de vídeo y diferentes audios (idiomas). Esto funciona de una manera similar con los subtítulos, ya que nos permite ir cambiando de pista de subtitulos sin necesidad de "integrarlos" con los vídeos.

![Subtitled](imgs/subtitled-keanu.png)\

Si tuvieramos que *integrarlos*, lo que se haría es que se incrustaría el texto de los subtítulos en cada uno de los fotogramas del vídeo, haciendo imposible su modificación posterior e impidiendo que se pudiera cambiar de idioma fácilmente.

# Funcionamiento

Los ficheros de subtítulos son ficheros de texto que contienen información de lo segundos (*el cuando*), la duración (*cuanto tiempo*) y el texto que se mostrará. 

Existen muchos tipos de subtítulos, y daría para cursos enteros, pero vamos a ver el más sencillo, si abrimos con el *Bloc de Notas* un fichero de subtítulos del tipo `.srt` veremos algo similar a esto:

```srt
1
00:00:00,000 --> 00:00:05,000
Ejemplo de Subtitulo

2
00:00:05,000 --> 00:00:07,000
Ahora estamos aquí

```

En este subtítulo se mostrará desde el segundo **0** al segundo **5** el texto: `Ejemplo de Subtitulo`. A continuación, en el segundo **5** cambiará el texto y aparecerá: `Ahora estamos aquí` y durará **2** segundos.

Esto es sólo para ilustrar, no vamos a realizar los subtítulos editando el texto así (aunque se podría), ya que sería una tarea muy ardua.

Vamos a utilizar un Software Libre muy potente que se llama: *SubtitleEdit* que podréis encontrar disponible para todas las plataformas.

# SubtitleEdit

Página oficial de proyecto:

- https://www.nikse.dk/SubtitleEdit

Descarga de la última versión para Windows:

https://github.com/SubtitleEdit/subtitleedit/releases/download/3.6.0/SubtitleEdit-3.6.0-Setup.zip

## SubtitleEdit en GNU/LinuX

Para usarlo en Sistemas GNU/LinuX se puede descargar la versión 3.6.0 (Primavera 2021):

https://github.com/SubtitleEdit/subtitleedit/releases/download/3.6.0/SE360.zip

Para usarlo en GNU/LinuX podéis instalar los siguientes paquetes utilizando la línea de comandos:

```shell
sudo apt install mono-complete
sudo apt install libhunspell-dev
sudo apt install libmpv-dev 
sudo apt install tesseract-ocr
sudo apt install vlc 
sudo apt install ffmpeg 
```

Y luego podréis lanzar `SubtitleEdit.exe` utilizando: 

```shell
mono SubtitleEdit.exe
```

Desplazándoos al directorio donde se encuentra el ejecutable.

# Videotutorial

Ver el Videotutorial del funcionamiento de SubtitleEdit

# Propuestas de uso

Algunas propuestas de actividades que se podrían realizar con el alumnado:

- Subtitular a otro idioma un vídeo que de otra manera no estaría disponible.
- Explicar para personas con problemas de audición mediante texto ciertos conceptos que se explican en un vídeo.
- Utilizando libretos de obras de teatro, subtitular vídeos de representaciones.
- En entornos CLIL, realizar la traducción literal de un vídeo con el alumnado para practicar el Listening y el Reading (adaptable a cualquier idioma).
- En un vídeo de un paseo sobre una serie de elementos, subtitular determinados objetos para identificarlos.

# Tarea 01

Siguiendo los pasos que se describen en el vídeo, subtitulad un vídeo vuestro (no hace falta que lo subtituléis entero), aportando la información que consideréis. Subid el vídeo y los subtítulos a la plataforma.

