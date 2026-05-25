{{
    config(
        materialized='incremental',
        unique_key='empno'
    )
}}
select empno,ename,deptno,sal,d_upd_Date from icici_db.dev_Schema.s_emp
{% if is_incremental() %}
where d_upd_Date>( select max(d_upd_Date) from {{ this }})
{% endif %}