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
    statuslevel,
    'ELA' as indicator,
    reportingyear
from {{ source('ca_schools_dash', 'ela2022') }}
