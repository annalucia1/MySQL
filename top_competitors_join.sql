
select s.hacker_id, h.name from hackers h 
inner join submissions s  on h.hacker_id = s.hacker_id
inner join challenges c on  c.challenge_id = s.challenge_id
inner join difficulty d on c.difficulty_level = d.difficulty_level
where s.score = d.score
group by s.hacker_id
having count(s.score) > 1 
order by count(s.score) desc, s.hacker_id;