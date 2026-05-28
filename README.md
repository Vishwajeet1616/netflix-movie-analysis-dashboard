# netflix-movie-analysis-dashboard
This project is an end-to-end data analytics portfolio piece demonstrating data cleaning, SQL querying, and advanced Power BI visualization. The goal of this project was to analyze a dataset of movies, extract meaningful business insights regarding genres, popularity, and audience engagement, and present them in a highly interactive, premium "Midnight Tech" themed dashboard.


## 🛠️ Tech Stack & Tools Used
* **Python (Jupyter Notebook):** Data cleaning, feature engineering, and database ingestion (`pandas`, `numpy`, `sqlalchemy`).
* **MySQL:** Exploratory Data Analysis (EDA) and querying for business insights.
* **Power BI:** Advanced DAX, data modeling, and UI/UX design for the final interactive dashboard.

## 🚀 Project Workflow

### 1. Data Cleaning & Feature Engineering (Python)
File: `Netflix_movie_data_analysis.ipynb`

The raw dataset (`mymoviedb.csv`) contained movie metadata. The following steps were performed using Pandas:
* Handled missing values and checked for duplicates.
* Converted `Release_Date` to proper datetime format and engineered a new `Release_Year` column.
* Dropped irrelevant columns (`Overview`, `Original_Language`, `Poster_Url`) to optimize performance.
* Engineered a new `Vote_Category` feature based on average ratings.
* Established a SQLAlchemy connection to automatically load the cleaned dataframe directly into a local MySQL database.

### 2. Exploratory Data Analysis (SQL)
File: `Netflix_movie_data.sql`

Once the clean data was in MySQL (`Netflix_movie_data` DB, `movies_db` table), I wrote several queries to uncover key insights, including:
* Identifying the top 5 most frequently produced movie genres.
* Calculating which genres hold the highest average popularity score and rating.
* Tracking the production trend of 'Horror' movies over recent years.
* Determining percentage distributions of vote categories within specific genres.
* Finding unique movies belonging to multiple genres (e.g., Action & Romance).

### 3. Interactive Dashboard (Power BI)
File: `Netflix_Movies_Analysis_Dashboard.pbix`

The final deliverable is a highly polished Power BI dashboard designed with a custom **"Midnight Tech"** UI theme, utilizing deep midnight purple backgrounds, soft indigo containers, and neon cyan/magenta accents.

**Key Features & DAX Engineering:**
* **Dynamic Bins (DAX):** Engineered a custom DAX calculated column to group `Release_Year` into `Decades` (e.g., 1990s, 2000s, 2010s) for cleaner filtering and analysis.
* **Global Filters:** Three interactive, transparent dropdown slicers (Genre, Decade, Vote Category) that dynamically filter the entire dashboard.
* **The "Hidden Gems Finder" (Scatter Plot):** An advanced visual plotting `Vote_Average` against `Vote_Count`. Constant reference lines divide the chart into quadrants, allowing stakeholders to easily identify critically acclaimed movies that mainstream audiences haven't discovered yet.
* **Top N Filtering:** A horizontal bar chart dynamically filtered to show only the Top 5 movies based on the current slicer selections.
* **UI/UX Best Practices:** Implemented transparent backgrounds, custom hover states, glowing borders, and strict color consistency to simulate a premium streaming app interface.

## 📂 Repository Structure
* `Netflix_movie_data_analysis.ipynb`: Python script for data cleaning and SQL ingestion.
* `Netflix_movie_data.sql`: SQL scripts for exploratory data analysis.
* `Netflix_Movies_Analysis_Dashboard.pbix`: The final Power BI dashboard file.
* `Screenshot 2026-05-28 120917.png`: High-resolution screenshot of the final dashboard.

## 💡 How to Run This Project
1.  **Python:** Run the Jupyter Notebook to clean the raw CSV and push it to your local MySQL server (ensure MySQL is running and update the connection string).
2.  **SQL:** Open MySQL Workbench and run the queries in the `.sql` file against the newly created database.
3.  **Power BI:** Open the `.pbix` file. You may need to update the Data Source settings to point to your local MySQL database to refresh the data.
