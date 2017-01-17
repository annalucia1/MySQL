#Write a SQL query for a report that provides the following information for each person in the #Person table, regardless if there is an address for each of those people:
#FirstName, LastName, City, State

SELECT FirstName, LastName, City, State
FROM Person 
LEFT JOIN Address
ON Person.PersonId = Address.PersonId;

select city.name from city left join country on city.countrycode = country.code where country.continent = 'Africa';

select s.hacker_id, h.name from hackers h 
inner join submissions s  on h.hacker_id = s.hacker_id
inner join challenges c on  c.challenge_id = s.challenge_id
inner join difficulty d on c.difficulty_level = d.difficulty_level
where s.score = d.score
group by s.hacker_id
having count(s.score) > 1 
order by count(s.score) desc, s.hacker_id;