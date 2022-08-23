años = c(2000, 2001, 2002, 2003, 2004)

datos <- read.csv("nombres-2000-2004.csv")
head(datos)
#tenemos para cada año, la cantidad de apariciones de un nombre
datos$nombre <- tolower(datos$nombre)

nombres_distintos_año <- function(año, datos){
  nombres_ese_año = datos$nombre[ datos$anio == año ]
  return (unique(nombres_ese_año))
}

cantidad_nombres_distintos = length(unique(datos$nombre))
cat("En total hay", cantidad_nombres_distintos, "nombres distintos \n")
for (año in años){
  cantidad_nombres_distintos <- length(nombres_distintos_año(año, datos))
  cat("En el año", año, "hubieron", cantidad_nombres_distintos, "nombres distintos \n")
}
# Me da la impresion de que se solapan bastante
# Si no se solaparan habria 750000 nombres distintos en total
# No se como calcular el solapamiento exacto

J = matrix(NA, 5,5)
rownames(J) <- años
colnames(J) <- años

for (i in 1:5){
  for(j in 1:5){
    año_1 = años[i]
    año_2 = años[j]
    
    nombres_distintos_año_1 = nombres_distintos_año(año_1, datos)
    nombres_distintos_año_2 = nombres_distintos_año(año_2, datos)
    
    interseccion_años = intersect(nombres_distintos_año_1, nombres_distintos_año_2)
    union_años = union(nombres_distintos_año_1, nombres_distintos_año_2)
    coef = length(interseccion_años)/length(union_años)
    
    J[i, j] <- coef
  }
}

mas_comunes_por_año <- function(año, datos){
  datos <- datos[datos$anio == año, ]
  nombres_ordenados <- datos$nombre[ order(datos$cantidad, decreasing = TRUE) ]
  return(nombres_ordenados[1:10])
}
menos_comunes_por_año <- function(año, datos){
  datos <- datos[datos$anio == año, ]
  nombres_ordenados <- datos$nombre[ order(datos$cantidad) ]
  return(nombres_ordenados[1:10])
}

for (año in años){
  mas_comunes_por_año(año, datos)
  menos_comunes_por_año(año, datos)
}

