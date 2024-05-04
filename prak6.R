> summary(iris)
Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50  
1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50  
Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                  
3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                  
Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  

> head(iris)
Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa

> by(iris$Petal.Length, iris$Species, summary)
iris$Species: setosa
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
1.000   1.400   1.500   1.462   1.575   1.900 
---------------------------------------------------------------- 
  iris$Species: versicolor
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
3.00    4.00    4.35    4.26    4.60    5.10 
---------------------------------------------------------------- 
  iris$Species: virginica
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
4.500   5.100   5.550   5.552   5.875   6.900 

> mean(iris$Sepal.Length)
[1] 5.843333

> var(iris$Sepal.Length)
[1] 0.6856935

> boxplot(iris$Petal.Length)

> boxplot(Petal.Length ~ Species, data=iris, main="Petal Length", xlab="Species", ylab="Length")

> hist(iris$Petal.Length)

> hist(iris$Sepal.Width)

> hist(iris$Sepal.Width[iris$Species=="setosa"])

> hist(iris$Sepal.Width[iris$Species=="versicolor"])

> d=density(iris$Petal.Length)
> plot(d)

> d=density(iris$Sepal.Width[iris$Species=="versicolor"])
> plot(d)

> library(ggplot2)
Warning message:
  package ‘ggplot2’ was built under R version 4.3.3 
> data_zahwa <- read.csv("C:/Users/LENOVO/OneDrive/Documents/Prak Prob Stat/DirectMarketing.csv", sep = ",")
> qplot(data_zahwa$AmountSpent, data_zahwa$Salary)
Warning message:
  `qplot()` was deprecated in ggplot2 3.4.0.
This warning is displayed once every 8 hours.
Call `lifecycle::last_lifecycle_warnings()` to see where this warning was generated. 
> plot(data_zahwa$AmountSpent, data_zahwa$Salary)

> library(ggplot2)
> data_zahwa <- read.csv("C:/Users/LENOVO/OneDrive/Documents/Prak Prob Stat/Houseprices.csv", sep = ",")
> qplot(data_zahwa$Price, data_zahwa$SqFt)
> hist(data_zahwa$AmountSpent)

> data_zahwa <- read.csv("C:/Users/LENOVO/OneDrive/Documents/Prak Prob Stat/DirectMarketing.csv", sep = ",")
> hist(data_zahwa$AmountSpent)
> d=density(data_zahwa$AmountSpent)
> plot(d)