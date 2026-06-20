@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight root entity'


define root view entity ZI_FLIGHT_V as select from zflight_header

  composition [0..*] of ZI_BOOKING_V as _Booking
{
    key flight_id,

    carrier_id,
    connection_id,
    flight_date,

    source_city,
    destination_city,

    total_seats,
    available_seats,

    _Booking
    
}
