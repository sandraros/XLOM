*"* use this source file for your ABAP unit test classes

CLASS ltc_app DEFINITION
  INHERITING FROM zcl_xlom__ex_ut_eval_aunit FINAL
  FOR TESTING RISK LEVEL HARMLESS DURATION SHORT.

  PRIVATE SECTION.
    METHODS nominal FOR TESTING RAISING cx_static_check.

    METHODS setup.
ENDCLASS.


CLASS ltc_app IMPLEMENTATION.
  METHOD setup.
    setup_default_xlom_objects( ).
  ENDMETHOD.

  METHOD nominal.
    range_a1->set_formula2( value = `FIND("b","abc")` ).
    cl_abap_unit_assert=>assert_equals( act = zcl_xlom__va=>to_number( range_a1->value( ) )->get_number( )
                                        exp = 2 ).
  ENDMETHOD.
ENDCLASS.