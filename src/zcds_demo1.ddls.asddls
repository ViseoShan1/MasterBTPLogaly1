@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS PRACTISE'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_DEMO1 as select from /dmo/travel as a
inner join /dmo/booking as b on a.travel_id = b.travel_id
{
    key   a.travel_id as Travel_Id,
    key   b.booking_id as Booking_Id,
          a.begin_date as Begin_date,
          a.createdby as CreateBy,
          b.carrier_id as Carried_Id,
          b.connection_id as Connect_Id
}
