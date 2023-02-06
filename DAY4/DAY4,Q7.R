#program 7:
# (i)
summary(ChickWeight)

# (ii)
library(ggplot2)
ggplot(ChickWeight, aes(x=Diet, y=weight)) + 
  geom_boxplot()

# (iii)
ggplot(ChickWeight[ChickWeight$Diet==1,], aes(x=weight)) + 
  geom_histogram(binwidth=2)

# (iv)
ggplot(ChickWeight[ChickWeight$Diet==4,], aes(x=weight)) + 
  geom_histogram(binwidth=2)

# (v)
ggplot(ChickWeight, aes(x=Time, y=weight, color=Diet)) + 
  geom_point() + 
  geom_smooth(method=lm)
