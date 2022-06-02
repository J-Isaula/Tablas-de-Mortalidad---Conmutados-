#%%%%%%%%%%%%%%%%%%%%%%%%%%%%% CONSTRUCCIÓN DE CONMUTADOS CON R #%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Cargamos la libreria a utilizar 
library(lifecontingencies)

# Creamos la tabla de mortalidad 
MEX2000 <- probs2lifetable(probs=qx,radix=100000, type="qx",
                           name="Tabla de Mortalidad MEX 2000")

# Una vez creada la tabla de mortalidad obtendremos l_x y podemos continuar
# Construyendo la tabla con los Dotales.

conmutadosMEX2000 <- new("actuarialtable",x= MEX2000@x,
                         lx = MEX2000@lx, interest = 0.10)
conmutadosMEX2000
