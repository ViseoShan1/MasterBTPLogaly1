@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Consumption'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_BOOKING_145LG as projection on ZI_BOOKING_145LG
{
    key BookingUUID,
    TravelUUID,
    BookingID,
    BookingDate,
    CustomerID,
    AirlineID,
    ConnectionID,
    FlightDate,
    CurrencyCode,
    @Semantics.amount.currencyCode: 'CurrencyCode'    
    FlightPrice,
    BookingStatus,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true    
    LocalLastChangedAt,
    /* Associations */
    _BookingStatus,
    _BookingSupplement : redirected to composition child ZC_BSUPPL_145LG,
    _Carrier,
    _Connection,
    _Currency,
    _Customer,
    _Travel  : redirected to parent ZC_TRAVEL_145LG
}
