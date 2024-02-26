@AbapCatalog.sqlViewName: 'ZV_BOOK_AFD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface - Booking Supplement'
define view Z_I_BOOKSUPPL_AFDE
  as select from zbooksuppl_afde as bookingsupplement
  association        to parent Z_I_BOOKING_AFDE as _Booking on  $projection.travel_id  = _Booking.travel_id
                                                            and $projection.booking_id = _Booking.booking_id
  association [1..1] to Z_I_TRAVEL_AFDE         as _Travel  on  $projection.travel_id = _Travel.travel_id
  association [1..1] to ZI_PROCT_AFDE           as _Product on  $projection.supplement_id = _Product.supplement_id

{
  key travel_id,
  key booking_id,
  key booking_supplement_id,
      supplement_id,
      price,
      currency,
      last_changed_at,
      
      _Booking,
      _Travel,
      _Product
}
