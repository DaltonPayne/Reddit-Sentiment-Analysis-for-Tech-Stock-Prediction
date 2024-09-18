# Reddit Sentiment Analysis for Tech Stock Prediction

This project performs sentiment analysis on Reddit comments related to major tech companies and correlates them with the stock prices of those companies. The goal is to understand how online sentiment may influence or reflect the stock performance of companies like Apple, Google, Microsoft, Amazon.

## Features

- **Sentiment Analysis**: Uses Hugging Face's transformer pipeline to analyze the sentiment of Reddit comments related to major tech companies.
- **Stock Data Analysis**: Fetches stock data from Yahoo Finance, calculates returns, moving averages, and other stock-related features.
- **Correlation Studies**: Evaluates the relationship between Reddit sentiment and stock returns.
- **Visualizations**: Creates comprehensive plots of stock prices and sentiment indicators, along with correlation heatmaps and scatter plots to explore relationships between sentiment and stock performance.
- **Predictive Models**: Develops linear regression models to quantify the effect of sentiment on stock returns.

## Setup

### Prerequisites

1. Python 3.x
2. Install the required Python libraries:
   ```bash
   pip install pandas numpy matplotlib yfinance transformers
   ```

## Data

- **Reddit Data**: The Reddit data used in this project comes from a dataset of tech-related comments and posts.
- **Stock Data**: Stock data is fetched dynamically using the Yahoo Finance API.

## How to Use

1. **Clone the Repository**:

    ```bash
    git clone <repository_url>
    ```

2. **Run the Analysis**: Open the provided script in a Jupyter Notebook or Python environment and execute the cells in sequence. The main steps are:
   - **Cell 0**: Import the necessary libraries and set up the environment.
   - **Cell 1**: Clean the Reddit dataset by removing irrelevant information and sorting it based on company mentions.
   - **Cell 2**: Perform sentiment analysis on the cleaned dataset using Hugging Face's transformer model.
   - **Cell 3**: Define helper functions for fetching stock data, calculating features, and visualizing the results.
   - **Cell 4**: Load and preprocess Reddit sentiment data.
   - **Cell 5**: Generate individual sentiment and stock analysis plots for each company.
   - **Cell 6**: Correlate sentiment data with stock returns and display the results.
   - **Cell 7**: Generate heatmaps to visualize correlations between sentiment and stock indicators.
   - **Cell 8**: Develop a linear regression model to explore the relationship between sentiment and stock returns.

3. **Visualization**: The script generates a variety of visual outputs:
   - Stock price trends overlaid with sentiment indicators.
   - Arrows and circles indicating positive or negative sentiment and its magnitude.
   - Correlation heatmaps for each company.
   - Scatter plots showing the relationship between sentiment and stock returns.

## Example Outputs

1. **Stock Price and Sentiment Indicators**:
   - The script generates detailed plots showing how sentiment (positive or negative) correlates with stock prices over time.
   
2. **Correlation Heatmaps**:
   - Displays heatmaps that show the correlation between sentiment, stock returns, and other financial indicators like moving averages.

3. **Sentiment vs. Stock Returns**:
   - Scatter plots with regression lines showing how changes in sentiment are linked with stock returns.

## Customization

- **Adjust Time Period**: Modify the `start_date` and `end_date` in the script to analyze different time ranges.
- **Add More Companies**: You can add more companies and their stock tickers in the `companies` dictionary in the script.

## License

This project is licensed under the MIT License.
