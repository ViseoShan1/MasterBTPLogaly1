@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Suplement Consumption'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_BSUPPL_145LG as projection on ZI_BSUPPL_145LG
{
    key BooksupplUUID,
    TravelUUID,
    BookingUUID,
    BookingSupplementID,
    SupplementID,
    CurrencyCode,
        @Semantics.amount.currencyCode: 'CurrencyCode'
    Price,
        @Semantics.systemDateTime.localInstanceLastChangedAt: true
    LocalLastChangedAt,
    /* Associations */
    _Booking : redirected to parent ZC_BOOKING_145LG,
    _Currency,
    _Product,
    _SupplementText,
    _Travel : redirected to ZC_TRAVEL_145LG
}
