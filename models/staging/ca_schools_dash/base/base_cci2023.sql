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
    case when currnsizemet = 'Y' then true else false end as CurrNSizeMet,
    indicator as Indicator,
    reportingyear as ReportingYear
from {{ source('ca_schools_dash', 'cci2023') }}