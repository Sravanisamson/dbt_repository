SELECT 
    c.c_mktsegment,
    c.c_name,
    n.n_name,
    {{macro_segment("c_mktsegment")}}
        
FROM {{ source('s2', 't_customers') }}
INNER JOIN {{ source('s2', 't_nations') }}
    ON n.n_nationkey = c.c_nationkey;