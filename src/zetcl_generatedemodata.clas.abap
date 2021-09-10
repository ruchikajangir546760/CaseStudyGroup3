CLASS zetcl_generatedemodata DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zetcl_generatedemodata IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA itab type table of zet_bus_details.

    data itab_booking type table of zet_booking.


*   itab = VALUE #(
*     ( bus_uuid = '02D5290E594C1EDA93815057FD946624' bus_number = 1 operator_name ='VRL' capacity = 30
*      seat_price = 500 source = 'BLR' destination = 'MUM' departure_time = 102305
*     arrival_time  = 082305  distance   = 370  bus_type ='AC' )
*    ).

*   delete existing entries in the database table
    DELETE FROM ZET_BUS_DETAILS.

*   insert the new table entries
    INSERT ZET_BUS_DETAILS FROM TABLE @itab.

* insert value in booking table.



   DElete from zet_booking.

   insert zet_booking from table @itab_booking.

*   output the result as a console message
    out->write( |{ sy-dbcnt } travel entries inserted successfully!| ).

  ENDMETHOD.

ENDCLASS.
