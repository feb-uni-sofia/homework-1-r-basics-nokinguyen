#a)
xmin <-c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <-c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)

#b)
dff <-xmax-xmin

#c)
avgmax < mean(xmax)
avgmin <-mean(xmin)

#d)
xmin [xmin < avgmin]

#e)
xmin [xmax > avgmax]

#f)
## NOTE: not DRY (don't repeat yourself). Assign the dates to a vector and
## then use that vector to assign names to the elements of xmin and xmax

names(xmin) <-c('Mon', 'Tue', 'Wed', 'Thu', 'Fri' , 'Sat' , 'Sun')
names(xmax) <-c('Mon', 'Tue', 'Wed', 'Thu', 'Fri' , 'Sat' , 'Sun')

#g)
temperature <-data.frame(xmin,xmax)

#h)
temperature <- within(temperature, {
	xminFahrenheit <- xmin*9/5 + 32
})

#i)
temperatureFahrenheit <-data.frame(
  Max_temp_Fahr = xmax*9/5 + 32, 
  Min_temp_Fahr = xmin*9/5 + 32)
#j)
FivedaytempFahrenheit  <- data.frame(
 	Max_temp_Fahr = xmax[seq(1:5)]*9/5+32,
  Min_temp_Fahr = xmin[seq(1:5)]*9/5+32)

FivedaytempFahrenheit <- data.frame(
  Max_temp_Fahr = xmax[seq(length(xmax)-2)]*9/5+32,
  Min_temp_Fahr = xmin[seq(length(xmin)-2)]*9/5+32)

## Easier way 

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

## Easier to subset the whole data.frame instead of 
## doing this for each vector used in its construction

temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]
