@Metadata.allowExtensions: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Booking'
define view entity Z_C_BOOKING_AFDE
  as projection on Z_I_BOOKING_AFDE
{
  key travel_id,
  key booking_id,
      booking_date,
      customer_id,
      @ObjectModel.text.element: ['CarrierName']
      carrier_id,
      _Carrier.carrname as CarrierName,
      connection_id,
      flight_date,
      @Semantics.amount.currencyCode :'currency_code'
      flight_price,
      @Semantics.currencyCode: true
      currency_code,
      booking_status,
      last_change_at,

      /* Associations */
      _Travel : redirected to parent Z_C_TRAVEL_AFDE,
      _BookingSupplement : redirected to composition child Z_C_BOOKSUPPL_AFDE,
      _Carrier,
      _Connection,
      _Customer

}
