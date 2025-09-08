<p align="center">
	<img alt="Aprendiendo COBOL" src="https://raw.githubusercontent.com/daviddefitero/aprendiendo-cobol/refs/heads/main/media/banner.png">
	<h1 align="center">Aprendiendo COBOL</h1>
</p>

<p align="center">
	<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/daviddefitero/aprendiendo-cobol">
	<a href="https://www.linkedin.com/in/david-de-fitero"><img alt="Static Badge" src="https://img.shields.io/badge/aprende_m%C3%A1s-en_linkedin-blue?link=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fdavid-de-fitero%2F"></a>
</p>

<p align="center">
<h2 align="center">Proyectos para aprender a aprender COBOL de forma práctica</h2>
<p align="center">Sí, has leído bien. Aquí no vas a memorizar COBOL, vas a <b>aprender a aprender COBOL</b>. Este repositorio no es un manual paso a paso de cómo usar COBOL, es un punto de partida para aprender a moverte por su entorno. Encontrarás retos pensados para que seas tú quien descubra, practique y domine COBOL de una forma divertida y práctica.</p>
<b>
<p align="center">No uses IAs.</p>
<p align="center">Tus fallos entrenan tu cerebro.</p>
<p align="center">Cada error activa procesos que ninguna máquina puede vivir por ti.</p>
</b>
</p>


<p align="center">
	<img height="500" src="https://raw.githubusercontent.com/daviddefitero/aprendiendo-cobol/refs/heads/main/media/dia4.png">
	<img height="500" src="https://raw.githubusercontent.com/daviddefitero/aprendiendo-cobol/refs/heads/main/media/dia4-test.png">
</p>

## Proyectos

<div align="center">
<h3><a href="dia0/README.md">Día 0</a></h3>
<h3><a href="dia1/README.md">Día 1</a></h3>
<h3><a href="dia2/README.md">Día 2</a></h3>
<h3>Día 3 ⏳</h3>
<h3>Día 4 ⏳</h3>
<h3>Día 5 ⏳</h3>
<h3>Día 6 ⏳</h3>
<h3>Día 7 ⏳</h3>
<h3>Día 8 ⏳</h3>
<h3>Día 9 ⏳</h3>
</div>

## Como empezar

La metodología de aprendizaje de este repositorio consiste en hacer los proyectos planteados en el enunciado de cada día. Tendrás que investigar por tu cuenta para poder cumplir los criterios fijados. Puedes hacer uso de los **posts de LinkedIn adjuntos** y las [**documentaciones recomendadas**](#documentaciones-recomendadas).

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

## Ideas próximas

- Sustituir las soluciones con un script de Python para corregir automáticamente el ejercicio. Ejemplo de la propuesta:

``` bash
$ python test.py

[✅] ex00.cob passed (50 tests)
[❌] ex01.cob failed

--- Traceback (most recent call last) ---
  Exercise: ex01
  Iteration: 0
  Input:    '2175 6155'
  Expected: '8330'
  Got:      '0'
-----------------------------
[❌] ex02.cob: Compilation error

```


## Tienes sugerencias?

En caso de cualquier error que haya cometido o alguna nueva idea para mejorar este repositorio, siéntete libre de abrir un Issue o Pull Request, o contactarme a mi correo electrónico: [david@defitero.com](mailto:david@defitero.com)
