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


### Figura 1. Motivos de la falta de planes de gestión de los datos geográficos en las bibliotecas (Bloque 1). 
### Distribución de frecuencias de los motivos principales por los que la gestión de 
### datos geográficos no se considera dentro de los planes de las bibliotecas encuestas (N=22)

# Universidades que no contemplan un plan para gestión de datos geograficos
plan.no <- data[data$p02.h1=="No", c("bib.siglas", "bib.tipo", "p06.h1.a", "p06.h1.b", "p06.h1.c", "p06.h1.d", "p06.h1.e", "p06.h1.f")]
nrow(plan.no) # N=22

p06 <- numeric(6)
names(p06) <- c("Problemas económicos", "Falta de recursos humanos", "Falta de interés", "No hay necesidad", "Ya lo hacen otros", "No son prioritarios")
p06[1] <- nrow(subset(plan.no, p06.h1.a=="Sí"))     # 'subset' returns a data.frame
p06[2] <- nrow(subset(plan.no, p06.h1.b=="Sí"))     # 'subset' returns a data.frame
p06[3] <- nrow(subset(plan.no, p06.h1.c=="Sí"))     # 'subset' returns a data.frame
p06[4] <- nrow(subset(plan.no, p06.h1.d=="Sí"))     # 'subset' returns a data.frame
p06[5] <- nrow(subset(plan.no, p06.h1.e=="Sí"))     # 'subset' returns a data.frame
p06[6] <- nrow(subset(plan.no, p06.h1.f=="Sí"))     # 'subset' returns a data.frame

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
    geom_bar(stat="identity", width=0.7, colour="white", fill="grey80") +
    theme_bw(base_family = "Times", base_size=11) + 
    labs(x = "") + 
    #labs(x = "Motivos de la falta de planes de gestión de datos geográficos") + 
    labs(y = "Número de respuestas") + 
    scale_y_continuous(breaks=c(seq(0,12,2))) +
    geom_text(aes(label=count), vjust=1.5, colour="black", size=2) + # Added labels    
    theme(axis.text.x = element_text(angle=30, hjust=1, vjust=1)) # Rotating the text 30 degrees

# cierra jpeg
dev.off()
# restaura params defecto
par(opar)   

### Figura 2. Tipos de colaboración deseables entre las bibliotecas y otros departamentos de la universidad
### Distribución de frecuencias de los tipos de colaboración deseables entre las bibliotecas y otros
### departamentos de la universidad, por parte de las bibliotecas encuestas que no contemplan un 
### plan de gestión de datos geográficos (N=16). 

# Universidades que saben que otros departamentos usan GI pero no colabora con ellos
colabora.no <- data[data$p07.h2=="Sí", c("bib.siglas", "bib.tipo", "p10.h2.a", "p10.h2.b", "p10.h2.c")]
nrow(colabora.no) # N=16

p10 <- numeric(3)
names(p10) <- c("Biblioteca como receptor \nde datos geográficos", "Desarrollo de sistemas/repositorios \nde gestión de datos geográficos", "Participación en iniciativas conjuntas \nsobre el uso de datos geográficos")
p10[1] <- nrow(subset(colabora.no, p10.h2.a=="Sí"))     # 'subset' returns a data.frame
p10[2] <- nrow(subset(colabora.no, p10.h2.b=="Sí"))     # 'subset' returns a data.frame
p10[3] <- nrow(subset(colabora.no, p10.h2.c=="Sí"))     # 'subset' returns a data.frame

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
    geom_bar(stat="identity", width=0.7, colour="white", fill="grey80") +
    #coord_flip() + 
    theme_bw(base_family = "Times", base_size=11) + 
    labs(x = "") + 
    #labs(x = "Colaboración deseable en cuanto a datos geográficos") + 
    labs(y = "Número de respuestas") + 
    scale_y_continuous(breaks=c(seq(0,10,2))) +
    geom_text(aes(label=count), vjust=1.5, colour="black", size=2) + # Added labels    
    theme(axis.text.x = element_text(angle=30, hjust=1, vjust=1)) # Rotating the text 30 degrees


dev.off()
# restaura params defecto
par(opar)   


### Figura 3. Perfil profesional idóneo para la gestión de datos geográficos
### Distribución de frecuencias sobre el perfil profesional idóneo encargado de la gestión de 
### datos geográficos, por parte del total de bibliotecas encuestas (N=28)

# Perfil deseable
perfil <- sapply(table(data[, c("p14.h3")]), function (x) {ifelse (x[1]>1, x, NA)})
otros <- sum(is.na(perfil))

p14 <- numeric(7)
p14 <- as.numeric(perfil[1:6])
p14[7] <- otros
names(p14) <- c("Bibliotecario con formación \nen gestión de datos de investigación", 
                "Bibliotecario con formación \nen gestión de datos geográficos",
                "Bibliotecario especializado \nen mapas y cartografía",
                "Bibliotecario generalista",
                "Especialista en datos geográficos \ny/o sistemas de información geográfica",
                "Especialista en datos geográficos \ny/o sistemas de información geográfica \ncon formación en Biblioteconomía",
                "No sabe, no contesta")

p14.df <- data.frame(
    reason = names(p14),
    count = p14)


# copia parametros por defecto 
opar <- par() 
par(mfrow=c(1, 1), mar=c(5, 5, 4, 2))

# abre jpeg
ppi=300
jpeg(filename = "../figuras/fig3.jpg",width=6*ppi, height=5*ppi, res=ppi, quality=100)

ggplot(p14.df, aes(x=reason, y=count)) + 
    geom_bar(stat="identity", width=0.7, colour="white", fill="grey80") +
    coord_flip() + 
    theme_bw(base_family = "Times", base_size=11) + 
    labs(x = "") + 
    #labs(x = "Perfil idóneo para la gestión de datos geográficos") + 
    labs(y = "Número de respuestas") + 
    scale_y_continuous(breaks=c(seq(0,12,2))) +
    geom_text(aes(label=count), hjust=2, colour="black", size=2) + # Added labels    
    theme(axis.text.x = element_text(angle=0, hjust=1, vjust=1)) # Rotating the text 30 degrees

dev.off()
# restaura params defecto
par(opar)   


# Figura 4. Valoración de las competencias deseables del perfil geobibliotecario
### Conjunto de competencias desglosadas en función de la valoración recibida.  
### Cada una de las gráficas muestra el porcentaje de valoración de una competencias 
### sobre el total de respuestas por competencia (N=28) 

library(lattice)

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
par(mfrow=c(1, 1), mar=c(5, 5, 4, 2))

# abre jpeg
ppi=300
jpeg(filename = "../figuras/fig4.jpg",width=6*ppi, height=5*ppi, res=ppi, quality=100)


ggplot(competences, aes(x=scale, y=percent, fill=scale)) + 
    geom_bar(stat="identity", width=0.7, colour="white") +
    facet_wrap( ~ type) +
    facet_wrap( ~ type, nrow=3) +
    facet_wrap( ~ type, ncol=4) +
    coord_flip() + 
    scale_fill_grey(start=0.6, end=0.2) +
    #scale_fill_brewer(palette="Oranges") +
    theme_bw(base_family = "Times", base_size=11) + 
    labs(x = "Escala de valoración") + 
    labs(y = "Porcentaje de valoración") +
    theme(legend.position="none") # remove legend
    
# cerrar jpeg
dev.off()
# restaura params defecto
par(opar)   
