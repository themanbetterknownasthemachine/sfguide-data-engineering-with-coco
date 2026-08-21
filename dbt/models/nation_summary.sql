SELECT
    n.n_nationkey                            AS nation_key,
    n.n_name                                 AS nation_name,
    r.r_name                                 AS region_name,
    COUNT(DISTINCT c.c_custkey)              AS customer_count,
    SUM(c.c_acctbal)                         AS total_account_balance
FROM {{ source('tpch', 'nation') }} n
LEFT JOIN {{ source('tpch', 'region') }} r ON n.n_regionkey = r.r_regionkey
LEFT JOIN {{ source('tpch', 'customer') }} c ON n.n_nationkey = c.c_nationkey
GROUP BY 1, 2, 3
