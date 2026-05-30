CLASS zcl_test_pru DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_test_pru IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

out->write(
  EXPORTING
    data   = 'welcome to the first BTP program '
*    name   =
*  RECEIVING
*    output =
).

  ENDMETHOD.

ENDCLASS.
