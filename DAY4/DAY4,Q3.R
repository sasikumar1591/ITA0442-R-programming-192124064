#program 3:
#  (i)
airquality <- airquality
summary(airquality)

# (ii)
airquality_melt <- melt(airquality, id.vars = c("Month", "Day"))
print(airquality_melt)

# (iii)
airquality_melt <- melt(airquality, id.vars = c("Month", "Day"))
print(airquality_melt)

# (iv)
airquality_cast <- dcast(airquality_melt, Month + Day ~ variable)
print(airquality_cast)

# (v)
airquality_cast <- dcast(airquality_melt, Month + Day ~ variable)
print(airquality_cast)
