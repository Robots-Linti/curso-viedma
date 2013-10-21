Curso de Robots con Python en la UNRN
=====================================

[Ver slides](http://robots-linti.github.io/curso-viedma/)

Trabajo final
-------------
En grupos de 2 o 3 personas presentar uno de los siguientes trabajos para el día 25 de Octubre:

1. Planteo de 2 ejercicios para alumnos de escuelas secundarias.
2. Planteo de 2 ejercicios para alumnos de nivel universitario.
3. Planteo de modificaciones o ampliaciones posibles a la API del robot:
    * Soporte para otros sensores/dispositivos.
    * Añadir otros métodos o funcionalidades.
    * Modificaciones para hacer que la API se más apropiada para cursos a alumnos jóvenes.

Para los ejercicios 1 y 2 se deberá presentar además de los enunciados, una breve descripción de que conceptos
se intenta ejercitar con los mismos y un ejemplo (para el ejercicio 2 puede ser en pseudocódigo si el ejercicio
es complejo) de su posible implementación.

Para el ejercicio 3 deberá presentarse la interfaz de los métodos que se propone agregar y pseudocódigo de la
funcionalidad esperada o una descripción de la misma en lenguaje natural.

Grabar firmata modificado en los robots
---------------------------------------

Grabar el firmware para usar los robots con Python:
```bash
cd ~
mkdir git
cd git
git clone git@github.com:Robots-Linti/v1.2.git
cd v1.2
git checkout develop
cd ..
git clone git@github.com:Robots-Linti/n6firmata.git
cd n6firmata
git checkout develop
cd ..
cd v1.2/linux/DuinoPack.v1.2.Linux/
./arduino
```

Luego abrir n6firmata/StandardFirmata/StandardFirmata.ino y grabarlo.
