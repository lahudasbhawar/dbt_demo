{{ config(materialized="table") }}


select
    provider_state,
    sum(total_discahrge_sum) as total_discahrge_sum,
    sum(average_covered_charges_sum) as average_covered_charges_sum
from {{ ref("medicare_agg") }}
group by 1
