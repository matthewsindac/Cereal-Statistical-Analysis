#reads in the cereal data, change the filepath to local directory in order to find the path to the cereal.csv

cereal_data <- read.csv("cereal.csv")

#gets unique cereal names
length(unique(cereal_data$name))

#mfr data
table(cereal_data$mfr)

#type data
table(cereal_data$type)

#calories data
summary(cereal_data$calories)

#protein data
summary(cereal_data$protein)

#fat data
summary(cereal_data$fat)

#sodium data
summary(cereal_data$sodium)

#fiber data
summary(cereal_data$fiber)

#carbo data
summary(cereal_data$carbo)

#sugars data
summary(cereal_data$sugars)

#potass data
summary(cereal_data$potass)

#vitamins data
table(cereal_data$vitamins)

#shelf data
table(cereal_data$shelf)

#weight data
summary(cereal_data$weight)

#cups data
summary(cereal_data$cups)

#rating data
summary(cereal_data$rating)



#Barplot of 'mfr'

barplot(table(cereal_data$mfr), main = "Distribution of Cereals by Manufacturer",
         xlab = "Manufacturer", col = "skyblue")

#Histogram of 'calories'

hist(cereal_data$calories, main = "Distribution of Calories", 
xlab = "Calories", col = "green")

#Histogram of 'protein'

hist(cereal_data$protein, main = "Distribution of Protein",
 xlab = "Protein (grams)", col = "pink")

#Histogram of 'fat'

hist(cereal_data$fat, main = "Distribution of Fat",
 xlab = "Fat (grams)", col = "blue")

#Histogram of 'sodium'

hist(cereal_data$sodium, main = "Distribution of Sodium",
 xlab = "Sodium (milligrams)", col = "orange")

# Histogram for 'fiber'
hist(cereal_data$fiber, main = "Distribution of Fiber",
     xlab = "Fiber (grams)", col = "skyblue")

# Histogram for 'carbo'
hist(cereal_data$carbo, main = "Distribution of Carbohydrates",
     xlab = "Carbohydrates (grams)", col = "green")

# Histogram for 'sugars'
hist(cereal_data$sugars, main = "Distribution of Sugars",
     xlab = "Sugars (grams)", col = "pink")

# Histogram for 'potass'
hist(cereal_data$potass, main = "Distribution of Potassium",
     xlab = "Potassium (milligrams)", col = "blue")

#Barplot for 'weight'
barplot(table(cereal_data$weight), main = "Distribution of Weight",
        xlab = "Weight Per Serving (ounces)", col = "green")

#Histogram of 'cups'
hist((cereal_data$cups), main = "Distribution of Cups", 
	xlab = "Cups Per Serving", col = "pink")

#Histogram for 'rating'
hist(cereal_data$rating, main = "Distribution of Ratings",
     xlab = "Rating", col = "orange")

#Barplot of 'vitamins'
barplot(table(cereal_data$vitamins), main = "Distribution of Vitamins",
        xlab = "Vitamins Percentage Per Serving (percentage) ", col = "orange")

#Barplot of 'shelf'
barplot(table(cereal_data$shelf), main = "Distribution of Shelf",
        xlab = "Shelf Number (1, 2, 3, counting from the floor)", col = "skyblue")




#Scatterplot of all numeric variables

pairs(cereal_data[, 4:13], cex.axis = 1.5)




#gets all the variables of interest
variables_of_interest <- cbind(cereal_data$fat, cereal_data$protein, cereal_data$carbo, cereal_data$sugars)

#Boxplots of 'Carbo', 'Sugars', 'Protein', 'Fat'
boxplot(variables_of_interest, 
         main = "Boxplots of Nutritional Content in Cereals",
         names = c("Fat", "Protein", "Carbo", "Sugars"),
         ylab = "Grams",
         col = c("red", "blue", "green", "purple"),
         border = "black")


#sorted calories data 
sorted_cereal_data <- cereal_data[order(cereal_data$calories, decreasing = TRUE), ]

#gives the top 5 highest caloric content cereals and the bottom 5 lowest caloric content cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#sorted calories barplot
barplot(sorted_cereal_data$calories, col = "skyblue", main = "Sorted Cereals by Calories", ylab = "Cereals", xlab = "Calories", horiz = TRUE)



#sorted carbo data 
sorted_cereal_data <- cereal_data[order(cereal_data$carbo, decreasing = TRUE), ]

#gives the top 5 highest complex carbohydrates content cereals and the bottom 5 lowest complex carbohydrates content cereals.
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#sorted carbo barplot
barplot(sorted_cereal_data$carbo, col = "skyblue", main = "Sorted Cereals by Complex Carbohydrates", ylab = "Cereals", xlab = "Complex Carbohydrates", horiz = TRUE)



#sorted sugars data 
sorted_cereal_data <- cereal_data[order(cereal_data$sugars, decreasing = TRUE), ]

#gives the top 5 highest sugars content cereals and the bottom 5 lowest sugars content cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#sorted fat barplot
barplot(sorted_cereal_data$sugars, col = "skyblue", main = "Sorted Cereals by Sugars", ylab = "Cereals", xlab = "Sugars", horiz = TRUE)



#sorted fat data
sorted_cereal_data <- cereal_data[order(cereal_data$fat, decreasing = TRUE), ]

#gives the top 5 highest fat content cereals and the bottom 5 lowest fat content cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#sorted fat barplot
barplot(sorted_cereal_data$fat, col = "skyblue", main = "Sorted Cereals by Fat", ylab = "Cereals", xlab = "Fat", horiz = TRUE)




#sorted potass data 
sorted_cereal_data <- cereal_data[order(cereal_data$potass, decreasing = TRUE), ]

#gives the top 5 highest potassium content cereals and the bottom 5 lowest potassium content cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#sorted potass barplot
barplot(sorted_cereal_data$potass, col = "skyblue", main = "Sorted Cereals by Potassium", ylab = "Cereals", xlab = "Potassium", horiz = TRUE)




#sorted fiber data 
sorted_cereal_data <- cereal_data[order(cereal_data$fiber, decreasing = TRUE), ]

#gives the top 5 highest fiber content cereals and the bottom 5 lowest fiber content cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#sorted fiber barplot
barplot(sorted_cereal_data$fiber, col = "skyblue", main = "Sorted Cereals by Fiber", ylab = "Cereals", xlab = "Fiber", horiz = TRUE)




#sorted sodium data 
sorted_cereal_data <- cereal_data[order(cereal_data$sodium, decreasing = TRUE), ]

#gives the top 5 highest sodium content cereals and the bottom 5 lowest sodium content cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#barplot of sorted sodium
barplot(sorted_cereal_data$sodium, col = "skyblue", main = "Sorted Cereals by Sodium", ylab = "Cereals", xlab = "Sodium", horiz = TRUE)




#sorted rating data
sorted_cereal_data <- cereal_data[order(cereal_data$rating, decreasing = TRUE), ]

#gives the top 5 rated cereals and the bottom 5 rated cereals
head(sorted_cereal_data, 5)
tail(sorted_cereal_data, 5)

#barplot of sorted rating
barplot(sorted_cereal_data$rating, col = "skyblue", main = "Sorted Cereals by Rating", ylab = "Cereals", xlab = "Ratings", horiz = TRUE)





#nutritional facts of the lowest rated vs the highest rated

#sorted rating
sorted_cereal_data <- cereal_data[order(cereal_data$rating, decreasing = TRUE), ]

#top 30 cereals and the bottom 30 cereals by rating
top30 <- head(sorted_cereal_data, 30)
last30 <- tail(sorted_cereal_data, 30)

#summary of the last 30 statistics
summary(last30[, c("calories", "protein", "fat", "sodium", "fiber", "carbo", "sugars", "potass")])

#summary of the top 30 statistics
summary(top30[, c("calories", "protein", "fat", "sodium", "fiber", "carbo", "sugars", "potass")])

#boxplots of the last 30 and the top 30 cereals
boxplot(last30[, c("calories", "protein", "fat", "sodium", "fiber", "carbo", "sugars", "potass")], main = "Lowest-Rated Cereals", las = 2)
boxplot(top30[, c("calories", "protein", "fat", "sodium", "fiber", "carbo", "sugars", "potass")], main = "Highest-Rated Cereals", las = 2)




#manufacturers with their average nutritional content and average rating:

aggregate(. ~ mfr, data = cereal_data[, c("mfr", "calories", "protein", "fat", "sodium", "fiber", "carbo", "sugars", "potass", "rating")], mean)




#shelf number with their average nutritional content and average rating:

aggregate(. ~ shelf, data = cereal_data[, c("shelf", "calories", "protein", "fat", "sodium", "fiber", "carbo", "sugars", "potass", "rating")], mean)




#manufacturers on which shelf with a barplot to indicate each manufacturer

table(cereal_data$mfr, cereal_data$shelf)
manufacturer_table <- table(cereal_data$mfr, cereal_data$shelf)
barplot(manufacturer_table, beside = TRUE, col = rainbow(nrow(manufacturer_table)), legend = rownames(manufacturer_table), main = "Manufacturer Distribution by Shelf", xlab = "Shelf", ylab = "Count")



#Research Questions:

# 1. Do cereals from different shelves have significantly different mean sodium content?
# Method: Analysis of Variance (ANOVA)


#models the data from sodium to each shelf
anova_model <- aov(sodium ~ shelf, data = cereal_data)

#residuals vs fitted model
plot(anova_model, 1)

#qq plot
plot(anova_model, 2)

#summary statistics of the test
summary(anova_model)



# 2. Is there a linear relationship between the amount of potassium in cereals and their overall fiber?
# Method: Simple Linear Regression

#models the data from fiber to potassium
lm_model <- lm(fiber ~ potass, data = cereal_data)

#scatterplot
plot(cereal_data$potass, cereal_data$fiber)

#residuals vs fitted model
plot(lm_model, which = 1)

#qq plot
plot(lm_model, which = 2)

#summary statistics of the test
summary(lm_model)




# 3. Are there significant differences in calories among cereals from different shelves?
# Method: ANOVA

#models the data from calories to each shelf
anova_model_calories <- aov(calories ~ shelf, data = cereal_data)

#residuals vs fitted model
plot(anova_model_calories, 1)

#qq plot
plot(anova_model_calories, 2)

#summary statistics of the test
summary(anova_model_calories)




# 4. Is the mean sugars of the lowest 30 cereals significantly different from the mean sugars of the top 30 cereals?
# Method: Independent Samples t-test

#sorts the cereal data
sorted_cereal_data <- cereal_data[order(cereal_data$rating, decreasing = TRUE), ]

#top30 and last30 in terms of rating
top30 <- head(sorted_cereal_data, 30)
last30 <- tail(sorted_cereal_data, 30)

#qq plot of top 30
qqnorm(top30$sugars)
qqline(top30$sugars)

#qqplot of last 30
qqnorm(last30$sugars)
qqline(last30$sugars)

#t test
t_test_sugars <- t.test(last30$sugars, top30$sugars)
t_test_sugars




# 5. Is the mean rating of the shelf 1 cereals significantly different from the mean ratings of the shelf 3 cereals?
# Method: Independent Samples t-test

#shelf 1 and shelf 3
shelf1 <- cereal_data$rating[cereal_data$shelf == 1]
shelf3 <- cereal_data$rating[cereal_data$shelf == 3]

#qq plot of shelf 1
qqnorm(shelf1)
qqline(shelf1)

#qq plot of shelf 3
qqnorm(shelf3)
qqline(shelf3)

#t test
t_test_ratings <- t.test(shelf1, shelf3) 
t_test_ratings




# 6. Is there a linear relationship between the amount of sugars in cereals and their calories content?
# Method: Simple Linear Regression

#models the data from calories to sugars
lm_model_sugars_calories <- lm(calories ~ sugars, data = cereal_data)

#scatterplot
plot(cereal_data$sugars, cereal_data$calories)

#residuals vs fitted model
plot(lm_model_sugars_calories, which = 1)

#qq plot
plot(lm_model_sugars_calories, which = 2)

#summary statistics of the test
summary(lm_model_sugars_calories)