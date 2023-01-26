# Install the library for forecast()
install.packages("forecast")

# library required for forecasting 
library(forecast)


########################example 1
                                 ###############################




# Output to be created as png file
png(file = "TimeSeriesGFG.png")

# Plotting graph without forecasting
plot(BJsales, main = "Graph without forecasting",
     col.main = "darkgreen")

# Saving the file
dev.off()

# Output to be created as png file 
png(file = "TimeSeriesARIMAGFG.png")

# Fitting model using arima model 
fit <- auto.arima(BJsales)

# Next 10 forecasted values 
forecastedValues <- forecast(fit, 10)

# Print forecasted values
print(forecastedValues)

plot(forecastedValues, main = "Graph with forecasting",
     col.main = "darkgreen") 

# saving the file  
dev.off() 



###################EXAMPLE2#################################



png(file = "TimeSeries2GFG.png")

# Plotting graph without forecasting
plot(EuStockMarkets[, "DAX"],
     main = "Graph without forecasting",
     col.main = "darkgreen")

# Saving the file
dev.off()

# Output to be created as png file 
png(file = "TimeSeriesARIMA2GFG.png")

# Fitting model using arima model 
fit <- auto.arima(EuStockMarkets[, "DAX"])

# Next 50 forecasted values 
forecastedValues <- forecast(fit, 50)

# Print forecasted values
print(forecastedValues)



plot(forecastedValues, main = "Graph with forecasting",
     col.main = "darkgreen") 

# saving the file  
dev.off() 







################ time series analysis in rain fall#############################

timeseries.object.name <-  ts(data, start, end, frequency)
# Get the data points in form of a R vector.
rainfall <- c(799,1174.8,865.1,1334.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)

# Convert it to a time series object.
rainfall.timeseries <- ts(rainfall,start = c(2012,1),frequency = 12)

# Print the timeseries data.
print(rainfall.timeseries)

# Give the chart file a name.
png(file = "rainfall.png")

# Plot a graph of the time series.
plot(rainfall.timeseries)

# Save the file.
dev.off()















