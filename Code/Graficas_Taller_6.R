{library(readxl)
library(ggplot2)
}
{Taller_6_1_ <- read_excel("C:/Users/alejo/Downloads/Taller 6(1).xlsx", 
                          sheet = "Data - June 2016")
View(Taller_6_1_)
}

crear_boxplot <- function(data, var, titulo, eje_y) {
  ggplot(data, aes(x = "", y = .data[[var]])) +
    geom_boxplot(
      fill = "#061C63",     
      color = "black",      
      outlier.colour = "red", 
      outlier.shape = 16,   
      outlier.size = 2,
      alpha = 0.8
    ) +
    labs(title = titulo, x = NULL, y = eje_y) +
    scale_y_continuous(limits = c(0, 100)) +  
    theme_minimal(base_size = 14) +          
    theme(
      plot.title = element_text(hjust = 0.5, size = 16, face = "bold"), 
      axis.title.y = element_text(size = 14, face = "bold"),
      axis.text.y  = element_text(size = 12)

    )
}


p1 <- crear_boxplot(
  data   = Taller_6_1_,
  var    = "GFDD.DI.01",
  titulo = "Private credit by deposit money banks to GDP (%)",
  eje_y  = "GFDD.DI.01"
)

p2 <- crear_boxplot(
  data   = Taller_6_1_,
  var    = "GFDD.DI.02",
  titulo = "Deposit money banks’ assets to GDP (%)",
  eje_y  = "GFDD.DI.02"
)

p3 <- crear_boxplot(
  data   = Taller_6_1_,
  var    = "GFDD.AI.01",
  titulo = "",
  eje_y  = ""
)

p4 <- crear_boxplot(
  data   = Taller_6_1_,
  var    = "GFDD.AI.02",
  titulo = "",
  eje_y  = ""
)

p5 <- crear_boxplot(
  data   = Taller_6_1_,
  var    = "GFDD.AI.03",
  titulo = "",
  eje_y  = ""
)

p6 <- crear_boxplot(
  data   = Taller_6_1_,
  var    = "GFDD.AI.04",
  titulo = "",
  eje_y  = ""
)

p7 <- crear_boxplot(
  data   = Taller_6_1_,
  var    = "GFDD.SI.01",
  titulo = "",
  eje_y  = ""
)

p8 <- crear_boxplot(
  data   = Taller_6_1_,
  var    = "GFDD.SI.05",
  titulo = "",
  eje_y  = ""
)

print(p1)
print(p2)
print(p3)
print(p4)
print(p5)
print(p6)
print(p7)
print(p8)
