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

**4.- Descripción y Análisis de las Pestañas y sus Gráficos**

+ **Pestaña 1: Desarrollo y Salud**

   <h3 align="center">Figura 02 Evolución del PIB per Cápita vs. Esperanza de Vida (Animación)</h1>

<img width="1051" height="574" alt="2" src="https://github.com/user-attachments/assets/8c3c710e-cde3-4e49-8b59-36f5c01290ae" />

Tipo: Gráfico de dispersión (Scatter Plot) animado en el tiempo con escala logarítmica en el eje X y tamaño de burbuja proporcional a la población.

Análisis: Permite observar la trayectoria de los países a lo largo de los años. Al usar una escala logarítmica en el PIB, evita que países con ingresos extremadamente altos (como EE. UU. o Canadá) distorsionen visualmente al resto. La animación ayuda a verificar si la hipótesis de que "a mayor riqueza, mayor esperanza de vida" se cumple de forma constante a través del tiempo.

+ **Pestaña 2: Ranking y Competitividad**

 <h3 align="center"> Figura 03 Top Países por PIB per Cápita (USD)</h1>

<img width="518" height="531" alt="3" src="https://github.com/user-attachments/assets/4fe457f8-8863-4c16-8c00-0dfd4d7e6024" />

Análisis: Identifica los paíse líderes del continente para el año seleccionado. La segmentación por colores ayuda a notar si una subregión específica (por ejemplo, América del Norte) domina los primeros puestos frente a otras regiones.

<h3 align="center"> Figura 04 Dispersión entre PIBpc vs. Salud (Análisis de Cuadrantes)</h1>

<img width="519" height="534" alt="4" src="https://github.com/user-attachments/assets/8f856d49-e07c-4c0e-bf5b-343fc7878d67" />

Análisis: Divide a los países en 4 cuadrantes definidos por el promedio de los datos filtrados:

- Alto PIBpc / Alta EV (Verde): Países eficientes y desarrollados.
- Bajo PIBpc / Alta EV (Azul): Países con alta eficiencia social (logran buena salud con presupuestos ajustados).
- Alto PIBpc / Baja EV (Naranja): Alertas de desigualdad económica (riqueza mal distribuida que no impacta en salud).
- Bajo PIBpc / Bajo EV (Rojo): Zonas críticas con urgencia de intervención en políticas públicas.













