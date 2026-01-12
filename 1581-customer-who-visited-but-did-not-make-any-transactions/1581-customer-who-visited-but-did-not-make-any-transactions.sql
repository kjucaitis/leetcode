/* Write your T-SQL query statement below */
-- select
--     Visits.customer_id,
--     count(Visits.visit_id) as count_no_trans
-- from Visits
-- left join Transactions on Visits.visit_id = Transactions.visit_id
-- where Transactions.amount is null
-- group by Visits.customer_id;

SELECT
    v.customer_id 
    , COUNT(v.customer_id) AS count_no_trans
FROM visits AS v
LEFT JOIN transactions AS t ON v.visit_id = t.visit_id 
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id 