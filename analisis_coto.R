datos <- read.csv('datos_coto2016.csv', stringsAsFactors = FALSE)
View(datos)

x <- "Alimentos Secos,Pastas"
range(datos$price[datos$categories == x]) #rango de precios de los alimentos

categorias <- unique(datos$categories)
alim_secos <- grep("Alimentos Secos", categorias, value=TRUE) #Agarro todas las categorias con alimentos secos
alim_secos

rango_secos <- matrix(NA, nrow = length(alim_secos), ncol=2)
for(i in 1:length(alim_secos)){
  categoria = alim_secos[i]
  rango_secos[i, ] <- range(datos$price[datos$categories==categoria]) # matriz que, en cada fila tiene el precio minimo y maximo de una categoria de alimentos secos
}
rango_secos

precio_carrito <- function(productos, cantidad, datos){ #funcion para calcular el precio total de un carrito
  total <- 0
  for(i in 1:length(productos)){
    producto = productos[i]
    cant = cantidad[i]
    total <- total + cant*datos$price[datos$name == producto]
  } 
  return(total)
}

productos = c("Crema Chantilly DOS ANCLAS Sob 50 Grm", "Bizcochos Agridulce 9 DE ORO Bol 200 Grm")
cantidades = c(1,3)
precio_carrito(productos, cantidades, datos) #Le paso a la funcion productos y cantidades y me devuelve el precio total

elige_productos <- function(n, datos){ #elige 10 nombres de producto al azar
  productos = sample(datos$name, size=n)
  return(productos)
}
compra_n <- function(n, datos){ #calcula el precio de comprar 10 productos al azar
  productos = elige_productos(n, datos)
  precio = precio_carrito(productos, rep(1,n), datos)  
  return(precio)
}

#calculo el promedio de comprar 10 productos
cantidad_pruebas <- 30
total <- 0 
i <- 0
while(i<cantidad_pruebas){
  precio = compra_n(10, datos)
  total = total + precio
  i = i+1
}
promedio_10_prod = total/cantidad_pruebas
print("En promedio, comprar 10 productos sale")
print(promedio_10_prod)

#voy a comprar 10 productos 100 veces, para ver cuantas me da menos de 100
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



