
<h2 align="center">DASHBOARD GAPMINDER-AMÉRICA - GRUPO 03</h1>

Curso : Herramientas Informáticas I

Prof. : Joel Turco Quinto

Tema  : Dashboard Gapminder - América (PIBpc)

Integrantes : 

-Cesar Paul Arismendiz Gabino

-Romina Raquel Gavancho Valderrama

-Yomira Esther Quispe Castillón

**INTRODUCCIÓN**

El dashboard elaborado es una aplicación interactiva desarrollada bajo los paquetes de R: Shiny y la interfaz estandarizada de shinydashboard. Su propósito fundamental es guiar al usuario desde una vista animada de los datos, para conocer la evolución de los datos, hasta presentar resultados econométricos relacionados a la relación entre la Esperanza de Vida y el Crecimiento Económico. 

<h3 align="center">Figura 01 Vista General de Dashboard</h1>

<img width="1347" height="662" alt="1 1" src="https://github.com/user-attachments/assets/b6de101d-757f-4400-b8e3-ae8cf541dba8" />


**1.- Objetivo General**

Visualizar y modelar de forma interactiva la relación histórica entre el crecimiento económico (PBIpc), el comportamiento demográfico (Población) y el bienestar social (Esperanza de vida) en los países del continente americano desde 1970, utilizando los datos de la fundación Gapminder.

**2.- Objetivos Específicos**

+ Evaluar de manera dinámica el promedio regional y nacional de la esperanza de vida, el PIB per cápita y el volumen
  poblacional según el año seleccionado.

+ Comparar las brechas de desarrollo existentes entre América del Norte, Centroamérica, América del Sur y El Caribe.

+ Proveer herramientas cuantitativas (correlación de Pearson y regresión lineal) para estimar el impacto técnico y porcentual
  del PBIpc sobre la Esperanza de Vida. 

   
**3.- Variables utulizadas en el Dashboard**

| Variable | Tipo de Dato | Descripción | Origen / Transformación |
| :--- | :--- | :--- | :--- |
| **País** | Carácter (`character`) | Nombre oficial del país analizado. | Convertido desde la variable original `country`. |
| **Continente** | Carácter (`character`) | Continente de pertenencia. En este dashboard está unificado como "América". | Filtrado y renombrado desde `continent`. |
| **Año** | Entero (`integer`) | Año de registro de la observación (Serie histórica desde 1970 hasta 2007). | Renombrado desde `year`. |
| **Esperanza_de_vida**| Numérico (`numeric`) | Promedio de años que se espera que viva una persona al nacer. | Renombrado desde `lifeExp`. |
| **Población** | Numérico (`numeric`) | Número total de habitantes del país en el año correspondiente. | Renombrado desde `pop`. |
| **PIBpc** | Numérico (`numeric`) | Producto Interno Bruto per Cápita medido en dólares (USD). | Renombrado desde `gdpPercap`. |
| **Subregion** | Carácter (`character`) | Clasificación geográfica interna creada (*América del Norte, Centroamérica, América del Sur, El Caribe*). | Generada en R mediante condicionales `case_when`. |

**4.- Descripción y Análisis de las Pestañas y sus Gráficos**

+ **Pestaña 1: Desarrollo y Salud**

   <h3 align="center">Figura 02 Evolución del PIB per Cápita vs. Esperanza de Vida (Animación)</h1>

<img width="1044" height="578" alt="2 1" src="https://github.com/user-attachments/assets/2e448156-e024-4cd3-9ccb-d5287aa57364" />

Tipo: Gráfico de dispersión (Scatter Plot) animado en el tiempo con escala logarítmica en el eje X y tamaño de burbuja proporcional a la población.

Análisis: Permite observar la trayectoria de los países a lo largo de los años. Al usar una escala logarítmica en el PIB, evita que países con ingresos extremadamente altos (como EE. UU. o Canadá) distorsionen visualmente al resto. La animación ayuda a verificar si la hipótesis de que "a mayor riqueza, mayor esperanza de vida" se cumple de forma constante a través del tiempo.

+ **Pestaña 2: Ranking y Competitividad**

 <h3 align="center"> Figura 03 Top Países por PIB per Cápita (USD)</h1>

<p align="center">
<img width="518" height="531" alt="3" src="https://github.com/user-attachments/assets/4fe457f8-8863-4c16-8c00-0dfd4d7e6024" />
</p>
Análisis: Identifica los paíse líderes del continente para el año seleccionado. La segmentación por colores ayuda a notar si una subregión específica (por ejemplo, América del Norte) domina los primeros puestos frente a otras regiones.

<h3 align="center"> Figura 04 Dispersión entre PIBpc vs. Salud (Análisis de Cuadrantes)</h1>

<p align="center">
<img width="519" height="534" alt="4" src="https://github.com/user-attachments/assets/8f856d49-e07c-4c0e-bf5b-343fc7878d67" />
</p>

Análisis: Divide a los países en 4 cuadrantes definidos por el promedio de los datos filtrados:

- Alto PIBpc / Alta EV (Verde):   Países eficientes y desarrollados.
- Bajo PIBpc / Alta EV (Azul):    Países con alta eficiencia social (logran buena salud con presupuestos ajustados).
- Alto PIBpc / Baja EV (Naranja): Desigualdad económica (riqueza mal distribuida que no impacta en salud).
- Bajo PIBpc / Bajo EV (Rojo):    Zonas con urgencia de intervención en políticas públicas.

<h3 align="center"> Figura 05 Distribución de la Esperanza de Vida (Boxplot)</h1>

<img width="1054" height="474" alt="5 1" src="https://github.com/user-attachments/assets/d97be808-cf4c-449f-9252-7d92f0271380" />

Análisis: Muestra la variabilidad y dispersión interna de la esperanza de vida dentro de cada subregión. Permite identificar la asimetría, la mediana real de cada zona y detectar outliers (países que están extremadamente rezagados o adelantados en comparación con sus vecinos geográficos).

+ **Pestaña 3: Mapa e Histórico**

<h3 align="center"> Figura 06 Distribución Geográfica de la Esperanza de Vida</h1>

<img width="1050" height="584" alt="6" src="https://github.com/user-attachments/assets/ed7d8e56-1222-493d-8ab7-ec9b66436045" />

Análisis: Permite identificar patrones geoespaciales inmediatos (por ejemplo, norte-sur o brechas críticas en la zona de El Caribe).

<h3 align="center"> Figura 07 Evolución Histórica del PIB per Cápita Promedio (USD)</h1>

<img width="1052" height="482" alt="7" src="https://github.com/user-attachments/assets/e7d3c10c-4f70-4a9b-8621-bb4172c7ec08" />

Análisis: Si se filtra un país, muestra su trayectoria individual de crecimiento o crisis económica. Si se seleccionan "Todos", muestra la evolución de las subregiones, permitiendo identificar momentos históricos de estancamiento, caídas o periodos de bonanza regional.

+ **Pestaña 4: Estadísticas Descriptivas**
  
<h3 align="center"> Tablas de resumen estadísticos por subregión y país</h1>

<img width="1056" height="572" alt="8" src="https://github.com/user-attachments/assets/851e4322-1af3-4c51-8b52-5b9c842953c9" />

<img width="1057" height="625" alt="9" src="https://github.com/user-attachments/assets/228556c4-b549-4eb6-98f1-ecdfa0b8594d" />

Análisis: Calcula automáticamente la tendencia central (Promedio, Mediana), la dispersión por cuartiles y el Coeficiente de Variación (%). Este último indicador permite entender qué tan homogéneos o heterogéneos son los datos internamente en cada subregión o país a lo largo de toda su historia.

<h3 align="center"> Figura 08 Correlaciones de Pearson</h1>

<img width="1052" height="561" alt="10" src="https://github.com/user-attachments/assets/18087e55-2284-4337-b6e8-0e65d675d25b" />

Análisis: Cuantifica el nivel de asociación lineal entre el PIB, la población y la esperanza de vida a través de coeficientes numéricos que oscilan entre -1 y 1. Permite validar de forma estadística la relación entre las variables indicadas.

+ **Pestaña 5: Modelo de Regresión Log-Log**

<h3 align="center"> Modelo de Regresión Log-Log</h1>

<img width="1053" height="244" alt="z1" src="https://github.com/user-attachments/assets/d724aca2-1dde-4268-86ae-787aef72b1ae" />

<img width="1050" height="603" alt="z2" src="https://github.com/user-attachments/assets/233ffa7b-16db-4089-8a9f-533a44e44228" />

Análisis: Ejecuta un modelo econométrico de regresión lineal. El coeficiente B1 calculado en el cuadro superior representa la elasticidad. Es decir, indica en qué porcentaje se incrementa la esperanza de vida en América por cada 1% que aumenta el PIB per cápita.
Por su parte el R2 (Bondad de Ajuste) indica qué porcentaje de la variabilidad total de la esperanza de vida en el continente es explicada únicamente por el nivel de PIB per cápita.

**5.- Limitaciones**

+ La limitación más evidente radica en la temporalidad de la base de datos gapminder, cuya serie histórica para este ejercicio finaliza en el año
  2007 y se recopila en intervalos de 5 años. 


**6.- Conclusiones**

+ El dashboard transforma los datos históricos de Gapminder en un entorno analítico interactivo. Realiza animaciones temporales, mapas y un modelo
  econométrico, permite identificar brechas subregionales y expresar la relación directa entre el crecimiento económico y la salud en América.
+ Existe una relación positiva entre el PIB per cápita y la esperanza de vida.
+ América del Norte presenta los mayores niveles de desarrollo económico.
+ Las subregiones muestran comportamientos heterogéneos en crecimiento y salud.





















