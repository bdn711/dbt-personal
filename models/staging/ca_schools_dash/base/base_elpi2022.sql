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
    statuslevel,
    case when flag95pct = 'Y' then true else false end as flag95pct,
    case when nsizemet = 'Y' then true else false end as nsizemet,
    'ELPI' as indicator,
    reportingyear
from {{ source('ca_schools_dash', 'elpi2022') }}
