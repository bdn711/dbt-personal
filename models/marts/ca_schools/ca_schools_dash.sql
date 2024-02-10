with
    cci as (
        select
            Cds,
            RType,
            SchoolName,
            DistrictName,
            CountyName,
            CharterFlag,
            DassFlag,
            CoeFlag,
            StudentGroup,
            CurrDenom,
            CurrStatus,
            PriorDenom,
            PriorStatus,
            Change,
            StatusLevel,
            ChangeLevel,
            Color,
            CurrNSizeMet,
            PriorNSizeMet,
            AccountabilityMet,
            Indicator,
            ReportingYear
        from {{ ref('stg_ca_schools_dash__cci')}}
    ),

    chronic as (
        select
            Cds,
            RType,
            SchoolName,
            DistrictName,
            CountyName,
            CharterFlag,
            DassFlag,
            CoeFlag,
            StudentGroup,
            CurrDenom,
            CurrStatus,
            PriorDenom,
            PriorStatus,
            Change,
            StatusLevel,
            ChangeLevel,
            Color,
            CurrNSizeMet,
            PriorNSizeMet,
            AccountabilityMet,
            Indicator,
            ReportingYear
        from {{ ref('stg_ca_schools_dash__chronic')}}
    ),
    
    ela as (
        select
            Cds,
            RType,
            SchoolName,
            DistrictName,
            CountyName,
            CharterFlag,
            DassFlag,
            CoeFlag,
            StudentGroup,
            CurrDenom,
            CurrStatus,
            PriorDenom,
            PriorStatus,
            Change,
            StatusLevel,
            ChangeLevel,
            Color,
            CurrNSizeMet,
            PriorNSizeMet,
            AccountabilityMet,
            Indicator,
            ReportingYear
        from {{ ref('stg_ca_schools_dash__ela')}}
    ),
    
    elpi as (
        select
            Cds,
            RType,
            SchoolName,
            DistrictName,
            CountyName,
            CharterFlag,
            DassFlag,
            CoeFlag,
            null::text as StudentGroup,
            CurrDenom,
            CurrStatus,
            PriorDenom,
            PriorStatus,
            Change,
            StatusLevel,
            ChangeLevel,
            Color,
            CurrNSizeMet,
            PriorNSizeMet,
            AccountabilityMet,
            Indicator,
            ReportingYear
        from {{ ref('stg_ca_schools_dash__elpi')}}
    ),
    
    grad as (
        select
            Cds,
            RType,
            SchoolName,
            DistrictName,
            CountyName,
            CharterFlag,
            DassFlag,
            CoeFlag,
            StudentGroup,
            CurrDenom,
            CurrStatus,
            PriorDenom,
            PriorStatus,
            Change,
            StatusLevel,
            ChangeLevel,
            Color,
            CurrNSizeMet,
            PriorNSizeMet,
            AccountabilityMet,
            Indicator,
            ReportingYear
        from {{ ref('stg_ca_schools_dash__grad')}}
    ),
    
    math as (
        select
            Cds,
            RType,
            SchoolName,
            DistrictName,
            CountyName,
            CharterFlag,
            DassFlag,
            CoeFlag,
            StudentGroup,
            CurrDenom,
            CurrStatus,
            PriorDenom,
            PriorStatus,
            Change,
            StatusLevel,
            ChangeLevel,
            Color,
            CurrNSizeMet,
            PriorNSizeMet,
            AccountabilityMet,
            Indicator,
            ReportingYear
        from {{ ref('stg_ca_schools_dash__math')}}
    ),
    
    susp as (
        select
            Cds,
            RType,
            SchoolName,
            DistrictName,
            CountyName,
            CharterFlag,
            DassFlag,
            CoeFlag,
            StudentGroup,
            CurrDenom,
            CurrStatus,
            PriorDenom,
            PriorStatus,
            Change,
            StatusLevel,
            ChangeLevel,
            Color,
            CurrNSizeMet,
            PriorNSizeMet,
            AccountabilityMet,
            Indicator,
            ReportingYear
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
