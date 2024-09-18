# Load necessary package
library(RedditExtractoR)

# List of stock-related subreddits
subreddits <- c("stocks", "investing", "wallstreetbets")

# List of major tech companies
tech_companies <- c("Apple", "Google", "Microsoft", "Amazon", "Facebook")

# Define the periods (month by month) to chunk the requests
periods <- c("month")

# Initialize an empty list to store data
all_data <- list()

# Function to get data for each company and subreddit, chunked by time periods
for (company in tech_companies) {
  for (sub in subreddits) {
    for (period in periods) {
      # Fetch threads for each month in the last year
      for (i in 1:12) {
        # Try to fetch data for the specific month
        threads <- find_thread_urls(keywords = company, subreddit = sub, sort_by = "new", period = "month")
        
        # If threads are found, add the company name and store the result
        if (!is.null(threads) && nrow(threads) > 0) {
          threads$company <- company
          all_data <- append(all_data, list(threads))
        }
        
        # Pause to avoid rate limits (if necessary)
        Sys.sleep(1)  # Adjust this delay depending on API rate limits
      }
    }
  }
}

# Combine all the data into a single data frame
combined_data <- do.call(rbind, all_data)

# Sort the data by company
sorted_data <- combined_data[order(combined_data$company), ]

# View the first few rows of the sorted data
print(head(sorted_data))

# Save the sorted data to a CSV file
write.csv(sorted_data, "data/tech_threads_year_sorted.csv", row.names = FALSE)

# Confirmation message
cat("Data saved successfully as 'tech_threads_year_sorted.csv'")
