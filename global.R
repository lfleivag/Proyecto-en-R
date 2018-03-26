#install.packages('gds')
library(gds)
library(ggplot2)
library(plotly)
###########################
####LECTURA DE base#######

base <- read.csv(file = '2014_VehículosMatriculadosBDD.csv', 
                 sep = ',', fileEncoding = 'latin1', header = T)
View(head(base))
str(base)
is.na(list(base))
###########################

###ANALISIS DESCRIPTIVO VARIABLE TONELAJE Y CREACION DE NIVELES ####
max(base$TONELAJE)
TonAlto <- subset(x = base, base$TONELAJE >=30, select = 'TONELAJE')
TonMedio <- subset(base, base$TONELAJE <30 & base$TONELAJE > 15, select = 'TONELAJE')
TonBajo <- subset(base, base$TONELAJE <= 15, select = 'TONELAJE')
freq = c(length(TonAlto$TONELAJE), length(TonMedio$TONELAJE), length(TonBajo$TONELAJE))
tablaTon<- gds(ll = c(0,15,30), ul = c(14.99,29.99,max(base$TONELAJE)), freq)

base[base$TONELAJE<= 15,"NIVELES_TONALAJE"]<- "BAJO"
base[(base$TONELAJE<30 & base$TONELAJE> 15),"NIVELES_TONALAJE"]<-"MEDIO"
base[base$TONELAJE>=30,"NIVELES_TONALAJE"]<- "ALTO"
############################################
##TABLES PARA LOS GRAFICOS#################
prov <- table(base$PROVINCIA)
str(prov)
asien<- table(base$ASIENTOS)
serv <-table(base$SERVICIO)
comb <- table(base$COMBUSTIBLE)
marc <- table(base$MARCA)
clas <- table(base$CLASE)
Ton <- table(base$NIVELES_TONALAJE)

lista1 <- list('PROVINCIA'= prov, 'SERVICIO'=serv, 'COMBUSTIBLE'= comb,
               'MARCA'= marc, 'CLASE' = clas, 'TONELAJE'= Ton)

###################
Opciones <- names(base[c(-7,-9,-10)])

###########################
a <- names(prov)
##########################

###

