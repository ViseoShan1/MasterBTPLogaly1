@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking - Interface Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_BOOKING_145LG
  as select from zbooking_145lg

  association        to parent ZI_TRAVEL_145LG   as _Travel        on  $projection.TravelUUID = _Travel.TravelUUID
  composition [0..*] of ZI_BSUPPL_145LG as _BookingSupplement   
  association [1..1] to /DMO/I_Customer          as _Customer      on  $projection.CustomerID = _Customer.CustomerID //Customer Help a futuro
  association [1..1] to /DMO/I_Carrier           as _Carrier       on  $projection.AirlineID = _Carrier.AirlineID //Customer Help a futuro
  association [1..1] to /DMO/I_Connection        as _Connection    on  $projection.AirlineID    = _Connection.AirlineID
                                                                   and $projection.ConnectionID = _Connection.ConnectionID //Customer Help a futuro
  association [1..1] to /DMO/I_Booking_Status_VH as _BookingStatus on  $projection.BookingStatus = _BookingStatus.BookingStatus //Customer Help a futuro
  association [1..1] to I_Currency               as _Currency      on  $projection.CurrencyCode = _Currency.Currency //Customer Help a futuro
{
  key booking_uuid          as BookingUUID,
      parent_uuid           as TravelUUID,
      booking_id            as BookingID,
      booking_date          as BookingDate,
      customer_id           as CustomerID,
      carrier_id            as AirlineID,
      connection_id         as ConnectionID,
      flight_date           as FlightDate,
      currency_code         as CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price          as FlightPrice,
      booking_status        as BookingStatus,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      /** Asociaciones */
      _Customer,
      _Carrier,
      _Connection,
      _BookingStatus,
      _Currency,
      _Travel,
      _BookingSupplement

}
