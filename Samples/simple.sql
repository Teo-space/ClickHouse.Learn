
CREATE OR REPLACE TABLE test
(
    date DateTime('Europe/Moscow'),
	name FixedString(256),
	text String,
	Value UInt64 
)
ENGINE = MergeTree
PARTITION BY toYYYYMM(date)
ORDER BY date;

------------------------------------------------------------------------------------------------------------------

--INSERT INTO test Values (now(), generateULID(), rand64());


INSERT INTO test 
SELECT 
	now(), 
	generateULID(), 
	'hfghfghfghfghfghfghdhrfhr5hjfghrfhfghfghfhfghdgyj5tej5iu6iu56iu6i5ii56875iu565u56u56467y474435y4h45y4y4y4y4y4y4ykljkl8kl;4y4y4y45y4y54y4y4y4',
	rand64()
FROM numbers(100_000_000)
;

------------------------------------------------------------------------------------------------------------------
--SELECT COUNT(*) from test t 

select * 
from test
--WHERE date > toDateTime('2024-04-10 18:49:00') 
--AND Value < 1720320543672891387
--WHERE date > toDateTime('2024-04-10 18:49:00') 

--WHERE date < toDateTime('2024-04-10 18:54:13') 
--WHERE date < '2024-04-10 18:54:00'
--WHERE name >= '01HV4BPREJ26F28ENXN63ZWZGZ'
order by `date`  asc
LIMIT 100 OFFSET 50_000_000




























