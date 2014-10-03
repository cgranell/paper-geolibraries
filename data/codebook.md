Cookbook
========================================================

Este documento contiene la lista de las variables y descripci�n de su significado en cuanto a la pregunta de la encuenta a la que hacen referencia. La sintaxis del nombre de las variables es la siguiente
* Pxx: indica el n�mero de pregunta. Por ejemplo: P01 es la pregunta 1 de la encuesta
* Hx: Indica la hip�tesis a la que hace referencia la pregunta.
    * H1: Pol�ticas y recursos materiales
    * H2: Colaboraci�n y acceso a datos geogr�ficos
    * H3: Recursos humanos
* El tercer c�digo (opcional) identifica las respuestas a una determinada pregunta. Ver en cada caso. 

## Variables generales

* **timestamp**: de tipo car�cter, indica fecha y hora de introduccio de la encuesta
* **bib.nombre**: de tipo car�cter, indica la denominaci�n de la universidad a la que pertenece la biblioteca universitaria
* **bib.siglas**: de tipo car�cter, indica las siglas de la universidad
* **bib.tipo**: de tipo factor (Publica/Privada), indica si es p�blica o privada
* **bib.ccaa**: de tipo factor, indica la Comunidad Aut�noma

## Variables Hip�tesis 1 
* **p02.h1**: de tipo factor(S�/No), respuesta a la Pregunta 2 "�Contempla la biblioteca la gesti�n de datos geogr�ficos?"
* **p03.h1.a**: de tipo factor(S�/No), respuesta "Gesti�n de colecciones" a la pregunta 3 "�D�nde se enmarca la gesti�n de datos geogr�ficos?"
* **p03.h1.b**: de tipo factor(S�/No), respuesta "Gesti�n de datos de investigaci�n" a la pregunta 3 "�D�nde se enmarca la gesti�n de datos geogr�ficos?"
* **p03.h1.c**: de tipo factor(S�/No), respuesta "Pol�tica open data" a la pregunta 3 "�D�nde se enmarca la gesti�n de datos geogr�ficos?"
* **p04.h1**: de tipo car�cter, respuesta a la pregunta 4 "�C�mo se gestionan los datos geogr�ficos?"
* **p05.h1**: de tipo car�cter, respuesta a la pregunta 5 "�Qui�n ha participado en la puesta en marcha del repositorio de datos, sea un repositorio generalista o espec�fico para datos geogr�ficos?" 
* **p06.h1.a**: de tipo factor(S�/No), respuesta "Falta de recursos econ�micos"" a la Pregunta 6 "�Cu�l ser�a el motivo por el cual no se considera la gesti�n de datos geogr�ficos en los planes de la biblioteca?"
* **p06.h1.b**: de tipo factor(S�/No), respuesta "Falta de recursos humanos" a la Pregunta 6 "�Cu�l ser�a el motivo por el cual no se considera la gesti�n de datos geogr�ficos en los planes de la biblioteca?"
* **p06.h1.C**: de tipo factor(S�/No), respuesta "Falta de inter�s institucional" a la Pregunta 6 "�Cu�l ser�a el motivo por el cual no se considera la gesti�n de datos geogr�ficos en los planes de la biblioteca?"
* **p06.h1.d**: de tipo factor(S�/No), respuesta "No se detecta la necesidad" a la Pregunta 6 "�Cu�l ser�a el motivo por el cual no se considera la gesti�n de datos geogr�ficos en los planes de la biblioteca?"
* **p06.h1.e**: de tipo factor(S�/No), respuesta "Otros departamentos est� trabajando en ello, evitar duplicidad de esfuerzos" a la Pregunta 6 "�Cu�l ser�a el motivo por el cual no se considera la gesti�n de datos geogr�ficos en los planes de la biblioteca?"
* **p06.h1.f**: de tipo factor(S�/No), respuesta "No es prioritario" a la Pregunta 6 "�Cu�l ser�a el motivo por el cual no se considera la gesti�n de datos geogr�ficos en los planes de la biblioteca?"

## Variables Hip�tesis 2
* **p07.h2**: de tipo factor(S�/No), respuesta a la pregunta 7 "�Se tiene constancia desde la biblioteca de que grupos de investigaci�n, departamentos, etc., de la universidad est�n utilizando datos geogr�ficos?"
* **p08.h2**: de tipo factor(S�/No), respuesta a la pregunta 8 "�Hay establecido alg�n tipo de colaboraci�n/iniciativa para que la biblioteca participe en la gesti�n de los datos geogr�ficos utilizados en la universidad?"
* **p09.h2.a**: de tipo factor(S�/No), respuesta "Biblioteca como receptor de datos geograficos" a la Pregunta 9 "�Qu� tipo de colaboraci�n hay?
* **p09.h2.b**: de tipo factor(S�/No), respuesta "Desarrollo de sistemas/repositorios de gesti�n de datos geogr�ficos" a la Pregunta 9 "�Qu� tipo de colaboraci�n hay?
* **p09.h2.c**: de tipo factor(S�/No), respuesta "Cartoteca" a la Pregunta 9 "�Qu� tipo de colaboraci�n hay?
* **p09.h2.d**: de tipo factor(S�/No), respuesta "Ninguna" a la Pregunta 9 "�Qu� tipo de colaboraci�n hay?
* **p10.h2.a**: de tipo factor(S�/No), respuesta "Biblioteca como receptor de datos geogr�ficos" a la Pregunta 10 "�Qu� tipo de colaboraci�n ser�a deseable en el futuro?"
* **p10.h2.b**: de tipo factor(S�/No), respuesta "Desarrollo de sistemas/repositorios de gesti�n de datos geogr�ficos" a la Pregunta 10 "�Qu� tipo de colaboraci�n ser�a deseable en el futuro?"
* **p10.h2.c**: Respuesta "Participaci�n en iniciativas conjuntas sobre el uso de datos geogr�ficos" a la Pregunta 10 "�Qu� tipo de colaboraci�n ser�a deseable en el futuro?"

## Variables Hip�tesis 3
* **p11.h3**: de tipo factor(S�/No), respuesta a la pregunta 11 "�Dispone la biblioteca de personal (propio o exteno) para la gesti�n de datos geogr�ficos?"
* **p12.h3**: de tipo car�cter, respuesta a la Pregunta 12 "�A trav�s de que tipo de personal se gestionan las colecciones de datos geogr�ficos?"
* **p13.h3**: de tipo car�cter, respuesta a la Pregunta 13 "�Que perfil profesional tiene el personal que gestiona datos geogr�ficos en la biblioteca?"
* **p14.h3**: de tipo car�cter, respuesta a la Pregunta 14 "�Que perfil profesional consideras id�neo para gestionar datos geogr�ficos en la biblioteca?"

## Variables Hip�tesis 4
* **p15.h3.c01**: de tipo num�rico, valoraci�n de la competencia "servicio de referencia en datos geogr�ficos" de la pregunta 15 "Valoraci�n de las competencias que deber�a llevar a cabo un t�cnico que trabajara con datos geogr�ficos desde la biblioteca"
* **p15.h3.c02**: de tipo num�rico, valoraci�n de la Competencia "Actividades de enlace ente departamentos"
* **p15.h3.c03**: de tipo num�rico, valoraci�n de la Competencia "Participaci�n en grupos de investigaci�n internos sobre datos geograficos"
* **p15.h3.c04**: de tipo num�rico, valoraci�n de la Competencia "Desarrollo de proyectos sobre datos geograficos"
* **p15.h3.c05**: de tipo num�rico, valoraci�n de la Competencia "Alfabetizaci�n en datos geograficos y SIG"
* **p15.h3.c06**: de tipo num�rico, valoraci�n de la Competencia "Mantenimiento de la coleccion"
* **p15.h3.c07**: de tipo num�rico, valoraci�n de la Competencia "Metadatos geogr�ficos"
* **p15.h3.c08**: de tipo num�rico, valoraci�n de la Competencia "Identificaci�n de necesidades en datos geogr�ficos"
* **p15.h3.c09**: de tipo num�rico, valoraci�n de la Competencia "Actividades de difusi�n"
* **p15.h3.c10**: de tipo num�rico, valoraci�n de la Competencia "Promoci�n de expertise en visualizaci�n de datos"
* **p15.h3.c11**: de tipo num�rico, valoraci�n de la Competencia "Elaboraci�n de recursos de informaci�n sobre datos geogr�ficos y SIG"
* **p15.h3.c12**: de tipo num�rico, valoraci�n de la Competencia "Participaci�n en eventos como representate en materia de datos geogr�ficos del centro universitario"


