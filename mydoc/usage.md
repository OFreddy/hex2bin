

## Get stored CRC from HEX file at specified address (no Check!!!)

```batch
hex2bin -R 0807EFFE -u -c IMC21O.hex
```
-u => Unverbose, only 4 digit crc is printed

*Use the return value in a batch script*

```
for /f %%a in ('hex2bin -R 0807EFFE -u -c IMC21O.hex') do set "crc=%%a"
echo CRC is %crc%
```



## Calculate CRC over specified memory range and store at dedicated address in BIN file

```batch
hex2bin -k 3 -r 08010000 0807EFF7 -f 0807EFFE -C 1021 0000 false false 0000 IMC21O.hex
```



