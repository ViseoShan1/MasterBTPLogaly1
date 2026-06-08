@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_ENITITY as select from /dmo/airport
{
    key airport_id as AirportId,
    name as Name,
    city as City,
    country as Country
}
