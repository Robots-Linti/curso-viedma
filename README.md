[Ver slides](http://robots-linti.github.io/curso-viedma/)

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
