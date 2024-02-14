select
    cds::text as cds,
    rtype,
    schoolname,
    districtname,
    countyname,
    case when charter_flag = 'Y' then true else false end as charterflag,
    case when dass_flag = 'Y' then true else false end as dassflag,
    case when coe_flag = 'Y' then true else false end as coeflag,
    currdenom,
    currstatus,
    priordenom,
    priorstatus,
    nullif(change, '')::real as change,
    statuslevel,
    changelevel,
    color,
    case when currnsizemet = 'Y' then true else false end as currnsizemet,
    case when priornsizemet = 'Y' then true else false end as priornsizement,
    case when accountabilitymet = 'Y' then true else false end as accountabilitymet,
    indicator,
    reportingyear
from {{ source('ca_schools_dash', 'elpi2023') }}
