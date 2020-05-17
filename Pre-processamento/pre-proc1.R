#Fatores

vec1<- c("Macho","Femea","Femea","Macho","Macho")
vec1
fac_vec1 <- factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)

#Variaveis categoricas nominais
#NÃ£o existe uma ordem implÃ?cita

animais <- c("Zebra","Pantera","Rinoceronte","Macaco","Tigre")
animais
class(animais)
fac_animais <- factor(animais)
fac_animais
class(fac_animais)
levels(fac_animais)

#Variaveis categoricas ordinais
#Possuem uma ordem natural

grad <- c("Mestrado","Doutorado","Bacharelado","Mestrado","Mestrado")
grad
fac_grad <- factor(grad, order = TRUE, levels = c("Doutorado","Mestrado","Bacharelado"))
fac_grad
levels(fac_grad)

#Sumarizar os dados fornece uma visÃ£o geral sobre o conteÃºdo das variaveis
summary(fac_grad)
summary(grad)

vec2 <- c("M","F","M","F","M","F","M","F","M","F","M","F","M","F")
vec2
fac_vec2 <- factor(vec2)
levels(fac_vec2) <- c("Femea","Macho")
fac_vec2
summary(fac_vec2)
summary(vec2)

#Mais exemplos

data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdata

rdata = factor(data, labels = c("I","II","III"))
rdata 

#Fatores nÃ£o-ordenados

set1 <- c("AA","B","BA","CC","CA","AA","BA","BA","CA","CC","CC","AA","CC","CA")
set1


#Transformando os dados
#R apenas criou os nÃ?veis, o que nÃ£o significa que exista hierarquia
f.set1 <- factor(set1)
f.set1
class(f.set1)
is.ordered(f.set1)


#Fatores Ordenados
o.set1 <- factor(set1,
                 levels = c("CA","BA","AA","CC","B"),
                 ordered = TRUE)

o.set1
is.ordered(o.set1)

as.numeric(o.set1)
table(o.set1)

#Fatores e Dataframes
df<- read.csv("etnias.csv", sep = ',')
df
View(df)

#Variaveis do tipo fator
str(df)


#Niveis dos fatores
#Internamente, o R armazena valores inteiros e faz um mapeamento para as strings (em ordem alfabÃ©tica)
#e agrupa as estatÃ?sticas por nÃ?veis. Agora, se fizermos sumarizaÃ§Ã£o de estatÃ?sticas, Ã© possivel visualizar
#a contabilizaÃ§Ã£o de para cada categoria

levels(df$Etnia)
summary(df$Etnia)

#Plot
#Agora se fizermos um plot, temos um boxplot para estas vÃ¡riaveis categÃ³ricas
plot(df$Idade~df$Etnia,xlab = 'Etnia', ylab = 'Idade', main = 'Idade por Etnia')


#RegressÃ£o
summary(lm(Idade~Etnia, data = df))

#Convertendo uma coluna em vÃ¡riavel categÃ³rica. Isso criara um fator nÃ£o-ordenado


getwd()

df
str(df)
df$Estado_Civil.cat <- factor(df$Estado_Civil, labels = c("Solteiro", "Casado", "Divorciado"))
df
str(df)

#Teste