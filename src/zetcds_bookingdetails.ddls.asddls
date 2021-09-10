@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS view for Booking Details'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZETCDS_BOOKINGDETAILS as select from zet_booking 
 association to parent ZETCDS_BUSDETAILS      as _BusDetails     on  $projection.BusId = _BusDetails.BusUuid
 {
    key booking_id as BookingId,
    user_id as UserId,
    user_name as UserName,
    user_contact_no as UserContactNo,
    user_email_id as UserEmailId,
    aadhar_no as AadharNo,
    user_age as UserAge,
    user_gender as UserGender,
    bus_id as BusId,
    pnr as Pnr,
    seat_waitlist_number as SeatWaitlistNumber,
    booking_status as BookingStatus,
    
    //making assocaiton public
    _BusDetails
    
}
