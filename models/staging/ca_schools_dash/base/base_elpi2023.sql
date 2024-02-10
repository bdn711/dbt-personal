select
    cds::text as Cds,
    rtype as RType,
    schoolname as SchoolName,
    districtname as DistrictName,
    countyname as CountyName,
    case when charter_flag = 'Y' then true else false end as CharterFlag,
    case when dass_flag = 'Y' then true else false end as DassFlag,
    case when coe_flag = 'Y' then true else false end as CoeFlag,
    currdenom as CurrDenom,
    currstatus as CurrStatus,
    priordenom as PriorDenom,
    priorstatus as PriorStatus,
    nullif(change, '')::real as Change,
    statuslevel as StatusLevel,
    changelevel as ChangeLevel,
    color as Color,
    case when currnsizemet = 'Y' then true else false end as CurrNSizeMet,
    case when priornsizemet = 'Y' then true else false end as PriorNSizeMet,
    case when accountabilitymet = 'Y' then true else false end as AccountabilityMet,
    indicator as Indicator,
    reportingyear as ReportingYear
from {{ source('ca_schools_dash', 'elpi2023') }}
