{% snapshot snapshot_name %}
    {{
        config(
            target_schema='schema',
            target_database='database',
            unique_key='field',
            strategy='timestamp',
            invalidate_hard_deletes=False,
            updated_at='updated_at_field'
        )
    }}

    select * from {{ source('source_name', 'object_name') }}
 {% endsnapshot %}