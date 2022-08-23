datos <- read.csv('datos_coto2016.csv', stringsAsFactors = FALSE)
View(datos)

x <- "Alimentos Secos,Pastas"
range(datos$price[datos$categories == x]) #rango de precios de los alimentos

categorias <- unique(datos$categories)
alim_secos <- grep("Alimentos Secos", categorias, value=TRUE) #Agarro todas las categorias con alimentos secos

rango_secos <- matrix(NA, nrow = length(alim_secos), ncol=2)
rownames(rango_secos) <- alim_secos
colnames(rango_secos) <- c("min", "max")

for(i in 1:length(alim_secos)){
  categoria <- alim_secos[i]
  precios <- datos$price[datos$categories==categoria]
  rango_secos[i, ] <- range(precios) # matriz que en cada fila tiene el precio minimo 
                                     # y maximo de una categoria de alimentos secos
}
rango_secos
