**DASHBOARD GAPMINDER-AMÉRICA - GRUPO 03**

El dashboard elaborado es una aplicación interactiva desarrollada bajo los paquetes de R: Shiny y la interfaz estandarizada de shinydashboard. Su propósito fundamental es guiar al usuario desde una vista animada de los datos, para conocer la evolución de los datos, hasta presentar resultados econométricos relacionados a la relación entre la Esperanza de Vida y el Crecimiento Económico. 

<h3 align="center">Figura 01</h1>

<img width="1343" height="661" alt="1" src="https://github.com/user-attachments/assets/4fa4379d-7b93-4c1c-82e2-b5cf94bfe6d1" />

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








