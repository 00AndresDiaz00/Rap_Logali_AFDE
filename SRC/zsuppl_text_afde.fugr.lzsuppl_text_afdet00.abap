*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZSUPPL_TEXT_AFDE................................*
DATA:  BEGIN OF STATUS_ZSUPPL_TEXT_AFDE              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZSUPPL_TEXT_AFDE              .
CONTROLS: TCTRL_ZSUPPL_TEXT_AFDE
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZSUPPL_TEXT_AFDE              .
TABLES: ZSUPPL_TEXT_AFDE               .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
