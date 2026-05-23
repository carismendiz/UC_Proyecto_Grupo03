
# =============================================
###### Universidad Continental #################
# =============================================
###### SUBIR DASHBOARD A SHINY #################
#*Curso : Herramientas Informáticas I
#*Prof. : Joel Turco Quinto
#*Tema  : Dashboard Gapminder - América (PIBpc)
#*Integrantes : 
#*Cesar Paul Arismendiz Gabino
#*Romina Raquel Gavancho Valderrama
#*Yomira Esther Quispe Castillón
# =============================================

install.packages("rsconnect")

library(rsconnect)

rsconnect::setAccountInfo(name='carismendiz',
                          token='5AFE656B4E7370C3A97D8B3958E73570',
                          secret='euAsMyXm90Vtx9Jd6KO/hdoI911wArtu52RJ1nfb')

rsconnect::deployApp("C:/Users/CESAR ARISMENDIZ/Dashboard")

rlang::last_trace()

