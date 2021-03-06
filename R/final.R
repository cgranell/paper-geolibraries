##################
library(ggplot2)## ggplot

#setwd("C:/Users/cgranell/Data/MyCode/papers-geolibraries")


# carga los datos procesados de la encuesta
url <- "https://raw.githubusercontent.com/cgranell/paper-geolibraries/master/data/data-survey-clean.csv"
data <- read.csv(url, colClasses="character")

dim(data)
# 28 obs. of 43 variables

names(data)

# conversion de tipos de datos, ya que todas las variables se han cargado como de tipo caracter
data$X <- as.integer(data$X)
data[, c("bib.tipo")] <- as.factor(data[, c("bib.tipo")] )
data[, c("bib.ccaa")] <- as.factor(data[, c("bib.ccaa")] )
data[, c("p02.h1")] <- as.factor(data[, c("p02.h1")] )
data[, c("p03.h1.a")] <- as.factor(data[, c("p03.h1.a")] )
data[, c("p03.h1.b")] <- as.factor(data[, c("p03.h1.b")] )
data[, c("p03.h1.c")] <- as.factor(data[, c("p03.h1.c")] )
data$p06.h1.a <- as.factor(data$p06.h1.a)
data$p06.h1.b <- as.factor(data$p06.h1.b)
data$p06.h1.c <- as.factor(data$p06.h1.c)
data$p06.h1.d <- as.factor(data$p06.h1.d)
data$p06.h1.e <- as.factor(data$p06.h1.e)
data$p06.h1.f <- as.factor(data$p06.h1.f)
data[, c("p07.h2")] <- as.factor(data[, c("p07.h2")] )
data$p08.h2 <- as.factor(data$p08.h2)
data$p09.h2.a <- as.factor(data$p09.h2.a)
data$p09.h2.b <- as.factor(data$p09.h2.b)
data$p09.h2.c <- as.factor(data$p09.h2.c)
data$p09.h2.d <- as.factor(data$p09.h2.d)
data$p10.h2.a <- as.factor(data$p10.h2.a)
data$p10.h2.b <- as.factor(data$p10.h2.b)
data$p10.h2.c <- as.factor(data$p10.h2.c)
data$p11.h3 <- as.factor(data$p11.h3)
data$p15.h3.c01 <- as.numeric(data$p15.h3.c01)
data$p15.h3.c02 <- as.numeric(data$p15.h3.c02)
data$p15.h3.c03 <- as.numeric(data$p15.h3.c03)
data$p15.h3.c04 <- as.numeric(data$p15.h3.c04)
data$p15.h3.c05 <- as.numeric(data$p15.h3.c05)
data$p15.h3.c06 <- as.numeric(data$p15.h3.c06)
data$p15.h3.c07 <- as.numeric(data$p15.h3.c07)
data$p15.h3.c08 <- as.numeric(data$p15.h3.c08)
data$p15.h3.c09 <- as.numeric(data$p15.h3.c09)
data$p15.h3.c10 <- as.numeric(data$p15.h3.c10)
data$p15.h3.c11 <- as.numeric(data$p15.h3.c11)
data$p15.h3.c12 <- as.numeric(data$p15.h3.c12)


### Figura 1. Motivos de la falta de planes de gesti�n de los datos geogr�ficos en las bibliotecas (Bloque 1). 
### Distribuci�n de frecuencias de los motivos principales por los que la gesti�n de 
### datos geogr�ficos no se considera dentro de los planes de las bibliotecas encuestas (N=22)

# Universidades que no contemplan un plan para gesti�n de datos geograficos
plan.no <- data[data$p02.h1=="No", c("bib.siglas", "bib.tipo", 
                                     "p06.h1.a", "p06.h1.b", "p06.h1.c", 
                                     "p06.h1.d", "p06.h1.e", "p06.h1.f")]
nrow(plan.no) # N=22

p06 <- numeric(6)
names(p06) <- c("Problemas econ�micos", "Falta de recursos humanos", "Falta de inter�s", "No hay necesidad", "Ya lo hacen otros", "No son prioritarios")
p06[1] <- nrow(subset(plan.no, p06.h1.a=="S�"))     # 'subset' returns a data.frame
p06[2] <- nrow(subset(plan.no, p06.h1.b=="S�"))     # 'subset' returns a data.frame
p06[3] <- nrow(subset(plan.no, p06.h1.c=="S�"))     # 'subset' returns a data.frame
p06[4] <- nrow(subset(plan.no, p06.h1.d=="S�"))     # 'subset' returns a data.frame
p06[5] <- nrow(subset(plan.no, p06.h1.e=="S�"))     # 'subset' returns a data.frame
p06[6] <- nrow(subset(plan.no, p06.h1.f=="S�"))     # 'subset' returns a data.frame

p06.df <- data.frame(
    reason = names(p06),
    count = p06)

# copia parametros por defectos 
opar <- par() 
par(mfrow=c(1, 1), mar=c(5, 5, 4, 2) + 0.1)

# abre jpeg
ppi=300
jpeg(filename = "../figuras/fig1.jpg",width=5*ppi, height=4*ppi, res=ppi, quality=100)

ggplot(p06.df, aes(x=reason, y=count)) + 
    geom_bar(stat="identity", width=0.7, colour="black", fill="lightblue") +
    theme_bw(base_family = "Times", base_size=11) + 
    labs(x = "") + 
    #labs(x = "Motivos de la falta de planes de gesti�n de datos geogr�ficos") + 
    labs(y = "N�mero de respuestas") + 
    scale_y_continuous(breaks=c(seq(0,12,2))) +
    geom_text(aes(label=count), vjust=1.5, colour="black", size=2.5) + # Added labels    
    theme(axis.text.x = element_text(angle=30, hjust=1, vjust=1)) + # Rotating the text 30 degrees
    theme(panel.grid.major.x = element_blank(),
          panel.grid.minor.x = element_blank()) # Hide the vertical grid lines (which intersect with the x-axis)

# cierra jpeg
dev.off()
# restaura params defecto
par(opar)   

### Figura 2. Tipos de colaboraci�n deseables entre las bibliotecas y otros departamentos de la universidad
### Distribuci�n de frecuencias de los tipos de colaboraci�n deseables entre las bibliotecas y otros
### departamentos de la universidad, por parte de las bibliotecas encuestas que no contemplan un 
### plan de gesti�n de datos geogr�ficos (N=16). 

# Universidades que saben que otros departamentos usan GI pero no colabora con ellos
colabora.no <- data[data$p07.h2=="S�", c("bib.siglas", "bib.tipo", "p10.h2.a", "p10.h2.b", "p10.h2.c")]
nrow(colabora.no) # N=16

p10 <- numeric(3)
names(p10) <- c("Biblioteca como receptor \nde datos geogr�ficos", "Desarrollo de sistemas/repositorios \nde gesti�n de datos geogr�ficos", "Participaci�n en iniciativas conjuntas \nsobre el uso de datos geogr�ficos")
p10[1] <- nrow(subset(colabora.no, p10.h2.a=="S�"))     # 'subset' returns a data.frame
p10[2] <- nrow(subset(colabora.no, p10.h2.b=="S�"))     # 'subset' returns a data.frame
p10[3] <- nrow(subset(colabora.no, p10.h2.c=="S�"))     # 'subset' returns a data.frame

p10.df <- data.frame(
    reason = names(p10),
    count = p10)

# copia parametros por defectos 
opar <- par() 
par(mfrow=c(1, 1), mar=c(5, 5, 4, 2))

# abre jpeg
ppi=300
jpeg(filename = "../figuras/fig2.jpg",width=5*ppi, height=4*ppi, res=ppi, quality=100)

ggplot(p10.df, aes(x=reason, y=count)) + 
    geom_bar(stat="identity", width=0.5, colour="black", fill="lightblue") +
    coord_flip() + 
    theme_bw(base_family = "Times", base_size=11) + 
    labs(x = "") + 
    #labs(x = "Colaboraci�n deseable en cuanto a datos geogr�ficos") + 
    labs(y = "N�mero de respuestas") + 
    scale_y_continuous(breaks=c(seq(0,10,2))) +
    geom_text(aes(label=count), hjust=1.5, colour="black", size=2.5) + # Added labels    
    theme(panel.grid.major.y = element_blank(),
          panel.grid.minor.y = element_blank()) # Hide the horizontal grid lines (which intersect with the x-axis)


dev.off()
# restaura params defecto
par(opar)   


### Figura 3. Perfil profesional id�neo para la gesti�n de datos geogr�ficos
### Distribuci�n de frecuencias sobre el perfil profesional id�neo encargado de la gesti�n de 
### datos geogr�ficos, por parte del total de bibliotecas encuestas (N=28)

# Perfil deseable
perfil <- sapply(table(data[, c("p14.h3")]), function (x) {ifelse (x[1]>1, x, NA)})
otros <- sum(is.na(perfil))

p14 <- numeric(7)
p14 <- as.numeric(perfil[1:6])
p14[7] <- otros
names(p14) <- c("Bibliotecario con formaci�n \nen gesti�n de datos de investigaci�n", 
                "Bibliotecario con formaci�n \nen gesti�n de datos geogr�ficos",
                "Bibliotecario especializado \nen mapas y cartograf�a",
                "Bibliotecario generalista",
                "Especialista en datos geogr�ficos \ny/o sistemas de informaci�n geogr�fica",
                "Especialista en datos geogr�ficos \ny/o sistemas de informaci�n geogr�fica \ncon formaci�n en Biblioteconom�a",
                "No sabe, no contesta")

p14.df <- data.frame(
    reason = names(p14),
    count = p14, 
    profile = c("DOCU", "DOCU", "DOCU", "DOCU", "SIG", "SIG", NA))

# copia parametros por defecto 
opar <- par() 
par(mfrow=c(1, 1), mar=c(5, 5, 4, 2))

# abre jpeg
ppi=300
jpeg(filename = "../figuras/fig3.jpg",width=6*ppi, height=5*ppi, res=ppi, quality=100)

ggplot(p14.df, aes(x=reason, y=count, fill=profile)) + 
    geom_bar(stat="identity", width=0.7, colour="black") +
    coord_flip() + 
    theme_bw(base_family = "Times", base_size=11) + 
    labs(x = "") + 
    #labs(x = "Perfil id�neo para la gesti�n de datos geogr�ficos") + 
    labs(y = "N�mero de respuestas") + 
    scale_y_continuous(breaks=c(seq(0,12,2))) +
    scale_fill_brewer("clarity", na.value="grey80") +
    geom_text(aes(label=count), hjust=2, colour="black", size=2.5) + # Added labels    
    #theme(axis.text.x = element_text(angle=0, hjust=1, vjust=1)) # Rotating the text 30 degrees
    theme(panel.grid.major.y = element_blank(),
          panel.grid.minor.y = element_blank()) + # Hide the horizontal grid lines
    theme(legend.position="none") # remove legend

dev.off()
# restaura params defecto
par(opar)   


# Figura 4. Valoraci�n de las competencias deseables del perfil geobibliotecario
### Conjunto de competencias desglosadas en funci�n de la valoraci�n recibida.  
### Cada una de las gr�ficas muestra el porcentaje de valoraci�n de una competencias 
### sobre el total de respuestas por competencia (N=28) 

url <- "https://raw.githubusercontent.com/cgranell/paper-geolibraries/master/data/comp.csv"
competences <- read.csv(url, colClasses="character")
list.comp = c("C1", "C2", "C3", "C4", "C5", "C6", "C7","C8","C9","C10","C11","C12")

competences$X.id <- as.integer(competences$X.id)
competences$count <- as.integer(competences$count)
competences$scale.num <- as.integer(competences$scale.num)
competences$count.weigthed <- competences$count * competences$scale.num
competences$type <- factor(competences$type, 
                           list.comp, 
                           ordered=TRUE)
competences$scale <- factor(competences$scale, 
                            c("No Importante", 
                              "Poco Importante", 
                              "Neutro", 
                              "Importante", 
                              "Muy Importante"), 
                            ordered=TRUE)

y <- numeric()
for (x in list.comp) {
    newItems = prop.table(competences[competences$type==x, c("count")])
    y <- c(y,newItems)
}
competences$percent <- round(y*100,2)


# copia parametros por defectos 
opar <- par() 
par(mfrow=c(1, 1), mar=c(5, 5, 4, 2))

# abre jpeg
ppi=300
jpeg(filename = "../figuras/fig4.jpg",width=6*ppi, height=5*ppi, res=ppi, quality=100)

ggplot(competences, aes(x=scale, y=percent, fill=scale)) + 
    geom_bar(stat="identity", width=0.7, colour="black") +
    facet_wrap( ~ type) +
    facet_wrap( ~ type, nrow=3) +
    facet_wrap( ~ type, ncol=4) +
    coord_flip() + 
    #scale_fill_grey(start=0.6, end=0.2) +
    scale_fill_brewer("clarity") +
    theme_bw(base_family = "Times", base_size=11) + 
    labs(x = "Escala de valoraci�n") + 
    labs(y = "Porcentaje de valoraci�n") +
    theme(panel.grid.major.y = element_blank(),
          panel.grid.minor.y = element_blank()) + # Hide the horizontal grid lines
    theme(legend.position="none") # remove legend


# cerrar jpeg
dev.off()
# restaura params defecto
par(opar)   
