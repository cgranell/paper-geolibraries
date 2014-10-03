Datos brutos y procesados, junto con el an�lisis en R realizado para el art�culo "Gesti�n de datos geogr�ficos en bibliotecas universitarias espa�olas: Estado de la cuesti�n" enviado a la Revista Espa�ola de Documentaci�n Cient�fica [REDC](http://redc.revistas.csic.es/index.php/redc).

* data/data-survey-raw.csv: datos en bruto tal como fueron recogidos de la encuesta.
* data/data-survey-clean.csv: datos procesados despu�s realizar algo de limpieza y transformaciones. Estos son los datos utilizados en el an�lisis final y para la versi�n final de las figuras que aparecen en el art��culo en REDC.
* data/codebook.md: descripci�n de las variables (columnas) de los datos procesados (data-survey-clean.csv)
* data/comp.csv: subconjunto del fichero de datos data-survey-clean.csv, especialmente dise�ado para el an�lisis de las competencias. 
* R/cleaning.Rmd: c�digo R para la transformaci�n de los datos en bruto (data-survey-raw.csv) en datos procesados (data-survey-clean.csv), m�s c�digo para la exploraci�n previa de los datos.
* R/final.R: c�digo R para la generaci�n de las gr�ficas utilizadas en la version final del art��culo.
