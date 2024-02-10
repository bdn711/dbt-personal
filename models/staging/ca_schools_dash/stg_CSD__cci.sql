with data2023 as (
    select * from 
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
        null:integer as ChangeLevel,
        null:integer as Color,
        CurrNSizeMet,
        null:boolean as PriorNSizeMet,
        null:boolean as AccountabilityMet,
        Indicator,
        ReportingYear
    from {{ ref('base_cci2023')}}
)

select * from data2023