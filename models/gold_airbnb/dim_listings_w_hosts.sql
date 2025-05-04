--Practical assingment

{{config(materialized='table')}}

with list_w_hosts
as
(
select
    l.listing_id,
    l.listing_name,
    l.room_type,
    l.minimum_nights,
    l.price_str as price,
    l.host_id,
    h.host_name,
    h.is_superhost as host_is_superhost,
    l.created_at,
    GREATEST(l.updated_at, h.updated_at) as updated_at
from 
{{ref('dbt_training_demo','stg_listings')}} l
LEFT JOIN {{ref('dbt_training_demo','stg_hosts')}} h
on (l.host_id=h.host_id)
--WHERE is_superhost='t'
)
select
*
from
list_w_hosts

