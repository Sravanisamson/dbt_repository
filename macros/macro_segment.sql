{% macro macro_segment(column_name) %}
case when {{column_name}} in ('BUILDING','HOUSEHOLD','FURNITURE') then 'Home_segment'
    when {{column_name}} in ('MACHINERY','AUTOMOBILE') then 'Auto_segment'
    else 'Others'
    end 
    {% endmacro %}