with data2023 as (
    select
        cds,
        rtype,
        schoolname,
        districtname,
        countyname,
        charterflag,
        dassflag,
        coeflag,
        studentgroup,
        currdenom,
        currstatus,
        null::integer as priordenom,
        null::real as priorstatus,
        null::real as change,
        statuslevel,
        null::integer as changelevel,
        null::integer as color,
        currnsizemet,
        null::boolean as priornsizemet,
        null::boolean as accountabilitymet,
        indicator,
        reportingyear
    from {{ ref('base_cci2023')}}
)

select * from data2023