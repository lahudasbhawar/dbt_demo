{{ config(materialized="table") }}

select
    provider_name,
    provider_city,
    provider_state,
    round(sum(total_discharges), 2) as total_discahrge_sum,
    round(sum(average_covered_charges)) as average_covered_charges_sum
from `bigquery-public-data.cms_medicare.inpatient_charges_2011`
group by 1, 2, 3
