changecom(`@')dnl
dnl
define(PORTB, 8000)dnl
define(PORTA, 8001)dnl
define(DDRB, 8002)dnl
define(DDRA, 8003)dnl
define(T1CL, 8004)dnl
define(T1CH, 8005)dnl
define(T1LL, 8006)dnl
define(T1LH, 8007)dnl
define(T2CL, 8008)dnl
define(T2CH, 8009)dnl
define(SR, 800a)dnl
define(ACR, 800b)dnl
define(PCR, 800c)dnl
define(IFR, 800d)dnl
define(IER, 800e)dnl
dnl
define(`L_CGRAM', `0b01000000')dnl
define(`L_DDRAM', `0b10000000')dnl
dnl
define(`L_E', `0b001')dnl
define(`L_RS', `0b010')dnl
define(`L_RW', `0b100')dnl
dnl
define(`hh', `eval($1, 16)')dnl
define(`bh', `eval(0b$1, 16)')dnl
