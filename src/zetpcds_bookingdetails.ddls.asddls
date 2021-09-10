@EndUserText.label: 'Projection View for Booking Details'
@AccessControl.authorizationCheck: #CHECK
 @Search.searchable: true
 @Metadata.allowExtensions: true
define view entity ZETPCDS_BOOKINGDETAILS as projection on ZETCDS_BOOKINGDETAILS as Booking{
    key BookingId,
    UserId,
    UserName,
    UserContactNo,
    UserEmailId,
    @Search.defaultSearchElement: true
    AadharNo,
    UserAge,
    UserGender,
    BusId,
    Pnr,
    SeatWaitlistNumber,
    BookingStatus,
    /* Associations */
    _BusDetails :  redirected to parent ZETPCDS_BUSDETAILS
}
