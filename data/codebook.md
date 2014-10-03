Cookbook
========================================================

Este documento contiene la lista de las variables y descripción de su significado en cuanto a la pregunta de la encuenta a la que hacen referencia. La sintaxis del nombre de las variables es la siguiente
* Pxx: indica el número de pregunta. Por ejemplo: P01 es la pregunta 1 de la encuesta
* Hx: Indica la hipótesis a la que hace referencia la pregunta.
    * H1: Políticas y recursos materiales
    * H2: Colaboración y acceso a datos geográficos
    * H3: Recursos humanos
* El tercer código (opcional) identifica las respuestas a una determinada pregunta. Ver en cada caso. 

## Variables generales

* **timestamp**: de tipo carácter, indica fecha y hora de introduccio de la encuesta
* **bib.nombre**: de tipo carácter, indica la denominación de la universidad a la que pertenece la biblioteca universitaria
* **bib.siglas**: de tipo carácter, indica las siglas de la universidad
* **bib.tipo**: de tipo factor (Publica/Privada), indica si es pública o privada
* **bib.ccaa**: de tipo factor, indica la Comunidad Autónoma

## Variables Hipótesis 1 
* **p02.h1**: de tipo factor(Sí/No), respuesta a la Pregunta 2 "¿Contempla la biblioteca la gestión de datos geográficos?"
* **p03.h1.a**: de tipo factor(Sí/No), respuesta "Gestión de colecciones" a la pregunta 3 "¿Dónde se enmarca la gestión de datos geográficos?"
* **p03.h1.b**: de tipo factor(Sí/No), respuesta "Gestión de datos de investigación" a la pregunta 3 "¿Dónde se enmarca la gestión de datos geográficos?"
* **p03.h1.c**: de tipo factor(Sí/No), respuesta "Política open data" a la pregunta 3 "¿Dónde se enmarca la gestión de datos geográficos?"
* **p04.h1**: de tipo carácter, respuesta a la pregunta 4 "¿Cómo se gestionan los datos geográficos?"
* **p05.h1**: de tipo carácter, respuesta a la pregunta 5 "¿Quién ha participado en la puesta en marcha del repositorio de datos, sea un repositorio generalista o específico para datos geográficos?" 
* **p06.h1.a**: de tipo factor(Sí/No), respuesta "Falta de recursos económicos"" a la Pregunta 6 "¿Cuál sería el motivo por el cual no se considera la gestión de datos geográficos en los planes de la biblioteca?"
* **p06.h1.b**: de tipo factor(Sí/No), respuesta "Falta de recursos humanos" a la Pregunta 6 "¿Cuál sería el motivo por el cual no se considera la gestión de datos geográficos en los planes de la biblioteca?"
* **p06.h1.C**: de tipo factor(Sí/No), respuesta "Falta de interés institucional" a la Pregunta 6 "¿Cuál sería el motivo por el cual no se considera la gestión de datos geográficos en los planes de la biblioteca?"
* **p06.h1.d**: de tipo factor(Sí/No), respuesta "No se detecta la necesidad" a la Pregunta 6 "¿Cuál sería el motivo por el cual no se considera la gestión de datos geográficos en los planes de la biblioteca?"
* **p06.h1.e**: de tipo factor(Sí/No), respuesta "Otros departamentos está trabajando en ello, evitar duplicidad de esfuerzos" a la Pregunta 6 "¿Cuál sería el motivo por el cual no se considera la gestión de datos geográficos en los planes de la biblioteca?"
* **p06.h1.f**: de tipo factor(Sí/No), respuesta "No es prioritario" a la Pregunta 6 "¿Cuál sería el motivo por el cual no se considera la gestión de datos geográficos en los planes de la biblioteca?"

## Variables Hipótesis 2
* **p07.h2**: de tipo factor(Sí/No), respuesta a la pregunta 7 "¿Se tiene constancia desde la biblioteca de que grupos de investigación, departamentos, etc., de la universidad estén utilizando datos geográficos?"
* **p08.h2**: de tipo factor(Sí/No), respuesta a la pregunta 8 "¿Hay establecido algún tipo de colaboración/iniciativa para que la biblioteca participe en la gestión de los datos geográficos utilizados en la universidad?"
* **p09.h2.a**: de tipo factor(Sí/No), respuesta "Biblioteca como receptor de datos geograficos" a la Pregunta 9 "¿Qué tipo de colaboración hay?
* **p09.h2.b**: de tipo factor(Sí/No), respuesta "Desarrollo de sistemas/repositorios de gestión de datos geográficos" a la Pregunta 9 "¿Qué tipo de colaboración hay?
* **p09.h2.c**: de tipo factor(Sí/No), respuesta "Cartoteca" a la Pregunta 9 "¿Qué tipo de colaboración hay?
* **p09.h2.d**: de tipo factor(Sí/No), respuesta "Ninguna" a la Pregunta 9 "¿Qué tipo de colaboración hay?
* **p10.h2.a**: de tipo factor(Sí/No), respuesta "Biblioteca como receptor de datos geográficos" a la Pregunta 10 "¿Qué tipo de colaboración sería deseable en el futuro?"
* **p10.h2.b**: de tipo factor(Sí/No), respuesta "Desarrollo de sistemas/repositorios de gestión de datos geográficos" a la Pregunta 10 "¿Qué tipo de colaboración sería deseable en el futuro?"
* **p10.h2.c**: Respuesta "Participación en iniciativas conjuntas sobre el uso de datos geográficos" a la Pregunta 10 "¿Qué tipo de colaboración sería deseable en el futuro?"

## Variables Hipótesis 3
* **p11.h3**: de tipo factor(Sí/No), respuesta a la pregunta 11 "¿Dispone la biblioteca de personal (propio o exteno) para la gestión de datos geográficos?"
* **p12.h3**: de tipo carácter, respuesta a la Pregunta 12 "¿A través de que tipo de personal se gestionan las colecciones de datos geográficos?"
* **p13.h3**: de tipo carácter, respuesta a la Pregunta 13 "¿Que perfil profesional tiene el personal que gestiona datos geográficos en la biblioteca?"
* **p14.h3**: de tipo carácter, respuesta a la Pregunta 14 "¿Que perfil profesional consideras idóneo para gestionar datos geográficos en la biblioteca?"

## Variables Hipótesis 4
* **p15.h3.c01**: de tipo numérico, valoración de la competencia "servicio de referencia en datos geográficos" de la pregunta 15 "Valoración de las competencias que debería llevar a cabo un técnico que trabajara con datos geográficos desde la biblioteca"
* **p15.h3.c02**: de tipo numérico, valoración de la Competencia "Actividades de enlace ente departamentos"
* **p15.h3.c03**: de tipo numérico, valoración de la Competencia "Participación en grupos de investigación internos sobre datos geograficos"
* **p15.h3.c04**: de tipo numérico, valoración de la Competencia "Desarrollo de proyectos sobre datos geograficos"
* **p15.h3.c05**: de tipo numérico, valoración de la Competencia "Alfabetización en datos geograficos y SIG"
* **p15.h3.c06**: de tipo numérico, valoración de la Competencia "Mantenimiento de la coleccion"
* **p15.h3.c07**: de tipo numérico, valoración de la Competencia "Metadatos geográficos"
* **p15.h3.c08**: de tipo numérico, valoración de la Competencia "Identificación de necesidades en datos geográficos"
* **p15.h3.c09**: de tipo numérico, valoración de la Competencia "Actividades de difusión"
* **p15.h3.c10**: de tipo numérico, valoración de la Competencia "Promoción de expertise en visualización de datos"
* **p15.h3.c11**: de tipo numérico, valoración de la Competencia "Elaboración de recursos de información sobre datos geográficos y SIG"
* **p15.h3.c12**: de tipo numérico, valoración de la Competencia "Participación en eventos como representate en materia de datos geográficos del centro universitario"


