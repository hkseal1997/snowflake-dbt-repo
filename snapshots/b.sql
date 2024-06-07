{% snapshot new %}
{{
    config(
        target_schema='testtt',
        unique_key='ID',
        strategy='check',
        check_cols=['FNAME','LNAME']
    )
}}


SELECT * FROM {{source("sahil's sources",'t')}}

{% endsnapshot %}