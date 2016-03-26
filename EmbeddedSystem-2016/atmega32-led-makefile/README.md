#Makefile

## Tutorial
* [Using make and writing Makefiles] (https://www.cs.swarthmore.edu/~newhall/unixhelp/howto_makefiles.html)

## Build

```bash
make
```

## Flash

```bash
dmesg | grep -i USB | tail -n 5
chmod 666 /dev/USB0
make program
```

## Clean source tree

```bash
make clean
```
