select
    cds::text as cds,
    rtype,
    schoolname,
    districtname,
    countyname,
    case when charter_flag = 'Y' then true else false end as charter_flag,
    case when dass_flag = 'Y' then true else false end as dassflag,
    case when coe_flag = 'Y' then true else false end as coeflag,
    studentgroup,
    currdenom,
    nullif(currstatus, '')::real as currstatus,
    priordenom,
    nullif(priorstatus, '')::real as priorstatus,
    nullif(change, '')::real as change,
    statuslevel,
    changelevel,
    color,
    case when currnsizemet = 'Y' then true else false end as currnsizemet,
    case when priornsizemet = 'Y' then true else false end as priornsizement,
    case when accountabilitymet = 'Y' then true else false end as accountabilitymet,
    indicator,
    reportingyear
from {{ source('ca_schools_dash', 'math2023') }}
