#1
SELECT color, mark,count(1)
FROM auto
WHERE mark IN("BMW", "LADA")
GROUP BY color,mark;
#2
SELECT mc.mark,
     mc.mark_count,
       (au.count_auto - mc.mark_count) AS 'другие авто'
FROM (SELECT mark,
         COUNT(*) AS mark_count
    FROM auto
      GROUP BY mark
) AS mc
CROSS JOIN (SELECT COUNT(*) AS count_auto
      FROM auto) AS au;
#3
SELECT * 
FROM test_a
NATURAL LEFT JOIN test_b
WHERE test_b.id IS NULL;