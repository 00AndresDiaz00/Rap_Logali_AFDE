*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZTRAVEL_AFDE....................................*
DATA:  BEGIN OF STATUS_ZTRAVEL_AFDE                  .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZTRAVEL_AFDE                  .
CONTROLS: TCTRL_ZTRAVEL_AFDE
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZTRAVEL_AFDE                  .
TABLES: ZTRAVEL_AFDE                   .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
