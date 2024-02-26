@AbapCatalog.sqlViewName: 'ZTRAPROCT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Help Value Agency'
define view ZI_PROCT_AFDE as select from zsuppl_text_afde as Product
{
        key supplement_id ,
        supplement_des 
}
