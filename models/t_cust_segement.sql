{{
    config(
        pre_hook=["insert into icici_db.dev_Schema.t_audit(model_name,d_time,status) 
        values
        ('t_cust_segement',current_timestamp(),'started')"],
        post_hook=["insert into icici_db.dev_Schema.t_audit(model_name,d_time,status)
         values
        ('t_cust_segement',current_timestamp(),'completed')"] 
    )
}}

SELECT 
    c.c_mktsegment,
    c.c_name,
    n.n_name,
    {{ macro_segment('c.c_mktsegment') }} AS new_segment
        
FROM {{ source('s2', 't_customers') }} c
INNER JOIN {{ source('s2', 't_nations') }} n
    ON n.n_nationkey = c.c_nationkey