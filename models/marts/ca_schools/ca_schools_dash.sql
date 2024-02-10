with
    cci as (
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
        from {{ ref('stg_ca_schools_dash__cci')}}
    ),

    chronic as (
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
        from {{ ref('stg_ca_schools_dash__chronic')}}
    ),
    
    ela as (
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
        from {{ ref('stg_ca_schools_dash__ela')}}
    ),
    
    elpi as (
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
        from {{ ref('stg_ca_schools_dash__elpi')}}
    ),
    
    grad as (
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
        from {{ ref('stg_ca_schools_dash__grad')}}
    ),
    
    math as (
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
        from {{ ref('stg_ca_schools_dash__math')}}
    ),
    
    susp as (
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
        from {{ ref('stg_ca_schools_dash__susp')}}
    ),

    unioned as (
        select * from cci
        union all
        select * from chronic
        union all
        select * from ela
        union all
        select * from elpi
        union all
        select * from grad
        union all
        select * from math
        union all
        select * from susp
    )

select * from unioned
