{% macro macro_discount(price_column, country_column) %}
    case
        when {{ country_column }} = 'INDIA' then {{ price_column }} * 0.9
        when {{ country_column }} = 'CANADA' then {{ price_column }} * 0.8
        else {{ price_column }}
    end
{% endmacro %}