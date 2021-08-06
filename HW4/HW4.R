setwd("C:/Users/d/Google Drive/Notability/Categorical Data/psets/HW4")


#Question 1
LI <- c( 8, 8,10,10,12,12,12,14,14,14,16,16,16,18,20,20,20,22,22,24,26,28,32,34,38,38,38)
y  <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,1,0,0,1,1,0,1,1,1,0)



logit_model <- glm(y ~ LI, family = "binomial")


summary(logit_model)

#1a

new.LI <- data.frame(
  LI = c(12)
)

predict.glm(logit_model, newdata = new.LI, type = "response")

#probablity = 0.1151908


#1b

#0.50 = exp(LI) / (1+exp(LI))
#solve for LI, LI = 0

#1c

#calculate odds ratio
exp(coef(logit_model))

