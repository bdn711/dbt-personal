select
    cds::text as Cds,
    rtype as RType,
    schoolname as SchoolName,
    districtname as DistrictName,
    countyname as CountyName,
    case when charter_flag = 'Y' then true else false end as CharterFlag,
    case when dass_flag = 'Y' then true else false end as DassFlag,
    case when coe_flag = 'Y' then true else false end as CoeFlag,
    studentgroup as StudentGroup,
    currdenom as CurrDenom,
    currstatus as CurrStatus,
    statuslevel as StatusLevel,
    'CHRO' as Indicator,
    reportingyear as ReportingYear
from {{ source('ca_schools_dash', 'chronic2022') }}
