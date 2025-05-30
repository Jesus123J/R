
library(ggplot2)
set.seed(1234)

datos <- data.frame(
  x = rnorm(200, mean = 50, sd = 10),
  y = rnorm(200, mean = 20, sd = 5) + 0.5 * rnorm(100, mean = 50, sd = 10)
)

modelo <- lm(y ~ x, data = datos)
summary(modelo)

ggplot(datos, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "Regresión Lineal en Datos Científicos",
       x = "Variable Independiente",
       y = "Variable Dependiente") +
  theme_minimal()












