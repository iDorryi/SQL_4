#1
SELECT color, mark,count(1)
FROM auto
WHERE mark IN("BMW", "LADA")
GROUP BY color,mark;
#2
SELECT DISTINcT mark, (select count(1)
FROM auto a1
WHERE a1.mark != a.mark) AS count
FROM auto a;
CREATE TABLE test_a
#3
SELECT * 
FROM test_a
NATURAL LEFT JOIN test_b
WHERE test_b.id IS NULL;