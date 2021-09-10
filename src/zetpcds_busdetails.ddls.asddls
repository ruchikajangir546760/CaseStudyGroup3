@EndUserText.label: 'Projection view for Bus Details'
@AccessControl.authorizationCheck: #CHECK
 @Search.searchable: true
 @Metadata.allowExtensions: true
define root view entity ZETPCDS_BUSDETAILS as projection on ZETCDS_BUSDETAILS as BusDetails {
    key BusUuid,
     @Search.defaultSearchElement: true
    BusNumber,
    OperatorName,
    Capacity,
    SeatPrice,
    Source,
    Destination,
    DepartureTime,
    ArrivalTime,
    Distance,
    BusType,
    /* Associations */
    _Booking: redirected to composition child ZETPCDS_BOOKINGDETAILS
}
