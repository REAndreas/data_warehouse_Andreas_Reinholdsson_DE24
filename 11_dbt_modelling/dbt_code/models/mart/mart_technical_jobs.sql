with 
    fct_job_ads as (select * from {{ ref('fct_job_ads') }}),
    dim_occupation as (select * from {{ ref('dim_occupation') }})

select
    *
from fct_job_ads f
left join dim_occupation o on f.occupation_id = o.occupation_id