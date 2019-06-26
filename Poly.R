Year <- c(1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969)
Population <- c(4835, 4970, 5085, 5160, 5310, 5260, 5235, 5255, 5235, 5210, 5175)
sample1 <- data.frame(Year, Population)
sample1
sample1$Year <- sample1$Year - 1964
sample1
plot(sample1$Year, sample1$Population, type="b")
fit1 <- lm(sample1$Population ~ sample1$Year)
fit2 <- lm(sample1$Population ~ sample1$Year + I(sample1$Year^2))
fit3 <- lm(sample1$Population ~ sample1$Year + I(sample1$Year^2) + I(sample1$Year^3))
#we can write more quickly, for polynomials of degree 2 and 3:


fit2b <- lm(sample1$Population ~ poly(sample1$Year, 2, raw=TRUE))
fit3b <- lm(sample1$Population ~ poly(sample1$Year, 3, raw=TRUE))
summary(fit2)
summary(fit3)
anova(fit2, fit3)
plot(sample1$Year, sample1$Population, type="l", lwd=3)
points(sample1$Year, predict(fit2), type="l", col="red", lwd=2)
points(sample1&Year, predict(fit3), type="l", col="blue", lwd=2)
pol2 <- function(x) fit2$coefficient[3]*x^2 + fit2$coefficient[2]*x + fit2$coefficient[1]
plot(sample1$Year, sample1$Population, type="p", lwd=3)
pol2 <- function(x) fit2$coefficient[3]*x^2 + fit2$coefficient[2]*x + fit2$coefficient[1]
curve(pol2, col="red", lwd=2)

points(sample1$Year, sample1$Population, type="p", lwd=3)
plot(sample1$Year, sample1$Population, type="p", lwd=3)
pol2 <- function(x) fit2$coefficient[3]*x^2 + fit2$coefficient[2]*x + fit2$coefficient[1]
curve(pol2, col="red", lwd=2)
points(sample1$Year, sample1$Population, type="p", lwd=3)
plot(sample1$Year, sample1$Population, type="p", lwd=3)
pol3 <- function(x) fit3$coefficient[4]*x^3 + fit3$coefficient[3]*x^2 + fit3$coefficient[2]*x + fit3$coefficient[1]
curve(pol3, col="red", lwd=2)
points(sample1$Year, sample1$Population, type="p", lwd=3)
