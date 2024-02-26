@AbapCatalog.sqlViewName: 'ZVBOOK_AFDE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface - Booking'
define view Z_I_BOOKING_AFDE
  as select from zbooking_afde as BOOKING
  composition [0..*] of Z_I_BOOKSUPPL_AFDE as _BookingSupplement
  association        to parent Z_I_TRAVEL_AFDE    as _Travel on $projection.travel_id = _Travel.travel_id
  association [1..1] to ZI_CUSTOMER_AFDE          as _Customer      on $projection.customer_id = _Customer.id
  association [1..1] to zi_agency_afde            as _Carrier       on $projection.carrier_id = _Carrier.carrid
  association [1..*] to ZI_CONNECTION_AFDE        as _Connection    on $projection.connection_id = _Connection.connectionid

{
  key travel_id,
  key booking_id,
      booking_date,
      customer_id,
      carrier_id,
      connection_id,
      flight_date,
      flight_price,
      currency_code,
      booking_status,
      last_change_at,

      _Travel,
      _BookingSupplement,
      _Customer,
      _Carrier,
      _Connection
}
