SEQ(1)                                                                     User Commands                                                                     SEQ(1)

NNAAMMEE
       seq - print a sequence of numbers

SSYYNNOOPPSSIISS
       sseeqq [_O_P_T_I_O_N]... _L_A_S_T
       sseeqq [_O_P_T_I_O_N]... _F_I_R_S_T _L_A_S_T
       sseeqq [_O_P_T_I_O_N]... _F_I_R_S_T _I_N_C_R_E_M_E_N_T _L_A_S_T

DDEESSCCRRIIPPTTIIOONN
       Print numbers from FIRST to LAST, in steps of INCREMENT.

       Mandatory arguments to long options are mandatory for short options too.

       --ff, ----ffoorrmmaatt=_F_O_R_M_A_T
              use printf style floating-point FORMAT

       --ss, ----sseeppaarraattoorr=_S_T_R_I_N_G
              use STRING to separate numbers (default: \n)

       --ww, ----eeqquuaall--wwiiddtthh
              equalize width by padding with leading zeroes

       ----hheellpp display this help and exit

       ----vveerrssiioonn
              output version information and exit

       If FIRST or INCREMENT is omitted, it defaults to 1.  That is, an omitted INCREMENT defaults to 1 even when LAST is smaller than FIRST.  The sequence of num‐
       bers ends when the sum of the current number and INCREMENT would become greater than LAST.  FIRST, INCREMENT, and LAST are  interpreted  as  floating  point
       values.   INCREMENT  is usually positive if FIRST is smaller than LAST, and INCREMENT is usually negative if FIRST is greater than LAST.  INCREMENT must not
       be 0; none of FIRST, INCREMENT and LAST may be NaN.  FORMAT must be suitable for printing one argument of type 'double'; it defaults to  %.PRECf  if  FIRST,
       INCREMENT, and LAST are all fixed point decimal numbers with maximum precision PREC, and to %g otherwise.

AAUUTTHHOORR
       Written by Ulrich Drepper.

RREEPPOORRTTIINNGG BBUUGGSS
       GNU coreutils online help: <http://www.gnu.org/software/coreutils/>
       Report seq translation bugs to <http://translationproject.org/team/>

CCOOPPYYRRIIGGHHTT
       Copyright © 2017 Free Software Foundation, Inc.  License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

SSEEEE AALLSSOO
       Full documentation at: <http://www.gnu.org/software/coreutils/seq>
       or available locally via: info '(coreutils) seq invocation'

GNU coreutils 8.28                                                          January 2018                                                                     SEQ(1)
