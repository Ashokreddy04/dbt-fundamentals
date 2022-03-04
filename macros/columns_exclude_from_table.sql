{% macro columns_exclude_from_table(table_name, exclude_column_list=[]) %}

    {% set col_list = ['ID','FIRST_NAME','LAST_NAME'] %}
    {% set req_columns = [] %}
    {% for c in col_list %}
        {% if c not in exclude_column_list %}
            {% do req_columns.append(c) %}
        {% endif %}
    {% endfor %} 
    {% set sel_columns = ", "~req_columns|join('\n\t, ') %}
    {{ return(sel_columns) }}


{% endmacro %}