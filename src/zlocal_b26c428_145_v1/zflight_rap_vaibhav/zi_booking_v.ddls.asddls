@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Item'

define view entity ZI_BOOKING_V
  as select from zbooking_v

  association to parent ZI_FLIGHT_V as _Flight
    on $projection.flight_id = _Flight.flight_id

{
  key booking_id,

  flight_id,

  passenger_name,
  email,

  @Semantics.amount.currencyCode: 'currency_code'
  booking_amount,

  currency_code,

  booking_status,

  _Flight
}
