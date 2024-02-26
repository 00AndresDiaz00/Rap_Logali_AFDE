*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZBOOKING_AFDE...................................*
DATA:  BEGIN OF STATUS_ZBOOKING_AFDE                 .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZBOOKING_AFDE                 .
CONTROLS: TCTRL_ZBOOKING_AFDE
            TYPE TABLEVIEW USING SCREEN '0002'.
*.........table declarations:.................................*
TABLES: *ZBOOKING_AFDE                 .
TABLES: ZBOOKING_AFDE                  .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
