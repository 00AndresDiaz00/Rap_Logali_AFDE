*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZBOOKSUPPL_AFDE.................................*
DATA:  BEGIN OF STATUS_ZBOOKSUPPL_AFDE               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZBOOKSUPPL_AFDE               .
CONTROLS: TCTRL_ZBOOKSUPPL_AFDE
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZBOOKSUPPL_AFDE               .
TABLES: ZBOOKSUPPL_AFDE                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
