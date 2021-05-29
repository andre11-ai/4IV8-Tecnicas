# Importing the matplotlib library
import matplotlib.pyplot as plt
# Categorical data: Country names
countries = ['Negros', 'Marrones', 'Verdes', 'Azules']

color=['black', 'brown', 'green', 'blue']
# Integer value interms of death counts
totalDeaths = [14, 24, 4, 8]
# Passing the parameters to the bar function, this is the main function which creates the bar plot
plt.bar(countries, totalDeaths)
# Displaying the bar plot
plt.show();