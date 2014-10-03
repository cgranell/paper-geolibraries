Datos brutos y procesados, junto con el análisis en R realizado para el artículo "Gestión de datos geográficos en bibliotecas universitarias españolas: Estado de la cuestión" enviado a la Revista Española de Documentación Científica [REDC](http://redc.revistas.csic.es/index.php/redc).

* data/data-survey-raw.csv: datos en bruto tal como fueron recogidos de la encuesta.
* data/data-survey-clean.csv: datos procesados después realizar algo de limpieza y transformaciones. Estos son los datos utilizados en el análisis final y para la versión final de las figuras que aparecen en el artí­culo en REDC.
* data/codebook.md: descripción de las variables (columnas) de los datos procesados (data-survey-clean.csv)
* data/comp.csv: subconjunto del fichero de datos data-survey-clean.csv, especialmente diseñado para el análisis de las competencias. 
* R/cleaning.Rmd: código R para la transformación de los datos en bruto (data-survey-raw.csv) en datos procesados (data-survey-clean.csv), más código para la exploración previa de los datos.
* R/final.R: código R para la generación de las gráficas utilizadas en la version final del artí­culo.
