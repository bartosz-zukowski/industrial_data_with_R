my_vector <- 1:10 
my_matrix <- matrix(1:9, ncol = 3)
my_df <- mtcars[1:10,]
my_list <-list(my_vector,my_matrix, my_df)
names(my_list)<-c('vec','mat','df')
my_list