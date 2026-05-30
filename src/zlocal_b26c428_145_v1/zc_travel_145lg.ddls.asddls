@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Consupmtions Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_TRAVEL_145LG 
    provider contract transactional_query
as projection on ZI_TRAVEL_145LG
{
    key TravelUUID,
    TravelID,
    AgencyID,
    CustomerID,
    BeginDate,
    EndDate,
    CurrencyCode,
    @Semantics.amount.currencyCode: 'CurrencyCode'    
    BookingFee,
    @Semantics.amount.currencyCode: 'CurrencyCode'    
    TotalPrice,
    Description,
    OverallStatus,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    LocalLastChangedAt,
    @Semantics.systemDateTime.lastChangedAt: true    
    LastChangedAt,
    /* Associations */
    _Agency,
    _Booking : redirected to composition child ZC_BOOKING_145LG,
    _Currency,
    _Customer,
    _OverallStatus
}
