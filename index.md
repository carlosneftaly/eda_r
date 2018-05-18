---
title       : Análisis exploratorio de datos con R
subtitle    : Curso Análisis de datos experimentales con R
logo        : db.jpg
author      : Carlos Neftaly Lozano A.
job         : www.microbiostats.com 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
license     : by-nc-sa
knit        : slidify::knit2slides
---

## Hablemos de **R**

<img src="./assets/img/R.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

---

## Hablemos de **R**

<img src="./assets/img/Rcurve.png" title="plot of chunk unnamed-chunk-2" alt="plot of chunk unnamed-chunk-2" style="display: block; margin: auto;" />

---

## Hablemos de **R**

<img src="./assets/img/Ruso.gif" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" style="display: block; margin: auto;" />

---

## Hablemos de **R**

<img src="./assets/img/Rscholar.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" style="display: block; margin: auto;" />

---

## Instalación de **R**

Empezaremos por lo más básico, Podemos instalar **R** desde el siguiente link: https://www.r-project.org/

Pero como muchos somos algo despistados, estas son las maneras más sencillas para instalar **R** en distintos Sistemas Operativos:

|Sistema Operativo | Método   |
|------------------|----------|
|   Windows        | https://cran.r-project.org/bin/windows/base/old/3.4.2/R-3.4.2-win.exe |
|Debian y derivados|`sudo apt-get install r-base`                           |
|Redhat y derivados| `sudo yum install R-core R-devel`                      |
|     Mac          | https://www.youtube.com/watch?v=ICGkG7Gg6j0            |

---

## Entornos de desarrollo para R

Una vez instalado, un entorno de desarrollo integrado será necesario para facilitar el desarrollo de códigos en **R**, por lo que se presentan tres de varias opciones para trabajar con **R**. 

|       IDE             |  Link     |
|:---------------------:|-----------|
|   Tinn-R              |https://sourceforge.net/projects/tinn-r/ |
|R-Studio [Recomendado] |https://www.rstudio.com/ |
| R commander (Rcmdr)   |http://www.rcommander.com/ |

![RIDE](https://rstudio.com/wp-content/uploads/2015/10/rstudio-300x260.png)

---

## Rstudio


<img src="./assets/img/Rstudio.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" width="900px" style="display: block; margin: auto;" />

---

## Flujo de trabajo  sugerido en Rstudio

<img src="./assets/img/rcore.png" title="plot of chunk unnamed-chunk-6" alt="plot of chunk unnamed-chunk-6" style="display: block; margin: auto;" />

--- 


## Flujo de trabajo  sugerido en Rstudio

<img src="./assets/img/rf1.png" title="plot of chunk unnamed-chunk-7" alt="plot of chunk unnamed-chunk-7" width="900px" style="display: block; margin: auto;" />

--- 

## Flujo de trabajo  sugerido en Rstudio

<img src="./assets/img/rf2.png" title="plot of chunk unnamed-chunk-8" alt="plot of chunk unnamed-chunk-8" width="900px" style="display: block; margin: auto;" />

--- 

## Flujo de trabajo  sugerido en Rstudio

<img src="./assets/img/rf3.png" title="plot of chunk unnamed-chunk-9" alt="plot of chunk unnamed-chunk-9" width="900px" style="display: block; margin: auto;" />

--- 

## Flujo de trabajo  sugerido en Rstudio

<img src="./assets/img/ef4.png" title="plot of chunk unnamed-chunk-10" alt="plot of chunk unnamed-chunk-10" width="400px" style="display: block; margin: auto;" />

--- 

## Empezemos....... 

<img src="https://media.giphy.com/media/3oz8xOJiQ9VtnOKAIU/giphy.gif" title="plot of chunk unnamed-chunk-11" alt="plot of chunk unnamed-chunk-11" width="600px" style="display: block; margin: auto;" />

--- 

## 0. Estructura de datos 

<img src="./assets/img/dest.png" title="plot of chunk unnamed-chunk-12" alt="plot of chunk unnamed-chunk-12" width="600px" style="display: block; margin: auto;" />


--- 

## 1. Importando datos a R 


> _Tips_: cosas que podrían producir problemas.


+ El _separador decimal_ SIEMPRE SIEMPRE será un punto. 

+ Nombres de columnas: no debe comenzar con números, tienen que ser sencillos y sin espacios ni caracteres especiales.
Como sugerencia, los nombres de columnas deben ser cortos, ya que tendrás que escribirlos muchas veces.

+ _R_ diferencia entre mayúscula y minúscula. `Rosa no es lo mismo que rosa`. 

+ Si en una columna hay _datos faltantes_ se debe dejar `espacio en blanco` o remplazar con `NA` (con mayúsculas).

--- 

## 1. Importando datos a R 

La forma más sencilla de importar un `.csv` es a través del comando `read.csv(...)`, cuya implementación es la siguiente:


```r
read.csv(file, header = TRUE, sep = ",", dec = ".", ...)
```

Dónde:

| Argumentos  | Significado o uso  |
|-------------|-------------------|
| `file`      | Ruta al archivo  |
| `header`    | Valor lógico para determinar si el archivo incluye encabezados en la primera linea.   |
| `sep`       | Este campo sirve para especificar el carácter de separación. |
| `dec`       | El carácter usado para los puntos decimales  |
| `...`       | Ver la documentación para argumentos extras   |


--- 
## 1. Importando datos a R 


Un ejemplo sería el siguiente:


```r
datos <- read.csv("dataframe1.csv",, header=T, sep=';', dec=',')
```

--- 
