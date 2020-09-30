# Returns normalized values
normalize = function(field)
{
    mean_value = mean(field)
    sd_value = sd(field)
    
    std_values = (field - mean_value) / sd_value
    return (std_values)
}

# Calculates the distribution and plots a bar chart
plot_bar_chart = function(field, x_axis = "Value", y_axis = "Count", title = "Distribution")
{
    unique_values = unique(field)
    freq_table = as.data.frame(table(field))
    barplot(freq_table[,c('Freq')], names.arg = unique_values,
            xlab = x_axis, ylab = y_axis, main = title)
}

# Calculates the distribution and plots a pie chart
plot_pie_chart = function(field, x_axis = "Value", y_axis = "Count", title = "Distribution")
{
    unique_values = unique(field)
    print(unique_values)
    freq_table = as.data.frame(table(field))
    pie(freq_table[,c('Freq')], unique_values, xlab = x_axis, ylab = y_axis, main = title)
}

data = read.csv('Datasets/Home_loan/2017_PUDB_Export.csv')

data_summary = summary(data)

plot_pie_chart(data$Bank)

plot_bar_chart(data[,c('NumUnits')], "Number of units", "Count", "Number of units - Distribution")

hist(data[,c('NumBor')])

# Income has a lot of outliers - what kind of cleaning should be used?
Income = data$Income
Income = normalize(Income)
hist(Income, breaks = 30)
