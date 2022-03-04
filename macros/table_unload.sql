{% macro table_unload(table_name, model_name) %}
select * from {{ source( model_name, table_name ) }}
{% endmacro %}