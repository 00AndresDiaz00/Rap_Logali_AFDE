@AbapCatalog.sqlViewName: 'ZTRACARR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Help Value  Carrier'
define view zi_carrier_afde as select from s_carrierv as Carrier
{
        key carrierid ,
        name ,
        currencycode ,
        url 
}
