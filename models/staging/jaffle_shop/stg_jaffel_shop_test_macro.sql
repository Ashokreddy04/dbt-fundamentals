select 
    {{ columns_exclude_from_table(
        table_name = 'customers'
        , exclude_column_list = ['ID']
        )
        }}
    from {{ source( 'jaffle_shop', 'customers') }}