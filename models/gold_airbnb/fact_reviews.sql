--dim_reviews

{{config(materialized='table')}}

with stg_reviews
as
(

  select
  *
  from  
  {{ref('dbt_training_demo','stg_reviews')}}

)
select * from stg_reviews