# Module 3: Data frame assignment

pres_candidates <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
abc_poll_results <- c(4, 62, 51, 21, 2, 14, 15)
cbs_poll_results <- c(12, 75, 43, 19, 1, 21, 19) 

# Making a data frame of poll results using the data.frame function and the result 
# vectors as its arguments

poll_results_df <- data.frame(abc_poll_results, cbs_poll_results)

# Changing row names of poll_results by assigning pres_candidates to row.names
# function with said df as its argument
rownames(poll_results_df) <- pres_candidates

# Changing column names of poll_results_df
colnames(poll_results_df) <- c("ABC Results", "CBS Results")

# Printing poll_results df
poll_results_df

rowMeans(poll_results_df)
