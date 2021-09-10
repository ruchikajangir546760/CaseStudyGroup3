@AccessControl.authorizationCheck: #CHECK
@Consumption.valueHelpDefault.fetchValues: #AUTOMATICALLY_WHEN_DISPLAYED
@EndUserText.label: 'Bus Details CDS View'
define root view entity ZETCDS_BUSDETAILS as select from zet_bus_details as _busDetails
composition [0..*] of ZETCDS_BOOKINGDETAILS as _Booking 
   {
    key bus_uuid as BusUuid,
    bus_number as BusNumber,
    operator_name as OperatorName,
    capacity as Capacity,
    seat_price as SeatPrice,
    source as Source,
    destination as Destination,
    departure_time as DepartureTime,
    arrival_time as ArrivalTime,
    distance as Distance,
    bus_type as BusType,
    // Make association public
    _Booking
   
}
