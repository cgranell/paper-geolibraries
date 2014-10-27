Este repositorio contiene los datos brutos y procesados, junto con el análisis en R realizado para el artículo "Gestión de datos geográficos en bibliotecas universitarias españolas: Estado de la cuestión" enviado a la Revista Española de Documentación Científica [REDC](http://redc.revistas.csic.es/index.php/redc).

La carpeta **data** contiene: 
* data-survey-raw.csv: datos en bruto tal como fueron recogidos de la encuesta.
* data-survey-clean.csv: datos procesados después realizar algo de limpieza y transformaciones. Estos son los datos utilizados en el análisis final y para la versión final de las figuras que aparecen en el artí?culo en REDC.
* comp.csv: subconjunto del fichero de datos data-survey-clean.csv, especialmente diseñado para el análisis de las competencias. 

La carperta **text** contiene: 
* codebook.md: descripción de las variables (columnas) de los datos procesados (data-survey-clean.csv)
* Bibliotcas participates.docx lista las bibliotecas que contestaron la encuesta.
* encuesta.md: la lista de preguntas de la encuesta. 

La carpeta **figuras** contiene las cuatro figuras tal como aparecen en el artículo.

La carpeta **R** contiene: 
* cleaning.Rmd: código R para la transformación de los datos en bruto (data-survey-raw.csv) en datos procesados (data-survey-clean.csv), más código para la exploración previa de los datos.
* final.R: código R para la generación de las gráficas utilizadas en la version final del artí?culo.
