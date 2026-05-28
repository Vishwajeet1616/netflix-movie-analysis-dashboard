create database Netflix_movie_data;
use Netflix_movie_data;
select * from movies_db;

# Q1. what are the top 5 most frequently produces movie genres?
select Genre, count(*) as total_movies from movies_db group by Genre order by total_movies desc limit 5;

# Q2. which genre holds the highest average popularity score
select Genre, round(avg(Popularity),2) as Avg_Popularity
from movies_db group by Genre order by Avg_Popularity desc limit 5;

#Q3 whiat is average views rating for each Genre, sorted from highes to lowest?
select Genre,round(avg(Vote_Average),2) as Average_Rating
from movies_db group by Genre order by Average_Rating desc;

#Q4 Which top 5 Genre dominated the year 2021 (had the highes number of releases)?
select Genre, count(*) as movies_released from movies_db where Release_Year = 2021
group by Genre order by movies_released desc limit 5;

#Q5 what are the top 3 highest-rated movies specifically within the 'Science Fiction' genre?
select Title , Vote_Average, Vote_Count from movies_db
where Genre = 'Science Fiction' and Vote_Count > 1000
order by Vote_Average desc limit 3;

#Q6 How has the production of 'Horror' movies trended over the last 5 years of the dataset?
select Release_Year,count(*) as Total_Horror_movies from movies_db
where Genre ='Horror' and Release_Year >=2017
Group by release_Year order by Release_Year desc;

#Q7 Which Genre has the highest combined total of raw Vote_Count?
Select Genre, sum(Vote_Count) as Total_Votes_Received from movies_db
group by Genre Order by Total_Votes_Received desc limit 5;

#Q8 what is the percentage distribution of vote_category within the 'Comedy' genre?
select Vote_Category,
		count(*) as total_movies,
		Round((count(*) * 100.0)/(select count(*) from movies_db where Genre = 'Comedy'),2) as Percentage
	from movies_db
    where Genre='Comedy'
    group by Vote_Category
    order by total_movies desc;
    
#Q9  Which unique movies belong to both 'Action' and 'Romance' genres?
select Title from movies_db
where Genre in ('Action','Romance')
group by Title
having count(distinct Genre) = 2;

#Q10 Which top 5 Genre has highes number of movies Categorized as 'Popular'?
select Genre, count(*) as Total_Popular_Movies
from movies_db where Vote_Category = 'Popular'
group by Genre
order by Total_Popular_Movies desc limit 5;

#Q10 Which top 5 Genre has highes number of movies Categorized as 'not_Popular'?
select Genre, count(*) as Total_not_Popular_Movies
from movies_db where Vote_Category = 'not_Popular'
group by Genre
order by Total_not_Popular_Movies desc limit 5;