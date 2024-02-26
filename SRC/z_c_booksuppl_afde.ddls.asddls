@Metadata.allowExtensions: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Booking Supplement'
define view entity Z_C_BOOKSUPPL_AFDE as projection on Z_I_BOOKSUPPL_AFDE
{
    key travel_id,
    key booking_id,
    key booking_supplement_id,
    @ObjectModel.text.element:['SupplementDescription']
    supplement_id,
    _Product.supplement_des as SupplementDescription,
    @Semantics.amount.currencyCode :'currency_code'
    price,
    @Semantics.currencyCode: true
    currency as currency_code,
    last_changed_at,
    
    /* Associations */
    _Travel : redirected to z_c_travel_afde,
    _Booking : redirected to parent z_c_booking_afde,
    _Product
    
}
