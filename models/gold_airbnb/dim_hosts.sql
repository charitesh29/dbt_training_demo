--dim_hosts

{{config(materialized='table')}}

with stg_hosts
as
(

  select 
    host_id,
    NVL( host_name, 'Anonymous') AS host_name,
    is_superhost,
    created_at,
    updated_at
  from
  {{ref('dbt_training_demo','stg_hosts')}}

)
select * from stg_hosts