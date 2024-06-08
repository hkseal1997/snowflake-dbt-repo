{% snapshot scd_table %}


-- Check Cols Strategy
{{
        config(
          target_schema='random',
          strategy='check',
          unique_key='ID',
          check_cols=['FIRSTNAME','LASTNAME'],
        )
}}

-- Updated_at Strategy
   {{
        config(
          target_schema='random',
          strategy='check',
          unique_key='ID',
          updated_at='updated_at',
        )
    }}


SELECT * FROM {{source("sahil's sources","SCD_EG")}}

{% endsnapshot %}