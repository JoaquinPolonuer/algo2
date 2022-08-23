datos <- read.csv('datos_coto2016.csv', stringsAsFactors = FALSE)
View(datos)

x <- "Alimentos Secos,Pastas"
range(datos$price[datos$categories == x]) 

categorias <- unique(datos$categories)
alim_secos <- grep("Alimentos Secos", categorias, value=TRUE) 

cuanto_cuesta <- function(producto, datos){
  return(datos$price[datos$name == producto])
}

precio_carrito <- function(productos, cantidades, datos){ 
  total <- 0
  for(i in 1:length(productos)){
    producto = productos[i]
    cantidad = cantidades[i]
    total <- total + cantidad*cuanto_cuesta(producto, datos)
  }
  return(total)
}

productos = datos$name[c(3,5)]
cantidades = c(1,3)
precio_carrito(productos, cantidades, datos)

#################################################################################################

elige_productos <- function(n, datos){
  productos = sample(datos$name, size=n)
  return(productos)
}
compra_n <- function(n, datos){
  productos = elige_productos(n, datos)
  precio = precio_carrito(productos, rep(1,n), datos)  
  return(precio)
}

cantidad_pruebas <- 30
precio_total <- 0 
i <- 0
while(i<cantidad_pruebas){
  precio = compra_n(10, datos)
  precio_total = precio_total + precio
  i = i+1
}
promedio_10_prod = precio_total/cantidad_pruebas
print("En promedio, comprar 10 productos sale")
print(promedio_10_prod)

cantidad_pruebas <- 100
total_exito <- 0 
i <- 0
while(i<cantidad_pruebas){
  precio = compra_n(10, datos)
  if(precio < 800){
    total_exito = total_exito + 1
  }
  i = i+1
}
print("De 100 veces, pude comprar:")
print(total_exito)
print("veces")

#################################################################################################
library(stringr)

datos[, c("cate1","cate2")] <- str_split(datos$categories, "," ,simplify = TRUE)

table(datos$cate1)

compra_n_2 <- function(n, categoria, datos){
  productos = elige_productos(n, datos)
  precio = precio_carrito(productos, rep(1,n), datos)
  return(list("precio"=precio, "tabla"=table(datos[categoria])))
}

