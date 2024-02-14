with
    data2023 as (
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
            priordenom,
            priorstatus,
            change,
            statuslevel,
            changelevel,
            color,
            currnsizemet,
            priornsizemet,
            accountabilitymet,
            indicator,
            reportingyear
        from {{ ref('base_ela2023')}}
    ),

    data2022 as (
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
            null::boolean as currnsizemet,
            null::boolean as priornsizemet,
            null::boolean as accountabilitymet,
            indicator,
            reportingyear
        from {{ ref('base_ela2022')}}
    ),

    unioned as (
        select * from data2023
        union all
        select * from data2022
    )

select * from unioned
