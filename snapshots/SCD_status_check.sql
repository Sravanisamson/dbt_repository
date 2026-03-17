{% snapshot SCD_status_check %}
    {{
        config(
            target_schema='banking_schema',
            target_database='icici_db',
            unique_key='id',
            strategy='check',
            check_cols=['status']
        )
    }}

    select * from {{ source('s1', 't_ticket_track') }}
 {% endsnapshot %}