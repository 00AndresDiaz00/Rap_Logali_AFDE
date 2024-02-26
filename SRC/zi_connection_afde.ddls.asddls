@AbapCatalog.sqlViewName: 'ZTRACONNECT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Help Value Connection'
define view ZI_CONNECTION_AFDE as select from s_connectionsv  as Connection
{
        key carrierid ,
        key connectionid ,
        countryfrom ,
        cityfrom ,
        airportfrom ,
        countryto ,
        cityto ,
        airportto ,
        flighttime ,
        departuretime ,
        arrivaltime ,
        distance ,
        distanceunitid ,
        flighttype ,
        arrivalsdays 
}
