{% macro macro_segment(column_name) %}
 CASE 
        WHEN {{column_name}} IN ('BUILDING', 'HOUSEHOLD', 'FURNITURE') 
            THEN 'Home_Segment'
            
        WHEN {{column_name}} IN ('MACHINERY', 'AUTOMOBILE') 
            THEN 'Auto_Segment'
            
        ELSE 'Others'
        END 
    {% endmacro %}