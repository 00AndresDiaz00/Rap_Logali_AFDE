@AbapCatalog.sqlViewName: 'ZV_TRAV_AFD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface - Travel'
define root view Z_I_TRAVEL_AFDE
  as select from ztravel_afde as TRAVEL
  composition [0..*] of Z_I_BOOKING_AFDE as _Booking
  association [0..1] to zi_agency_afde   as _Agency   on $projection.agency_id = _Agency.carrid
  association [0..1] to ZI_CUSTOMER_AFDE as _Customer on $projection.customer_id = _Customer.id
  association [0..1] to I_Currency       as _Currency on $projection.currency_code = _Currency.Currency
{
  key travel_id,
      agency_id,
      customer_id,
      begin_date,
      end_date,
      @Semantics.amount.currencyCode: 'currency_code'
      booking_fee,
      @Semantics.amount.currencyCode: 'currency_code'
      total_price,
      @Semantics.currencyCode: true
      currency_code,
      description,
      overall_status,
      @Semantics.user.createdBy: true
      created_by,
      @Semantics.systemDateTime.createdAt: true
      created_at,
      @Semantics.user.lastChangedBy: true
      last_changed_by,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at,
      
      _Agency,
      _Booking,
      _Customer,
      _Currency
      
      
}
