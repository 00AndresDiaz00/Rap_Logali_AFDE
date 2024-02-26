@AbapCatalog.sqlViewName: 'ZTRAGENCY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Help Value Agency'
define view zi_agency_afde as select from scarr as Agency
{
        key carrid , 
        carrname ,
        currcode ,
        url 
}
