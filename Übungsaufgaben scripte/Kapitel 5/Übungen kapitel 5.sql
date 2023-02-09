
/*select element from mengea
union
select element from mengeb
*/ 
# Inner join ist ein workaround da mysql kein intersect, kein except kennt
SELECT
    nh.name,
    nh.vorname
FROM
    niederlassungholland nh
INNER JOIN niederlassungbelgien nb ON
    nh.name = nb.name AND nh.vorname = nb.vorname
INNER JOIN niederlassungschweiz ns ON
    nb.name = ns.name AND nb.vorname = ns.vorname