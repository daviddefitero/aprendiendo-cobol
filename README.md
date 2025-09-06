<p align="center">
	<img alt="Aprendiendo COBOL" src="https://raw.githubusercontent.com/daviddefitero/aprendiendo-cobol/refs/heads/main/media/banner.png">
	<h1 align="center">Aprendiendo COBOL</h1>
</p>

<p align="center">
	<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/daviddefitero/aprendiendo-cobol">
	<a href="https://www.linkedin.com/in/david-de-fitero"><img alt="Static Badge" src="https://img.shields.io/badge/aprende_m%C3%A1s-en_linkedin-blue?link=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fdavid-de-fitero%2F"></a>
</p>

<p align="center">
<h2 align="center">Proyectos para aprender las bases de COBOL de forma práctica</h2>
<p align="center">Este repositorio contiene los enunciados, soluciones, links a teoría y documentaciones recomendadas, para aprender a programar en el lenguaje COBOL de forma práctica y autodidacta. El objetivo es aprender con retos para asimilar mejor los contenidos y hacer que sea un proceso divertido.</p>
</p>


<p align="center">
	<img height="500" src="https://raw.githubusercontent.com/daviddefitero/aprendiendo-cobol/refs/heads/main/media/dia4.png">
	<img height="500" src="https://raw.githubusercontent.com/daviddefitero/aprendiendo-cobol/refs/heads/main/media/dia4-test.png">
</p>

## Proyectos
| Enunciado                               | Apuntes      | Ejercicio Resuelto |
|----------------------------------------|------------------|-----------|
| Día 0 - Hello World              |       | ex00
| Día 1 - Sumar dos números              | [Post de LinkedIn](https://www.linkedin.com/posts/david-de-fitero_programaciaejn-cobol-legacysystems-activity-7365131050957598722-EhdA?utm_source=share&utm_medium=member_desktop&rcm=ACoAADQAm3oBnSoq61FTTD_0sNmdoLRTOIbFtB0) | ex01      |
| Día 2 - Condicionales y bucles         | [Post de LinkedIn](https://www.linkedin.com/posts/david-de-fitero_programaciaejn-cobol-legacysystems-activity-7365390478139183104-rjHt?utm_source=share&utm_medium=member_desktop&rcm=ACoAADQAm3oBnSoq61FTTD_0sNmdoLRTOIbFtB0) | ex02      |
| Día 3 - Manejo de texto                | [Post de LinkedIn](https://www.linkedin.com/posts/david-de-fitero_cobol-activity-7366130934200332288-151h?utm_source=share&utm_medium=member_desktop&rcm=ACoAADQAm3oBnSoq61FTTD_0sNmdoLRTOIbFtB0) | ex03      |
| Día 4 - Datos y estructuras de datos I | [Post de LinkedIn](https://www.linkedin.com/posts/david-de-fitero_cobol-activity-7369721461822910467-D5N5?utm_source=share&utm_medium=member_desktop&rcm=ACoAADQAm3oBnSoq61FTTD_0sNmdoLRTOIbFtB0) | ex04      |

## Como empezar
La forma de aprendizaje de este repositorio consiste en resolver los proyectos planteados en el enunciado de cada día utilizando los **posts de LinkedIn adjuntos** y las [**documentaciones recomendadas**](#documentaciones-recomendadas).

No es necesario clonar el repositorio.


Para este proyecto recomiendo usar el siguiente stack:
- GNUCobol como compilador
- Vim como editor de texto

### Instalar GNUCobol
Arch Linux desde AUR
``` bash
yay gnucobol
```

Debian/Ubuntu
``` bash
sudo apt install gnucobol
```

Otras distribuciones
- [Descargar código fuente](https://sourceforge.net/projects/gnucobol/files/gnucobol/)
``` bash
sudo apt -y install -y build-essential gcc
./configure
make
sudo make install
```

### Uso de GNUCobol
``` bash
cobc [options]... file...
```

Para compilar un ejecutable usaremos el argumento -x
``` bash
cobc -x archivo.cob
```

Como el compilador transpila primero el código a C para compilar usando el compilador del sistema operativo, podemos pedirle que nos devuelva el resultado en C o ensamblador:

- C
``` bash
cobc -C archivo.cob
```

- ASM
``` bash
cobc -S archivo.cob
```

## Documentaciones recomendadas
Para facilitar el aprendizaje, en este apartado incluyo documentaciones de COBOL que me han sido muy utiles.
- [IBM COBOL for AIX Programming Guide (PDF)](https://publibfp.boulder.ibm.com/epubs/pdf/c2754040.pdf) - Mi favorito
- [Tutorialspoint COBOL](https://www.tutorialspoint.com/cobol/index.htm)
- [IBM COBOL for Linux on x86 documentation](https://www.ibm.com/docs/es/cobol-linux-x86/1.2.0)
- [IBM Enterprise COBOL for z/OS documentation](https://www.ibm.com/docs/en/cobol-zos)

## Tienes sugerencias?
En caso de cualquier error que haya cometido o alguna nueva idea para mejorar este repositorio, siéntete libre de abrir un Issue o Pull Request, o contactarme a mi correo electrónico: [david@defitero.com](mailto:david@defitero.com)