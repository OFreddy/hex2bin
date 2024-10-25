for /f %%a in ('hex2bin -R 0807EFFE -u -c IMC21O.hex') do set "crc=%%a"

echo CRC is %crc%