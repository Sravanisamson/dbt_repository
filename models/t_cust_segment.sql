{{
   config(
        pre_hook=["insert into icici_db.banking_schema.t_audit(model_name,d_time,status) 
        values
        ('t_cust_segment',current_timestamp(),'started')"],
        post_hook=["insert into icici_db.banking_schema.t_audit(model_name,d_time,status)
         values
        ('t_cust_segment',current_timestamp(),'completed')"]        
    )
}}

select C_MKTSEGMENT,c_name,n_name,{{macro_segment("C_MKTSEGMENT")}} as new_Segment
    from {{ source('s1', 't_customers') }}
    inner join {{ source('s1', 't_nations') }} on n_nationkey=c_nationkey

    
    
    