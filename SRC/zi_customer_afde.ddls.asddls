@AbapCatalog.sqlViewName: 'ZTRACUSTO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Help Value Customers'
define view ZI_CUSTOMER_AFDE as select from scustom  as Costumer
{
        key id ,
        name ,
        form ,
        street ,
        postbox ,
        postcode ,
        city ,
        country ,
        region ,
        telephone ,
        custtype ,
        discount ,
        langu ,
        email ,
        webuser 
}
