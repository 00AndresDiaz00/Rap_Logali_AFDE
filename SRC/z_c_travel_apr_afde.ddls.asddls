@Metadata.allowExtensions: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumition - Travel - Aprovador'
define root view entity Z_C_TRAVEL_APR_AFDE as projection on Z_I_TRAVEL_AFDE
{
    key travel_id,
    @ObjectModel.text.element: ['AgencyName']
    agency_id,
    _Agency.carrname as AgencyName,
    @ObjectModel.text.element: ['CustomerName']
    customer_id,
    _Customer.name as CustomerName,
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
    created_by,
    created_at,
    last_changed_by,
    last_changed_at,
    
    /* Associations */
    _Agency,
    _Booking : redirected to composition child Z_C_BOOKING_APR_AFDE,
    _Currency,
    _Customer
}
