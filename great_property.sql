select round(s.lat_n,4) from station s where (select count(lat_n) from station where lat_n > s.lat_n)=(select count(lat_n) from station where lat_n < s.lat_n);
#both the following two are correct, remeber to have parentheses between the euqality condition;
select round(s.long_w,4) from station s where s.lat_n = (select max(lat_n) from station where lat_n<137.2345);

select round(long_w,4) from station  where lat_n = (select max(lat_n) from station where lat_n<137.2345);