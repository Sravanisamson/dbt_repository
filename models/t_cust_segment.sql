select C_MKTSEGMENT,c_name,n_name,{{macro_segment("C_MKTSEGMENT")}}
    from {{ source('s1', 't_customers') }}
    inner join {{ source('s1', 't_nations') }} on n_nationkey=c_nationkey

    
    
    