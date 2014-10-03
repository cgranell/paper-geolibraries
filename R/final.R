##################setwd("C:/Users/cgranell/Downloads/papers-redc/data")

# carga los datos procesados de la encuesta
url <- "https://github.com/cgranell/papers-redc-geolibrarian/raw/master/data/data-survey-clean.csv"
data <- read.csv(url, colClasses="character")

dim(data)
# 28 obs. of 43 variables

names(data)

# conversion de tipos de datos, ya que todas las variables se han cargado como de tipo caracter
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


### Figura 1.
### Distribuci�n de frecuencias de los motivos principales por los que la gesti�n de 
### datos geogr�ficos no se considera dentro de los planes de las bibliotecas encuestas (N=28)

# Universidades que no contemplan un plan para gesti�n de datos geograficos
plan.no <- data[data$p02.h1=="No", c("bib.siglas", "bib.tipo", "p06.h1.a", "p06.h1.b", "p06.h1.c", "p06.h1.d", "p06.h1.e", "p06.h1.f")]
nrow(plan.no)

# copia parametros por defectos 
opar <- par() 

# abre jpeg
jpeg(filename = "fig1.jpeg", quality=100)

p06 <- numeric(6)
names(p06) <- letters[1:6]
p06[1] <- nrow(subset(plan.no, p06.h1.a=="S�"))     # 'subset' returns a data.frame
p06[2] <- nrow(subset(plan.no, p06.h1.b=="S�"))     # 'subset' returns a data.frame
p06[3] <- nrow(subset(plan.no, p06.h1.c=="S�"))     # 'subset' returns a data.frame
p06[4] <- nrow(subset(plan.no, p06.h1.d=="S�"))     # 'subset' returns a data.frame
p06[5] <- nrow(subset(plan.no, p06.h1.e=="S�"))     # 'subset' returns a data.frame
p06[6] <- nrow(subset(plan.no, p06.h1.f=="S�"))     # 'subset' returns a data.frame

par(mfrow=c(1, 1), mar=c(5, 5, 4, 2) + 0.1)

x <- barplot(p06, 
             main="Motivos de la falta de plan de gesti�n de datos geogr�ficos", 
             xlab="Motivos principales", 
             ylab="Frecuencia", 
             col=gray(0:6 / 6), 
             legend = c("(a) Econ�micos", "(b) Humanos", "(c) Inter�s", "(d) Necesidad", "(e) Otros ya lo hacen", "(f) No hay prioridad"), 
             border=NA, 
             beside=TRUE, 
             xlim=c(0,8), 
             args.legend = list(x = "topleft", bty = "n"))
text(x, p06+0.1, labels=as.character(p06), pos=3, xpd=TRUE, col="black", cex=.7)

# cierra jpeg
dev.off()
# restaura params defecto
par(opar)   

### Figura 2.
### Distribuci�n de frecuencias de los tipos de colaboraci�n deseables entre las bibliotecas y otros
### departamentos de la universidad, por parte de las bibliotecas encuestas que no contemplan un 
### plan de gesti�n de datos geogr�ficos (N=16). 

# Universidades que saben que otros departamentos usan GI pero no colabora con ellos
colabora.no <- data[data$p07.h2=="S�", c("bib.siglas", "bib.tipo", "p10.h2.a", "p10.h2.b", "p10.h2.c")]
nrow(colabora.no)

# copia parametros por defectos 
opar <- par() 

jpeg(filename = "fig2.jpeg", quality=100)

p10 <- numeric(3)
names(p10) <- letters[1:3]
p10[1] <- nrow(subset(colabora.no, p10.h2.a=="S�"))     # 'subset' returns a data.frame
p10[2] <- nrow(subset(colabora.no, p10.h2.b=="S�"))     # 'subset' returns a data.frame
p10[3] <- nrow(subset(colabora.no, p10.h2.c=="S�"))     # 'subset' returns a data.frame

par(mfrow=c(1, 1), mar=c(5, 5, 4, 2))

x <- barplot(p10, 
             main="Colaboraci�n deseable en cuanto a datos geogr�ficos", 
             xlab="Tipo de colaboraci�n", 
             ylab="Frecuencia", 
             col=gray(0:3 / 3), 
             legend = c("(a) Receptor de datos", "(b) Desarrollo repositorios", "(c) Iniciativas conjuntas"), 
             border=NA, 
             beside=TRUE, 
             xlim=c(0,8), 
             args.legend = list(x = "topright", bty = "n"))
text(x, p10+0.1, labels=as.character(p10), pos=3, xpd=TRUE, col="black", cex=.7)

dev.off()
# restaura params defecto
par(opar)   


### Figura 3.
### Distribuci�n de frecuencias sobre el perfil profesional id�neo encargado de la gesti�n de 
### datos geogr�ficos, por parte del total de bibliotecas encuestas (N=28)

# Perfil deseable
perfil <- sapply(table(data[, c("p14.h3")]), function (x) {ifelse (x[1]>1, x, NA)})
otros <- sum(is.na(perfil))

# copia parametros por defecto 
opar <- par() 

jpeg(filename = "fig3.jpeg", quality=100)

p14 <- as.numeric(perfil)
p14[7] <- otros
names(p14) <- letters[1:7]

par(mfrow=c(1, 1), mar=c(5, 5, 4, 2))

x <- barplot(p14[1:7], 
             main="Perfil id�neo para la gesti�n de datos geogr�ficos", 
             xlab="Perfiles", 
             ylab="Frecuencia", 
             col=gray(0:7 / 7), 
             legend = c("(a) Bibliotecario + datos inv.", "(b) Bibliotecario + datos geo", "(c) Bibliotecario + mapas", "(d) Bibliotecario", "(e) Esp. datos geo", "(f) Esp. datos geo + biblio", "(g) NS/NC"), 
             border=NA, 
             beside=TRUE, 
             xlim=c(0,8), 
             args.legend = list(x = "topright", bty = "n"))
text(x, p14[1:7]+0.1, labels=as.character(p14[1:7]), pos=3, xpd=TRUE, col="black", cex=.7)

dev.off()
# restaura params defecto
par(opar)   


# Figura 4.
### Conjunto de competencias desglosadas en funci�n de la valoraci�n recibida.  
### Cada una de las gr�ficas muestra el porcentaje de valoraci�n de una competencias 
### sobre el total de respuestas por competencia (N=28) 

library(lattice)

url <- "https://github.com/cgranell/papers-redc-geolibrarian/raw/master/data/comp.csv"
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
                            c("No Importante", "Poco Importante", "Neutro", "Importante", "Muy Importante"), 
                            ordered=TRUE)

y <- numeric()
for (x in list.comp) {
    newItems = prop.table(competences[competences$type==x, c("count")])
    y <- c(y,newItems)
}
competences$percent <- round(y*100,2)

# copia parametros por defectos 
opar <- par() 

# abre jpeg
jpeg(filename = "fig4.jpeg", quality=100)

par(mfrow=c(1, 1), mar=c(5, 5, 4, 2))

barchart(scale~percent|type, data=competences, as.table = TRUE,
         xlab="Porcentaje de valoraci�n",
         layout = c(3, 4),
         col=gray(5:0 / 5),
         box.width=.7, 
         stack = TRUE,
         auto.key = list(space = "right"))

# cerrar jpeg
dev.off()
# restaura params defecto
par(opar)   