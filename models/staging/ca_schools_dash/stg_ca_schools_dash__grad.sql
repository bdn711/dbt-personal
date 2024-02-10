with
    data2023 as (
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
        from {{ ref('base_grad2023')}}
    ),

    data2022 as (
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
            null::integer as PriorDenom,
            null::real as PriorStatus,
            null::real as Change,
            StatusLevel,
            null::integer as ChangeLevel,
            null::integer as Color,
            null::boolean as CurrNSizeMet,
            null::boolean as PriorNSizeMet,
            null::boolean as AccountabilityMet,
            Indicator,
            ReportingYear
        from {{ ref('base_grad2022')}}
    ),

    unioned as (
        select * from data2023
        union all
        select * from data2022
    )

select * from unioned
