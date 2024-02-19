# Question 1
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)

one_a <- A + B
one_a

one_b <- A - B
one_b

# Question 2
two <- diag(c(4,1,2,3), 4)
two

# Question 3

three <- diag(c(3,3,3,3,3))
three
three[1, 2:5] <- c(1,1,1,1)
three[2:5,1] <- c(2,2,2,2)
three
