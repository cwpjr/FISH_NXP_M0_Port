
;
;               NVIC
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------

SYSTICKCSR               EQU  0xE000E010
;`SYSTICKCSR.ENABLE`        0xE000E010,        4, base=16,    bitRange=0-0
;`SYSTICKCSR.TICKINT`       0xE000E010,        4, base=16,    bitRange=1-1
;`SYSTICKCSR.CLKSOURCE`     0xE000E010,        4, base=16,    bitRange=2-2
;`SYSTICKCSR.COUNTFLAG`     0xE000E010,        4, base=16,    bitRange=16-16

SYSTICKRVR               EQU  0xE000E014
;`SYSTICKRVR.RELOAD`        0xE000E014,        4, base=16,    bitRange=0-23

SYSTICKCVR               EQU  0xE000E018
;`SYSTICKCVR.CURRENT`       0xE000E018,        4, base=16,    bitRange=0-23

SYSTICKCALVR             EQU  0xE000E01C
;`SYSTICKCALVR.TENMS`       0xE000E01C,        4, base=16,    bitRange=0-23
;`SYSTICKCALVR.SKEW`        0xE000E01C,        4, base=16,    bitRange=30-30
;`SYSTICKCALVR.NOREF`       0xE000E01C,        4, base=16,    bitRange=31-31

SETENA0                  EQU  0xE000E100
;`SETENA0.SETENA0`          0xE000E100,        4, base=16,    bitRange=0-0
;`SETENA0.SETENA1`          0xE000E100,        4, base=16,    bitRange=1-1
;`SETENA0.SETENA2`          0xE000E100,        4, base=16,    bitRange=2-2
;`SETENA0.SETENA3`          0xE000E100,        4, base=16,    bitRange=3-3
;`SETENA0.SETENA4`          0xE000E100,        4, base=16,    bitRange=4-4
;`SETENA0.SETENA5`          0xE000E100,        4, base=16,    bitRange=5-5
;`SETENA0.SETENA6`          0xE000E100,        4, base=16,    bitRange=6-6
;`SETENA0.SETENA7`          0xE000E100,        4, base=16,    bitRange=7-7
;`SETENA0.SETENA8`          0xE000E100,        4, base=16,    bitRange=8-8
;`SETENA0.SETENA9`          0xE000E100,        4, base=16,    bitRange=9-9
;`SETENA0.SETENA10`         0xE000E100,        4, base=16,    bitRange=10-10
;`SETENA0.SETENA11`         0xE000E100,        4, base=16,    bitRange=11-11
;`SETENA0.SETENA12`         0xE000E100,        4, base=16,    bitRange=12-12
;`SETENA0.SETENA13`         0xE000E100,        4, base=16,    bitRange=13-13
;`SETENA0.SETENA14`         0xE000E100,        4, base=16,    bitRange=14-14
;`SETENA0.SETENA15`         0xE000E100,        4, base=16,    bitRange=15-15
;`SETENA0.SETENA16`         0xE000E100,        4, base=16,    bitRange=16-16
;`SETENA0.SETENA17`         0xE000E100,        4, base=16,    bitRange=17-17
;`SETENA0.SETENA18`         0xE000E100,        4, base=16,    bitRange=18-18
;`SETENA0.SETENA19`         0xE000E100,        4, base=16,    bitRange=19-19
;`SETENA0.SETENA20`         0xE000E100,        4, base=16,    bitRange=20-20
;`SETENA0.SETENA21`         0xE000E100,        4, base=16,    bitRange=21-21
;`SETENA0.SETENA22`         0xE000E100,        4, base=16,    bitRange=22-22
;`SETENA0.SETENA23`         0xE000E100,        4, base=16,    bitRange=23-23
;`SETENA0.SETENA24`         0xE000E100,        4, base=16,    bitRange=24-24
;`SETENA0.SETENA25`         0xE000E100,        4, base=16,    bitRange=25-25
;`SETENA0.SETENA26`         0xE000E100,        4, base=16,    bitRange=26-26
;`SETENA0.SETENA27`         0xE000E100,        4, base=16,    bitRange=27-27
;`SETENA0.SETENA28`         0xE000E100,        4, base=16,    bitRange=28-28
;`SETENA0.SETENA29`         0xE000E100,        4, base=16,    bitRange=29-29
;`SETENA0.SETENA30`         0xE000E100,        4, base=16,    bitRange=30-30
;`SETENA0.SETENA31`         0xE000E100,        4, base=16,    bitRange=31-31

ISER                     EQU  0xE000E100
;`ISER.SETENA0`             0xE000E100,        4, base=16,    bitRange=0-0
;`ISER.SETENA1`             0xE000E100,        4, base=16,    bitRange=1-1
;`ISER.SETENA2`             0xE000E100,        4, base=16,    bitRange=2-2
;`ISER.SETENA3`             0xE000E100,        4, base=16,    bitRange=3-3
;`ISER.SETENA4`             0xE000E100,        4, base=16,    bitRange=4-4
;`ISER.SETENA5`             0xE000E100,        4, base=16,    bitRange=5-5
;`ISER.SETENA6`             0xE000E100,        4, base=16,    bitRange=6-6
;`ISER.SETENA7`             0xE000E100,        4, base=16,    bitRange=7-7
;`ISER.SETENA8`             0xE000E100,        4, base=16,    bitRange=8-8
;`ISER.SETENA9`             0xE000E100,        4, base=16,    bitRange=9-9
;`ISER.SETENA10`            0xE000E100,        4, base=16,    bitRange=10-10
;`ISER.SETENA11`            0xE000E100,        4, base=16,    bitRange=11-11
;`ISER.SETENA12`            0xE000E100,        4, base=16,    bitRange=12-12
;`ISER.SETENA13`            0xE000E100,        4, base=16,    bitRange=13-13
;`ISER.SETENA14`            0xE000E100,        4, base=16,    bitRange=14-14
;`ISER.SETENA15`            0xE000E100,        4, base=16,    bitRange=15-15
;`ISER.SETENA16`            0xE000E100,        4, base=16,    bitRange=16-16
;`ISER.SETENA17`            0xE000E100,        4, base=16,    bitRange=17-17
;`ISER.SETENA18`            0xE000E100,        4, base=16,    bitRange=18-18
;`ISER.SETENA19`            0xE000E100,        4, base=16,    bitRange=19-19
;`ISER.SETENA20`            0xE000E100,        4, base=16,    bitRange=20-20
;`ISER.SETENA21`            0xE000E100,        4, base=16,    bitRange=21-21
;`ISER.SETENA22`            0xE000E100,        4, base=16,    bitRange=22-22
;`ISER.SETENA23`            0xE000E100,        4, base=16,    bitRange=23-23
;`ISER.SETENA24`            0xE000E100,        4, base=16,    bitRange=24-24
;`ISER.SETENA25`            0xE000E100,        4, base=16,    bitRange=25-25
;`ISER.SETENA26`            0xE000E100,        4, base=16,    bitRange=26-26
;`ISER.SETENA27`            0xE000E100,        4, base=16,    bitRange=27-27
;`ISER.SETENA28`            0xE000E100,        4, base=16,    bitRange=28-28
;`ISER.SETENA29`            0xE000E100,        4, base=16,    bitRange=29-29
;`ISER.SETENA30`            0xE000E100,        4, base=16,    bitRange=30-30
;`ISER.SETENA31`            0xE000E100,        4, base=16,    bitRange=31-31

CLRENA0                  EQU  0xE000E180
;`CLRENA0.CLRENA0`          0xE000E180,        4, base=16,    bitRange=0-0
;`CLRENA0.CLRENA1`          0xE000E180,        4, base=16,    bitRange=1-1
;`CLRENA0.CLRENA2`          0xE000E180,        4, base=16,    bitRange=2-2
;`CLRENA0.CLRENA3`          0xE000E180,        4, base=16,    bitRange=3-3
;`CLRENA0.CLRENA4`          0xE000E180,        4, base=16,    bitRange=4-4
;`CLRENA0.CLRENA5`          0xE000E180,        4, base=16,    bitRange=5-5
;`CLRENA0.CLRENA6`          0xE000E180,        4, base=16,    bitRange=6-6
;`CLRENA0.CLRENA7`          0xE000E180,        4, base=16,    bitRange=7-7
;`CLRENA0.CLRENA8`          0xE000E180,        4, base=16,    bitRange=8-8
;`CLRENA0.CLRENA9`          0xE000E180,        4, base=16,    bitRange=9-9
;`CLRENA0.CLRENA10`         0xE000E180,        4, base=16,    bitRange=10-10
;`CLRENA0.CLRENA11`         0xE000E180,        4, base=16,    bitRange=11-11
;`CLRENA0.CLRENA12`         0xE000E180,        4, base=16,    bitRange=12-12
;`CLRENA0.CLRENA13`         0xE000E180,        4, base=16,    bitRange=13-13
;`CLRENA0.CLRENA14`         0xE000E180,        4, base=16,    bitRange=14-14
;`CLRENA0.CLRENA15`         0xE000E180,        4, base=16,    bitRange=15-15
;`CLRENA0.CLRENA16`         0xE000E180,        4, base=16,    bitRange=16-16
;`CLRENA0.CLRENA17`         0xE000E180,        4, base=16,    bitRange=17-17
;`CLRENA0.CLRENA18`         0xE000E180,        4, base=16,    bitRange=18-18
;`CLRENA0.CLRENA19`         0xE000E180,        4, base=16,    bitRange=19-19
;`CLRENA0.CLRENA20`         0xE000E180,        4, base=16,    bitRange=20-20
;`CLRENA0.CLRENA21`         0xE000E180,        4, base=16,    bitRange=21-21
;`CLRENA0.CLRENA22`         0xE000E180,        4, base=16,    bitRange=22-22
;`CLRENA0.CLRENA23`         0xE000E180,        4, base=16,    bitRange=23-23
;`CLRENA0.CLRENA24`         0xE000E180,        4, base=16,    bitRange=24-24
;`CLRENA0.CLRENA25`         0xE000E180,        4, base=16,    bitRange=25-25
;`CLRENA0.CLRENA26`         0xE000E180,        4, base=16,    bitRange=26-26
;`CLRENA0.CLRENA27`         0xE000E180,        4, base=16,    bitRange=27-27
;`CLRENA0.CLRENA28`         0xE000E180,        4, base=16,    bitRange=28-28
;`CLRENA0.CLRENA29`         0xE000E180,        4, base=16,    bitRange=29-29
;`CLRENA0.CLRENA30`         0xE000E180,        4, base=16,    bitRange=30-30
;`CLRENA0.CLRENA31`         0xE000E180,        4, base=16,    bitRange=31-31

ICER                     EQU  0xE000E180
;`ICER.CLRENA0`             0xE000E180,        4, base=16,    bitRange=0-0
;`ICER.CLRENA1`             0xE000E180,        4, base=16,    bitRange=1-1
;`ICER.CLRENA2`             0xE000E180,        4, base=16,    bitRange=2-2
;`ICER.CLRENA3`             0xE000E180,        4, base=16,    bitRange=3-3
;`ICER.CLRENA4`             0xE000E180,        4, base=16,    bitRange=4-4
;`ICER.CLRENA5`             0xE000E180,        4, base=16,    bitRange=5-5
;`ICER.CLRENA6`             0xE000E180,        4, base=16,    bitRange=6-6
;`ICER.CLRENA7`             0xE000E180,        4, base=16,    bitRange=7-7
;`ICER.CLRENA8`             0xE000E180,        4, base=16,    bitRange=8-8
;`ICER.CLRENA9`             0xE000E180,        4, base=16,    bitRange=9-9
;`ICER.CLRENA10`            0xE000E180,        4, base=16,    bitRange=10-10
;`ICER.CLRENA11`            0xE000E180,        4, base=16,    bitRange=11-11
;`ICER.CLRENA12`            0xE000E180,        4, base=16,    bitRange=12-12
;`ICER.CLRENA13`            0xE000E180,        4, base=16,    bitRange=13-13
;`ICER.CLRENA14`            0xE000E180,        4, base=16,    bitRange=14-14
;`ICER.CLRENA15`            0xE000E180,        4, base=16,    bitRange=15-15
;`ICER.CLRENA16`            0xE000E180,        4, base=16,    bitRange=16-16
;`ICER.CLRENA17`            0xE000E180,        4, base=16,    bitRange=17-17
;`ICER.CLRENA18`            0xE000E180,        4, base=16,    bitRange=18-18
;`ICER.CLRENA19`            0xE000E180,        4, base=16,    bitRange=19-19
;`ICER.CLRENA20`            0xE000E180,        4, base=16,    bitRange=20-20
;`ICER.CLRENA21`            0xE000E180,        4, base=16,    bitRange=21-21
;`ICER.CLRENA22`            0xE000E180,        4, base=16,    bitRange=22-22
;`ICER.CLRENA23`            0xE000E180,        4, base=16,    bitRange=23-23
;`ICER.CLRENA24`            0xE000E180,        4, base=16,    bitRange=24-24
;`ICER.CLRENA25`            0xE000E180,        4, base=16,    bitRange=25-25
;`ICER.CLRENA26`            0xE000E180,        4, base=16,    bitRange=26-26
;`ICER.CLRENA27`            0xE000E180,        4, base=16,    bitRange=27-27
;`ICER.CLRENA28`            0xE000E180,        4, base=16,    bitRange=28-28
;`ICER.CLRENA29`            0xE000E180,        4, base=16,    bitRange=29-29
;`ICER.CLRENA30`            0xE000E180,        4, base=16,    bitRange=30-30
;`ICER.CLRENA31`            0xE000E180,        4, base=16,    bitRange=31-31

SETPEND0                 EQU  0xE000E200
;`SETPEND0.SETPEND0`        0xE000E200,        4, base=16,    bitRange=0-0
;`SETPEND0.SETPEND1`        0xE000E200,        4, base=16,    bitRange=1-1
;`SETPEND0.SETPEND2`        0xE000E200,        4, base=16,    bitRange=2-2
;`SETPEND0.SETPEND3`        0xE000E200,        4, base=16,    bitRange=3-3
;`SETPEND0.SETPEND4`        0xE000E200,        4, base=16,    bitRange=4-4
;`SETPEND0.SETPEND5`        0xE000E200,        4, base=16,    bitRange=5-5
;`SETPEND0.SETPEND6`        0xE000E200,        4, base=16,    bitRange=6-6
;`SETPEND0.SETPEND7`        0xE000E200,        4, base=16,    bitRange=7-7
;`SETPEND0.SETPEND8`        0xE000E200,        4, base=16,    bitRange=8-8
;`SETPEND0.SETPEND9`        0xE000E200,        4, base=16,    bitRange=9-9
;`SETPEND0.SETPEND10`       0xE000E200,        4, base=16,    bitRange=10-10
;`SETPEND0.SETPEND11`       0xE000E200,        4, base=16,    bitRange=11-11
;`SETPEND0.SETPEND12`       0xE000E200,        4, base=16,    bitRange=12-12
;`SETPEND0.SETPEND13`       0xE000E200,        4, base=16,    bitRange=13-13
;`SETPEND0.SETPEND14`       0xE000E200,        4, base=16,    bitRange=14-14
;`SETPEND0.SETPEND15`       0xE000E200,        4, base=16,    bitRange=15-15
;`SETPEND0.SETPEND16`       0xE000E200,        4, base=16,    bitRange=16-16
;`SETPEND0.SETPEND17`       0xE000E200,        4, base=16,    bitRange=17-17
;`SETPEND0.SETPEND18`       0xE000E200,        4, base=16,    bitRange=18-18
;`SETPEND0.SETPEND19`       0xE000E200,        4, base=16,    bitRange=19-19
;`SETPEND0.SETPEND20`       0xE000E200,        4, base=16,    bitRange=20-20
;`SETPEND0.SETPEND21`       0xE000E200,        4, base=16,    bitRange=21-21
;`SETPEND0.SETPEND22`       0xE000E200,        4, base=16,    bitRange=22-22
;`SETPEND0.SETPEND23`       0xE000E200,        4, base=16,    bitRange=23-23
;`SETPEND0.SETPEND24`       0xE000E200,        4, base=16,    bitRange=24-24
;`SETPEND0.SETPEND25`       0xE000E200,        4, base=16,    bitRange=25-25
;`SETPEND0.SETPEND26`       0xE000E200,        4, base=16,    bitRange=26-26
;`SETPEND0.SETPEND27`       0xE000E200,        4, base=16,    bitRange=27-27
;`SETPEND0.SETPEND28`       0xE000E200,        4, base=16,    bitRange=28-28
;`SETPEND0.SETPEND29`       0xE000E200,        4, base=16,    bitRange=29-29
;`SETPEND0.SETPEND30`       0xE000E200,        4, base=16,    bitRange=30-30
;`SETPEND0.SETPEND31`       0xE000E200,        4, base=16,    bitRange=31-31

ISPR                     EQU  0xE000E200
;`ISPR.SETPEND0`            0xE000E200,        4, base=16,    bitRange=0-0
;`ISPR.SETPEND1`            0xE000E200,        4, base=16,    bitRange=1-1
;`ISPR.SETPEND2`            0xE000E200,        4, base=16,    bitRange=2-2
;`ISPR.SETPEND3`            0xE000E200,        4, base=16,    bitRange=3-3
;`ISPR.SETPEND4`            0xE000E200,        4, base=16,    bitRange=4-4
;`ISPR.SETPEND5`            0xE000E200,        4, base=16,    bitRange=5-5
;`ISPR.SETPEND6`            0xE000E200,        4, base=16,    bitRange=6-6
;`ISPR.SETPEND7`            0xE000E200,        4, base=16,    bitRange=7-7
;`ISPR.SETPEND8`            0xE000E200,        4, base=16,    bitRange=8-8
;`ISPR.SETPEND9`            0xE000E200,        4, base=16,    bitRange=9-9
;`ISPR.SETPEND10`           0xE000E200,        4, base=16,    bitRange=10-10
;`ISPR.SETPEND11`           0xE000E200,        4, base=16,    bitRange=11-11
;`ISPR.SETPEND12`           0xE000E200,        4, base=16,    bitRange=12-12
;`ISPR.SETPEND13`           0xE000E200,        4, base=16,    bitRange=13-13
;`ISPR.SETPEND14`           0xE000E200,        4, base=16,    bitRange=14-14
;`ISPR.SETPEND15`           0xE000E200,        4, base=16,    bitRange=15-15
;`ISPR.SETPEND16`           0xE000E200,        4, base=16,    bitRange=16-16
;`ISPR.SETPEND17`           0xE000E200,        4, base=16,    bitRange=17-17
;`ISPR.SETPEND18`           0xE000E200,        4, base=16,    bitRange=18-18
;`ISPR.SETPEND19`           0xE000E200,        4, base=16,    bitRange=19-19
;`ISPR.SETPEND20`           0xE000E200,        4, base=16,    bitRange=20-20
;`ISPR.SETPEND21`           0xE000E200,        4, base=16,    bitRange=21-21
;`ISPR.SETPEND22`           0xE000E200,        4, base=16,    bitRange=22-22
;`ISPR.SETPEND23`           0xE000E200,        4, base=16,    bitRange=23-23
;`ISPR.SETPEND24`           0xE000E200,        4, base=16,    bitRange=24-24
;`ISPR.SETPEND25`           0xE000E200,        4, base=16,    bitRange=25-25
;`ISPR.SETPEND26`           0xE000E200,        4, base=16,    bitRange=26-26
;`ISPR.SETPEND27`           0xE000E200,        4, base=16,    bitRange=27-27
;`ISPR.SETPEND28`           0xE000E200,        4, base=16,    bitRange=28-28
;`ISPR.SETPEND29`           0xE000E200,        4, base=16,    bitRange=29-29
;`ISPR.SETPEND30`           0xE000E200,        4, base=16,    bitRange=30-30
;`ISPR.SETPEND31`           0xE000E200,        4, base=16,    bitRange=31-31

CLRPEND0                 EQU  0xE000E280
;`CLRPEND0.CLRPEND0`        0xE000E280,        4, base=16,    bitRange=0-0
;`CLRPEND0.CLRPEND1`        0xE000E280,        4, base=16,    bitRange=1-1
;`CLRPEND0.CLRPEND2`        0xE000E280,        4, base=16,    bitRange=2-2
;`CLRPEND0.CLRPEND3`        0xE000E280,        4, base=16,    bitRange=3-3
;`CLRPEND0.CLRPEND4`        0xE000E280,        4, base=16,    bitRange=4-4
;`CLRPEND0.CLRPEND5`        0xE000E280,        4, base=16,    bitRange=5-5
;`CLRPEND0.CLRPEND6`        0xE000E280,        4, base=16,    bitRange=6-6
;`CLRPEND0.CLRPEND7`        0xE000E280,        4, base=16,    bitRange=7-7
;`CLRPEND0.CLRPEND8`        0xE000E280,        4, base=16,    bitRange=8-8
;`CLRPEND0.CLRPEND9`        0xE000E280,        4, base=16,    bitRange=9-9
;`CLRPEND0.CLRPEND10`       0xE000E280,        4, base=16,    bitRange=10-10
;`CLRPEND0.CLRPEND11`       0xE000E280,        4, base=16,    bitRange=11-11
;`CLRPEND0.CLRPEND12`       0xE000E280,        4, base=16,    bitRange=12-12
;`CLRPEND0.CLRPEND13`       0xE000E280,        4, base=16,    bitRange=13-13
;`CLRPEND0.CLRPEND14`       0xE000E280,        4, base=16,    bitRange=14-14
;`CLRPEND0.CLRPEND15`       0xE000E280,        4, base=16,    bitRange=15-15
;`CLRPEND0.CLRPEND16`       0xE000E280,        4, base=16,    bitRange=16-16
;`CLRPEND0.CLRPEND17`       0xE000E280,        4, base=16,    bitRange=17-17
;`CLRPEND0.CLRPEND18`       0xE000E280,        4, base=16,    bitRange=18-18
;`CLRPEND0.CLRPEND19`       0xE000E280,        4, base=16,    bitRange=19-19
;`CLRPEND0.CLRPEND20`       0xE000E280,        4, base=16,    bitRange=20-20
;`CLRPEND0.CLRPEND21`       0xE000E280,        4, base=16,    bitRange=21-21
;`CLRPEND0.CLRPEND22`       0xE000E280,        4, base=16,    bitRange=22-22
;`CLRPEND0.CLRPEND23`       0xE000E280,        4, base=16,    bitRange=23-23
;`CLRPEND0.CLRPEND24`       0xE000E280,        4, base=16,    bitRange=24-24
;`CLRPEND0.CLRPEND25`       0xE000E280,        4, base=16,    bitRange=25-25
;`CLRPEND0.CLRPEND26`       0xE000E280,        4, base=16,    bitRange=26-26
;`CLRPEND0.CLRPEND27`       0xE000E280,        4, base=16,    bitRange=27-27
;`CLRPEND0.CLRPEND28`       0xE000E280,        4, base=16,    bitRange=28-28
;`CLRPEND0.CLRPEND29`       0xE000E280,        4, base=16,    bitRange=29-29
;`CLRPEND0.CLRPEND30`       0xE000E280,        4, base=16,    bitRange=30-30
;`CLRPEND0.CLRPEND31`       0xE000E280,        4, base=16,    bitRange=31-31

ICPR                     EQU  0xE000E280
;`ICPR.CLRPEND0`            0xE000E280,        4, base=16,    bitRange=0-0
;`ICPR.CLRPEND1`            0xE000E280,        4, base=16,    bitRange=1-1
;`ICPR.CLRPEND2`            0xE000E280,        4, base=16,    bitRange=2-2
;`ICPR.CLRPEND3`            0xE000E280,        4, base=16,    bitRange=3-3
;`ICPR.CLRPEND4`            0xE000E280,        4, base=16,    bitRange=4-4
;`ICPR.CLRPEND5`            0xE000E280,        4, base=16,    bitRange=5-5
;`ICPR.CLRPEND6`            0xE000E280,        4, base=16,    bitRange=6-6
;`ICPR.CLRPEND7`            0xE000E280,        4, base=16,    bitRange=7-7
;`ICPR.CLRPEND8`            0xE000E280,        4, base=16,    bitRange=8-8
;`ICPR.CLRPEND9`            0xE000E280,        4, base=16,    bitRange=9-9
;`ICPR.CLRPEND10`           0xE000E280,        4, base=16,    bitRange=10-10
;`ICPR.CLRPEND11`           0xE000E280,        4, base=16,    bitRange=11-11
;`ICPR.CLRPEND12`           0xE000E280,        4, base=16,    bitRange=12-12
;`ICPR.CLRPEND13`           0xE000E280,        4, base=16,    bitRange=13-13
;`ICPR.CLRPEND14`           0xE000E280,        4, base=16,    bitRange=14-14
;`ICPR.CLRPEND15`           0xE000E280,        4, base=16,    bitRange=15-15
;`ICPR.CLRPEND16`           0xE000E280,        4, base=16,    bitRange=16-16
;`ICPR.CLRPEND17`           0xE000E280,        4, base=16,    bitRange=17-17
;`ICPR.CLRPEND18`           0xE000E280,        4, base=16,    bitRange=18-18
;`ICPR.CLRPEND19`           0xE000E280,        4, base=16,    bitRange=19-19
;`ICPR.CLRPEND20`           0xE000E280,        4, base=16,    bitRange=20-20
;`ICPR.CLRPEND21`           0xE000E280,        4, base=16,    bitRange=21-21
;`ICPR.CLRPEND22`           0xE000E280,        4, base=16,    bitRange=22-22
;`ICPR.CLRPEND23`           0xE000E280,        4, base=16,    bitRange=23-23
;`ICPR.CLRPEND24`           0xE000E280,        4, base=16,    bitRange=24-24
;`ICPR.CLRPEND25`           0xE000E280,        4, base=16,    bitRange=25-25
;`ICPR.CLRPEND26`           0xE000E280,        4, base=16,    bitRange=26-26
;`ICPR.CLRPEND27`           0xE000E280,        4, base=16,    bitRange=27-27
;`ICPR.CLRPEND28`           0xE000E280,        4, base=16,    bitRange=28-28
;`ICPR.CLRPEND29`           0xE000E280,        4, base=16,    bitRange=29-29
;`ICPR.CLRPEND30`           0xE000E280,        4, base=16,    bitRange=30-30
;`ICPR.CLRPEND31`           0xE000E280,        4, base=16,    bitRange=31-31

IP0                      EQU  0xE000E400
;`IP0.PRI_0`                0xE000E400,        4, base=16,    bitRange=0-7
;`IP0.PRI_1`                0xE000E400,        4, base=16,    bitRange=8-15
;`IP0.PRI_2`                0xE000E400,        4, base=16,    bitRange=16-23
;`IP0.PRI_3`                0xE000E400,        4, base=16,    bitRange=24-31

IP1                      EQU  0xE000E404
;`IP1.PRI_4`                0xE000E404,        4, base=16,    bitRange=0-7
;`IP1.PRI_5`                0xE000E404,        4, base=16,    bitRange=8-15
;`IP1.PRI_6`                0xE000E404,        4, base=16,    bitRange=16-23
;`IP1.PRI_7`                0xE000E404,        4, base=16,    bitRange=24-31

IP2                      EQU  0xE000E408
;`IP2.PRI_8`                0xE000E408,        4, base=16,    bitRange=0-7
;`IP2.PRI_9`                0xE000E408,        4, base=16,    bitRange=8-15
;`IP2.PRI_10`               0xE000E408,        4, base=16,    bitRange=16-23
;`IP2.PRI_11`               0xE000E408,        4, base=16,    bitRange=24-31

IP3                      EQU  0xE000E40C
;`IP3.PRI_12`               0xE000E40C,        4, base=16,    bitRange=0-7
;`IP3.PRI_13`               0xE000E40C,        4, base=16,    bitRange=8-15
;`IP3.PRI_14`               0xE000E40C,        4, base=16,    bitRange=16-23
;`IP3.PRI_15`               0xE000E40C,        4, base=16,    bitRange=24-31

IP4                      EQU  0xE000E410
;`IP4.PRI_16`               0xE000E410,        4, base=16,    bitRange=0-7
;`IP4.PRI_17`               0xE000E410,        4, base=16,    bitRange=8-15
;`IP4.PRI_18`               0xE000E410,        4, base=16,    bitRange=16-23
;`IP4.PRI_19`               0xE000E410,        4, base=16,    bitRange=24-31

IP5                      EQU  0xE000E414
;`IP5.PRI_20`               0xE000E414,        4, base=16,    bitRange=0-7
;`IP5.PRI_21`               0xE000E414,        4, base=16,    bitRange=8-15
;`IP5.PRI_22`               0xE000E414,        4, base=16,    bitRange=16-23
;`IP5.PRI_23`               0xE000E414,        4, base=16,    bitRange=24-31

IP6                      EQU  0xE000E418
;`IP6.PRI_24`               0xE000E418,        4, base=16,    bitRange=0-7
;`IP6.PRI_25`               0xE000E418,        4, base=16,    bitRange=8-15
;`IP6.PRI_26`               0xE000E418,        4, base=16,    bitRange=16-23
;`IP6.PRI_27`               0xE000E418,        4, base=16,    bitRange=24-31

IP7                      EQU  0xE000E41C
;`IP7.PRI_28`               0xE000E41C,        4, base=16,    bitRange=0-7
;`IP7.PRI_29`               0xE000E41C,        4, base=16,    bitRange=8-15
;`IP7.PRI_30`               0xE000E41C,        4, base=16,    bitRange=16-23
;`IP7.PRI_31`               0xE000E41C,        4, base=16,    bitRange=24-31

CPUIDBR                  EQU  0xE000ED00
;`CPUIDBR.REVISION`         0xE000ED00,        4, base=16,    bitRange=0-3
;`CPUIDBR.PARTNO`           0xE000ED00,        4, base=16,    bitRange=4-15
;`CPUIDBR.CONSTANT`         0xE000ED00,        4, base=16,    bitRange=16-19
;`CPUIDBR.VARIANT`          0xE000ED00,        4, base=16,    bitRange=20-23
;`CPUIDBR.IMPLEMENTER`      0xE000ED00,        4, base=16,    bitRange=24-31

CPUID                    EQU  0xE000ED00
;`CPUID.REVISION`           0xE000ED00,        4, base=16,    bitRange=0-3
;`CPUID.PARTNO`             0xE000ED00,        4, base=16,    bitRange=4-15
;`CPUID.CONSTANT`           0xE000ED00,        4, base=16,    bitRange=16-19
;`CPUID.VARIANT`            0xE000ED00,        4, base=16,    bitRange=20-23
;`CPUID.IMPLEMENTER`        0xE000ED00,        4, base=16,    bitRange=24-31

ICSR                     EQU  0xE000ED04
;`ICSR.VECTACTIVE`          0xE000ED04,        4, base=16,    bitRange=0-5
;`ICSR.VECTPENDING`         0xE000ED04,        4, base=16,    bitRange=12-17
;`ICSR.ISRPENDING`          0xE000ED04,        4, base=16,    bitRange=22-22
;`ICSR.PENDSTCLR`           0xE000ED04,        4, base=16,    bitRange=25-25
;`ICSR.PENDSTSET`           0xE000ED04,        4, base=16,    bitRange=26-26
;`ICSR.PENDSVCLR`           0xE000ED04,        4, base=16,    bitRange=27-27
;`ICSR.PENDSVSET`           0xE000ED04,        4, base=16,    bitRange=28-28
;`ICSR.NMIPENDSET`          0xE000ED04,        4, base=16,    bitRange=31-31

AIRCR                    EQU  0xE000ED0C
;`AIRCR.VECTCLRACTIVE`      0xE000ED0C,        4, base=16,    bitRange=1-1
;`AIRCR.SYSRESETREQ`        0xE000ED0C,        4, base=16,    bitRange=2-2
;`AIRCR.ENDIANESS`          0xE000ED0C,        4, base=16,    bitRange=15-15
;`AIRCR.VECTKEY`            0xE000ED0C,        4, base=16,    bitRange=16-31

SCR                      EQU  0xE000ED10
;`SCR.SLEEPONEXIT`          0xE000ED10,        4, base=16,    bitRange=1-1
;`SCR.SLEEPDEEP`            0xE000ED10,        4, base=16,    bitRange=2-2
;`SCR.SEVONPEND`            0xE000ED10,        4, base=16,    bitRange=4-4

CCR                      EQU  0xE000ED14
;`CCR.UNALIGN_TRP`          0xE000ED14,        4, base=16,    bitRange=3-3
;`CCR.STKALIGN`             0xE000ED14,        4, base=16,    bitRange=8-8

SHPR2                    EQU  0xE000ED1C
;`SHPR2.PRI_11`             0xE000ED1C,        4, base=16,    bitRange=24-31

SHPR3                    EQU  0xE000ED20
;`SHPR3.PRI_14`             0xE000ED20,        4, base=16,    bitRange=16-23
;`SHPR3.PRI_15`             0xE000ED20,        4, base=16,    bitRange=24-31


;
;               System control block
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


SYSMEMREMAP              EQU  0x40048000
;`SYSMEMREMAP.MAP`          0x40048000,        4, base=16,    bitRange=0-1

PRESETCTRL               EQU  0x40048004
;`PRESETCTRL.SSP0_RST_N`    0x40048004,        4, base=16,    bitRange=0-0
;`PRESETCTRL.I2C_RST_N`     0x40048004,        4, base=16,    bitRange=1-1
;`PRESETCTRL.SSP1_RST_N`    0x40048004,        4, base=16,    bitRange=2-2

SYSPLLCTRL               EQU  0x40048008
;`SYSPLLCTRL.MSEL`          0x40048008,        4, base=16,    bitRange=0-4
;`SYSPLLCTRL.PSEL`          0x40048008,        4, base=16,    bitRange=5-6

SYSPLLSTAT               EQU  0x4004800C
;`SYSPLLSTAT.LOCK`          0x4004800C,        4, base=16,    bitRange=0-0

SYSOSCCTRL               EQU  0x40048020
;`SYSOSCCTRL.BYPASS`        0x40048020,        4, base=16,    bitRange=0-0
;`SYSOSCCTRL.FREQRANGE`     0x40048020,        4, base=16,    bitRange=1-1

WDTOSCCTRL               EQU  0x40048024
;`WDTOSCCTRL.DIVSEL`        0x40048024,        4, base=16,    bitRange=0-4
;`WDTOSCCTRL.FREQSEL`       0x40048024,        4, base=16,    bitRange=5-8

IRCCTRL                  EQU  0x40048028
;`IRCCTRL.TRIM`             0x40048028,        4, base=16,    bitRange=0-7

SYSRESSTAT               EQU  0x40048030
;`SYSRESSTAT.POR`           0x40048030,        4, base=16,    bitRange=0-0
;`SYSRESSTAT.EXTRST`        0x40048030,        4, base=16,    bitRange=1-1
;`SYSRESSTAT.WDT`           0x40048030,        4, base=16,    bitRange=2-2
;`SYSRESSTAT.BOD`           0x40048030,        4, base=16,    bitRange=3-3
;`SYSRESSTAT.SYSRST`        0x40048030,        4, base=16,    bitRange=4-4

SYSPLLCLKSEL             EQU  0x40048040
;`SYSPLLCLKSEL.SEL`         0x40048040,        4, base=16,    bitRange=0-1

SYSPLLCLKUEN             EQU  0x40048044
;`SYSPLLCLKUEN.ENA`         0x40048044,        4, base=16,    bitRange=0-0

MAINCLKSEL               EQU  0x40048070
;`MAINCLKSEL.SEL`           0x40048070,        4, base=16,    bitRange=0-1

MAINCLKUEN               EQU  0x40048074
;`MAINCLKUEN.ENA`           0x40048074,        4, base=16,    bitRange=0-0

SYSAHBCLKDIV             EQU  0x40048078
;`SYSAHBCLKDIV.DIV`         0x40048078,        4, base=16,    bitRange=0-7

SYSAHBCLKCTRL            EQU  0x40048080
;`SYSAHBCLKCTRL.SYS`        0x40048080,        4, base=16,    bitRange=0-0
;`SYSAHBCLKCTRL.ROM`        0x40048080,        4, base=16,    bitRange=1-1
;`SYSAHBCLKCTRL.RAM`        0x40048080,        4, base=16,    bitRange=2-2
;`SYSAHBCLKCTRL.FLASHREG`   0x40048080,        4, base=16,    bitRange=3-3
;`SYSAHBCLKCTRL.FLASHARRAY` 0x40048080,        4, base=16,    bitRange=4-4
;`SYSAHBCLKCTRL.I2C`        0x40048080,        4, base=16,    bitRange=5-5
;`SYSAHBCLKCTRL.GPIO`       0x40048080,        4, base=16,    bitRange=6-6
;`SYSAHBCLKCTRL.CT16B0`     0x40048080,        4, base=16,    bitRange=7-7
;`SYSAHBCLKCTRL.CT16B1`     0x40048080,        4, base=16,    bitRange=8-8
;`SYSAHBCLKCTRL.CT32B0`     0x40048080,        4, base=16,    bitRange=9-9
;`SYSAHBCLKCTRL.CT32B1`     0x40048080,        4, base=16,    bitRange=10-10
;`SYSAHBCLKCTRL.SSP0`       0x40048080,        4, base=16,    bitRange=11-11
;`SYSAHBCLKCTRL.UART`       0x40048080,        4, base=16,    bitRange=12-12
;`SYSAHBCLKCTRL.ADC`        0x40048080,        4, base=16,    bitRange=13-13
;`SYSAHBCLKCTRL.WDT`        0x40048080,        4, base=16,    bitRange=15-15
;`SYSAHBCLKCTRL.IOCON`      0x40048080,        4, base=16,    bitRange=16-16
;`SYSAHBCLKCTRL.SSP1`       0x40048080,        4, base=16,    bitRange=18-18

SSP0CLKDIV               EQU  0x40048094
;`SSP0CLKDIV.DIV`           0x40048094,        4, base=16,    bitRange=0-7

UARTCLKDIV               EQU  0x40048098
;`UARTCLKDIV.DIV`           0x40048098,        4, base=16,    bitRange=0-7

SSP1CLKDIV               EQU  0x4004809C
;`SSP1CLKDIV.DIV`           0x4004809C,        4, base=16,    bitRange=0-7

WDTCLKSEL                EQU  0x400480D0
;`WDTCLKSEL.SEL`            0x400480D0,        4, base=16,    bitRange=0-1

WDTCLKUEN                EQU  0x400480D4
;`WDTCLKUEN.ENA`            0x400480D4,        4, base=16,    bitRange=0-0

WDTCLKDIV                EQU  0x400480D8
;`WDTCLKDIV.DIV`            0x400480D8,        4, base=16,    bitRange=0-7

CLKOUTCLKSEL             EQU  0x400480E0
;`CLKOUTCLKSEL.SEL`         0x400480E0,        4, base=16,    bitRange=0-1

CLKOUTUEN                EQU  0x400480E4
;`CLKOUTUEN.ENA`            0x400480E4,        4, base=16,    bitRange=0-0

CLKOUTCLKDIV                EQU  0x400480E8
;`CLKOUTDIV.DIV`            0x400480E8,        4, base=16,    bitRange=0-7

PIOPORCAP0               EQU  0x40048100
;`PIOPORCAP0.CAPPIO0_0`     0x40048100,        4, base=16,    bitRange=0-0
;`PIOPORCAP0.CAPPIO0_1`     0x40048100,        4, base=16,    bitRange=1-1
;`PIOPORCAP0.CAPPIO0_2`     0x40048100,        4, base=16,    bitRange=2-2
;`PIOPORCAP0.CAPPIO0_3`     0x40048100,        4, base=16,    bitRange=3-3
;`PIOPORCAP0.CAPPIO0_4`     0x40048100,        4, base=16,    bitRange=4-4
;`PIOPORCAP0.CAPPIO0_5`     0x40048100,        4, base=16,    bitRange=5-5
;`PIOPORCAP0.CAPPIO0_6`     0x40048100,        4, base=16,    bitRange=6-6
;`PIOPORCAP0.CAPPIO0_7`     0x40048100,        4, base=16,    bitRange=7-7
;`PIOPORCAP0.CAPPIO0_8`     0x40048100,        4, base=16,    bitRange=8-8
;`PIOPORCAP0.CAPPIO0_9`     0x40048100,        4, base=16,    bitRange=9-9
;`PIOPORCAP0.CAPPIO0_10`    0x40048100,        4, base=16,    bitRange=10-10
;`PIOPORCAP0.CAPPIO0_11`    0x40048100,        4, base=16,    bitRange=11-11
;`PIOPORCAP0.CAPPIO1_0`     0x40048100,        4, base=16,    bitRange=12-12
;`PIOPORCAP0.CAPPIO1_1`     0x40048100,        4, base=16,    bitRange=13-13
;`PIOPORCAP0.CAPPIO1_2`     0x40048100,        4, base=16,    bitRange=14-14
;`PIOPORCAP0.CAPPIO1_3`     0x40048100,        4, base=16,    bitRange=15-15
;`PIOPORCAP0.CAPPIO1_4`     0x40048100,        4, base=16,    bitRange=16-16
;`PIOPORCAP0.CAPPIO1_5`     0x40048100,        4, base=16,    bitRange=17-17
;`PIOPORCAP0.CAPPIO1_6`     0x40048100,        4, base=16,    bitRange=18-18
;`PIOPORCAP0.CAPPIO1_7`     0x40048100,        4, base=16,    bitRange=19-19
;`PIOPORCAP0.CAPPIO1_8`     0x40048100,        4, base=16,    bitRange=20-20
;`PIOPORCAP0.CAPPIO1_9`     0x40048100,        4, base=16,    bitRange=21-21
;`PIOPORCAP0.CAPPIO1_10`    0x40048100,        4, base=16,    bitRange=22-22
;`PIOPORCAP0.CAPPIO1_11`    0x40048100,        4, base=16,    bitRange=23-23
;`PIOPORCAP0.CAPPIO2_0`     0x40048100,        4, base=16,    bitRange=24-24
;`PIOPORCAP0.CAPPIO2_1`     0x40048100,        4, base=16,    bitRange=25-25
;`PIOPORCAP0.CAPPIO2_2`     0x40048100,        4, base=16,    bitRange=26-26
;`PIOPORCAP0.CAPPIO2_3`     0x40048100,        4, base=16,    bitRange=27-27
;`PIOPORCAP0.CAPPIO2_4`     0x40048100,        4, base=16,    bitRange=28-28
;`PIOPORCAP0.CAPPIO2_5`     0x40048100,        4, base=16,    bitRange=29-29
;`PIOPORCAP0.CAPPIO2_6`     0x40048100,        4, base=16,    bitRange=30-30
;`PIOPORCAP0.CAPPIO2_7`     0x40048100,        4, base=16,    bitRange=31-31

PIOPORCAP1               EQU  0x40048104
;`PIOPORCAP1.CAPPIO2_8`     0x40048104,        4, base=16,    bitRange=0-0
;`PIOPORCAP1.CAPPIO2_9`     0x40048104,        4, base=16,    bitRange=1-1
;`PIOPORCAP1.CAPPIO2_10`    0x40048104,        4, base=16,    bitRange=2-2
;`PIOPORCAP1.CAPPIO2_11`    0x40048104,        4, base=16,    bitRange=3-3
;`PIOPORCAP1.CAPPIO3_0`     0x40048104,        4, base=16,    bitRange=4-4
;`PIOPORCAP1.CAPPIO3_1`     0x40048104,        4, base=16,    bitRange=5-5
;`PIOPORCAP1.CAPPIO3_2`     0x40048104,        4, base=16,    bitRange=6-6
;`PIOPORCAP1.CAPPIO3_3`     0x40048104,        4, base=16,    bitRange=7-7
;`PIOPORCAP1.CAPPIO3_4`     0x40048104,        4, base=16,    bitRange=8-8
;`PIOPORCAP1.CAPPIO3_5`     0x40048104,        4, base=16,    bitRange=9-9

BODCTRL                  EQU  0x40048150
;`BODCTRL.BODRSTLEV`        0x40048150,        4, base=16,    bitRange=0-1
;`BODCTRL.BODINTVAL`        0x40048150,        4, base=16,    bitRange=2-3
;`BODCTRL.BODRSTENA`        0x40048150,        4, base=16,    bitRange=4-4

SYSTCKCAL                EQU  0x40048154
;`SYSTCKCAL.CAL`            0x40048154,        4, base=16,    bitRange=0-25

NMISRC                   EQU  0x40048174
;`NMISRC.IRQNO`             0x40048174,        4, base=16,    bitRange=0-4
;`NMISRC.NMIEN`             0x40048174,        4, base=16,    bitRange=31-31

STARTAPRP0               EQU  0x40048200
;`STARTAPRP0.APRPIO0_0`     0x40048200,        4, base=16,    bitRange=0-0
;`STARTAPRP0.APRPIO0_1`     0x40048200,        4, base=16,    bitRange=1-1
;`STARTAPRP0.APRPIO0_2`     0x40048200,        4, base=16,    bitRange=2-2
;`STARTAPRP0.APRPIO0_3`     0x40048200,        4, base=16,    bitRange=3-3
;`STARTAPRP0.APRPIO0_4`     0x40048200,        4, base=16,    bitRange=4-4
;`STARTAPRP0.APRPIO0_5`     0x40048200,        4, base=16,    bitRange=5-5
;`STARTAPRP0.APRPIO0_6`     0x40048200,        4, base=16,    bitRange=6-6
;`STARTAPRP0.APRPIO0_7`     0x40048200,        4, base=16,    bitRange=7-7
;`STARTAPRP0.APRPIO0_8`     0x40048200,        4, base=16,    bitRange=8-8
;`STARTAPRP0.APRPIO0_9`     0x40048200,        4, base=16,    bitRange=9-9
;`STARTAPRP0.APRPIO0_10`    0x40048200,        4, base=16,    bitRange=10-10
;`STARTAPRP0.APRPIO0_11`    0x40048200,        4, base=16,    bitRange=11-11
;`STARTAPRP0.APRPIO1_0`     0x40048200,        4, base=16,    bitRange=12-12

STARTERP0                EQU  0x40048204
;`STARTERP0.ERPIO0_0`       0x40048204,        4, base=16,    bitRange=0-0
;`STARTERP0.ERPIO0_1`       0x40048204,        4, base=16,    bitRange=1-1
;`STARTERP0.ERPIO0_2`       0x40048204,        4, base=16,    bitRange=2-2
;`STARTERP0.ERPIO0_3`       0x40048204,        4, base=16,    bitRange=3-3
;`STARTERP0.ERPIO0_4`       0x40048204,        4, base=16,    bitRange=4-4
;`STARTERP0.ERPIO0_5`       0x40048204,        4, base=16,    bitRange=5-5
;`STARTERP0.ERPIO0_6`       0x40048204,        4, base=16,    bitRange=6-6
;`STARTERP0.ERPIO0_7`       0x40048204,        4, base=16,    bitRange=7-7
;`STARTERP0.ERPIO0_8`       0x40048204,        4, base=16,    bitRange=8-8
;`STARTERP0.ERPIO0_9`       0x40048204,        4, base=16,    bitRange=9-9
;`STARTERP0.ERPIO0_10`      0x40048204,        4, base=16,    bitRange=10-10
;`STARTERP0.ERPIO0_11`      0x40048204,        4, base=16,    bitRange=11-11
;`STARTERP0.ERPIO1_0`       0x40048204,        4, base=16,    bitRange=12-12

STARTRSRP0CLR            EQU  0x40048208

STARTSRP0                EQU  0x4004820C
;`STARTSRP0.SRPIO0_0`       0x4004820C,        4, base=16,    bitRange=0-0
;`STARTSRP0.SRPIO0_1`       0x4004820C,        4, base=16,    bitRange=1-1
;`STARTSRP0.SRPIO0_2`       0x4004820C,        4, base=16,    bitRange=2-2
;`STARTSRP0.SRPIO0_3`       0x4004820C,        4, base=16,    bitRange=3-3
;`STARTSRP0.SRPIO0_4`       0x4004820C,        4, base=16,    bitRange=4-4
;`STARTSRP0.SRPIO0_5`       0x4004820C,        4, base=16,    bitRange=5-5
;`STARTSRP0.SRPIO0_6`       0x4004820C,        4, base=16,    bitRange=6-6
;`STARTSRP0.SRPIO0_7`       0x4004820C,        4, base=16,    bitRange=7-7
;`STARTSRP0.SRPIO0_8`       0x4004820C,        4, base=16,    bitRange=8-8
;`STARTSRP0.SRPIO0_9`       0x4004820C,        4, base=16,    bitRange=9-9
;`STARTSRP0.SRPIO0_10`      0x4004820C,        4, base=16,    bitRange=10-10
;`STARTSRP0.SRPIO0_11`      0x4004820C,        4, base=16,    bitRange=11-11
;`STARTSRP0.SRPIO1_0`       0x4004820C,        4, base=16,    bitRange=12-12

PDSLEEPCFG               EQU  0x40048230
;`PDSLEEPCFG.BOD_PD`        0x40048230,        4, base=16,    bitRange=3-3
;`PDSLEEPCFG.WDTOSC_PD`     0x40048230,        4, base=16,    bitRange=6-6

PDAWAKECFG               EQU  0x40048234
;`PDAWAKECFG.IRCOUT_PD`     0x40048234,        4, base=16,    bitRange=0-0
;`PDAWAKECFG.IRC_PD`        0x40048234,        4, base=16,    bitRange=1-1
;`PDAWAKECFG.FLASH_PD`      0x40048234,        4, base=16,    bitRange=2-2
;`PDAWAKECFG.BOD_PD`        0x40048234,        4, base=16,    bitRange=3-3
;`PDAWAKECFG.ADC_PD`        0x40048234,        4, base=16,    bitRange=4-4
;`PDAWAKECFG.SYSOSC_PD`     0x40048234,        4, base=16,    bitRange=5-5
;`PDAWAKECFG.WDTOSC_PD`     0x40048234,        4, base=16,    bitRange=6-6
;`PDAWAKECFG.SYSPLL_PD`     0x40048234,        4, base=16,    bitRange=7-7

PDRUNCFG                 EQU  0x40048238
;`PDRUNCFG.IRCOUT_PD`       0x40048238,        4, base=16,    bitRange=0-0
;`PDRUNCFG.IRC_PD`          0x40048238,        4, base=16,    bitRange=1-1
;`PDRUNCFG.FLASH_PD`        0x40048238,        4, base=16,    bitRange=2-2
;`PDRUNCFG.BOD_PD`          0x40048238,        4, base=16,    bitRange=3-3
;`PDRUNCFG.ADC_PD`          0x40048238,        4, base=16,    bitRange=4-4
;`PDRUNCFG.SYSOSC_PD`       0x40048238,        4, base=16,    bitRange=5-5
;`PDRUNCFG.WDTOSC_PD`       0x40048238,        4, base=16,    bitRange=6-6
;`PDRUNCFG.SYSPLL_PD`       0x40048238,        4, base=16,    bitRange=7-7

DEVICE_ID                EQU  0x400483F4


;
;               PMU
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


PCON                     EQU  0x40038000
;`PCON.DPDEN`               0x40038000,        4, base=16,    bitRange=1-1
;`PCON.SLEEPFLAG`           0x40038000,        4, base=16,    bitRange=8-8
;`PCON.DPDFLAG`             0x40038000,        4, base=16,    bitRange=11-11

GPREG0                   EQU  0x40038004

GPREG1                   EQU  0x40038008

GPREG2                   EQU  0x4003800C

GPREG3                   EQU  0x40038010

GPREG4                   EQU  0x40038014
;`GPREG4.WAKEUPHYS`         0x40038014,        4, base=16,    bitRange=10-10
;`GPREG4.GPDATA`            0x40038014,        4, base=16,    bitRange=11-31


;
;               I/O configuration
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


IOCON_PIO2_6             EQU  0x40044000
;`IOCON_PIO2_6.FUNC`        0x40044000,        4, base=16,    bitRange=0-2
;`IOCON_PIO2_6.MODE`        0x40044000,        4, base=16,    bitRange=3-4
;`IOCON_PIO2_6.HYS`         0x40044000,        4, base=16,    bitRange=5-5
;`IOCON_PIO2_6.OD`          0x40044000,        4, base=16,    bitRange=10-10

IOCON_PIO2_0             EQU  0x40044008
;`IOCON_PIO2_0.FUNC`        0x40044008,        4, base=16,    bitRange=0-2
;`IOCON_PIO2_0.MODE`        0x40044008,        4, base=16,    bitRange=3-4
;`IOCON_PIO2_0.HYS`         0x40044008,        4, base=16,    bitRange=5-5
;`IOCON_PIO2_0.OD`          0x40044008,        4, base=16,    bitRange=10-10

IOCON_RESET_PIO0_0       EQU  0x4004400C
;`IOCON_RESET_PIO0_0.FUNC`  0x4004400C,        4, base=16,    bitRange=0-2
;`IOCON_RESET_PIO0_0.MODE`  0x4004400C,        4, base=16,    bitRange=3-4
;`IOCON_RESET_PIO0_0.HYS`   0x4004400C,        4, base=16,    bitRange=5-5
;`IOCON_RESET_PIO0_0.OD`    0x4004400C,        4, base=16,    bitRange=10-10

IOCON_PIO0_1             EQU  0x40044010
;`IOCON_PIO0_1.FUNC`        0x40044010,        4, base=16,    bitRange=0-2
;`IOCON_PIO0_1.MODE`        0x40044010,        4, base=16,    bitRange=3-4
;`IOCON_PIO0_1.HYS`         0x40044010,        4, base=16,    bitRange=5-5
;`IOCON_PIO0_1.OD`          0x40044010,        4, base=16,    bitRange=10-10

IOCON_PIO1_8             EQU  0x40044014
;`IOCON_PIO1_8.FUNC`        0x40044014,        4, base=16,    bitRange=0-2
;`IOCON_PIO1_8.MODE`        0x40044014,        4, base=16,    bitRange=3-4
;`IOCON_PIO1_8.HYS`         0x40044014,        4, base=16,    bitRange=5-5
;`IOCON_PIO1_8.OD`          0x40044014,        4, base=16,    bitRange=10-10

IOCON_PIO0_2             EQU  0x4004401C
;`IOCON_PIO0_2.FUNC`        0x4004401C,        4, base=16,    bitRange=0-2
;`IOCON_PIO0_2.MODE`        0x4004401C,        4, base=16,    bitRange=3-4
;`IOCON_PIO0_2.HYS`         0x4004401C,        4, base=16,    bitRange=5-5
;`IOCON_PIO0_2.OD`          0x4004401C,        4, base=16,    bitRange=10-10

IOCON_PIO2_7             EQU  0x40044020
;`IOCON_PIO2_7.FUNC`        0x40044020,        4, base=16,    bitRange=0-2
;`IOCON_PIO2_7.MODE`        0x40044020,        4, base=16,    bitRange=3-4
;`IOCON_PIO2_7.HYS`         0x40044020,        4, base=16,    bitRange=5-5
;`IOCON_PIO2_7.OD`          0x40044020,        4, base=16,    bitRange=10-10

IOCON_PIO2_8             EQU  0x40044024
;`IOCON_PIO2_8.FUNC`        0x40044024,        4, base=16,    bitRange=0-2
;`IOCON_PIO2_8.MODE`        0x40044024,        4, base=16,    bitRange=3-4
;`IOCON_PIO2_8.HYS`         0x40044024,        4, base=16,    bitRange=5-5
;`IOCON_PIO2_8.OD`          0x40044024,        4, base=16,    bitRange=10-10

IOCON_PIO2_1             EQU  0x40044028
;`IOCON_PIO2_1.FUNC`        0x40044028,        4, base=16,    bitRange=0-2
;`IOCON_PIO2_1.MODE`        0x40044028,        4, base=16,    bitRange=3-4
;`IOCON_PIO2_1.HYS`         0x40044028,        4, base=16,    bitRange=5-5
;`IOCON_PIO2_1.OD`          0x40044028,        4, base=16,    bitRange=10-10

IOCON_PIO0_3             EQU  0x4004402C
;`IOCON_PIO0_3.FUNC`        0x4004402C,        4, base=16,    bitRange=0-2
;`IOCON_PIO0_3.MODE`        0x4004402C,        4, base=16,    bitRange=3-4
;`IOCON_PIO0_3.HYS`         0x4004402C,        4, base=16,    bitRange=5-5
;`IOCON_PIO0_3.OD`          0x4004402C,        4, base=16,    bitRange=10-10

IOCON_PIO0_4             EQU  0x40044030
;`IOCON_PIO0_4.FUNC`        0x40044030,        4, base=16,    bitRange=0-2
;`IOCON_PIO0_4.I2CMODE`     0x40044030,        4, base=16,    bitRange=8-9

IOCON_PIO0_5             EQU  0x40044034
;`IOCON_PIO0_5.FUNC`        0x40044034,        4, base=16,    bitRange=0-2
;`IOCON_PIO0_5.I2CMODE`     0x40044034,        4, base=16,    bitRange=8-9

IOCON_PIO1_9             EQU  0x40044038
;`IOCON_PIO1_9.FUNC`        0x40044038,        4, base=16,    bitRange=0-2
;`IOCON_PIO1_9.MODE`        0x40044038,        4, base=16,    bitRange=3-4
;`IOCON_PIO1_9.HYS`         0x40044038,        4, base=16,    bitRange=5-5
;`IOCON_PIO1_9.OD`          0x40044038,        4, base=16,    bitRange=10-10

IOCON_PIO3_4             EQU  0x4004403C
;`IOCON_PIO3_4.FUNC`        0x4004403C,        4, base=16,    bitRange=0-2
;`IOCON_PIO3_4.MODE`        0x4004403C,        4, base=16,    bitRange=3-4
;`IOCON_PIO3_4.HYS`         0x4004403C,        4, base=16,    bitRange=5-5
;`IOCON_PIO3_4.OD`          0x4004403C,        4, base=16,    bitRange=10-10

IOCON_PIO2_4             EQU  0x40044040
;`IOCON_PIO2_4.FUNC`        0x40044040,        4, base=16,    bitRange=0-2
;`IOCON_PIO2_4.MODE`        0x40044040,        4, base=16,    bitRange=3-4
;`IOCON_PIO2_4.HYS`         0x40044040,        4, base=16,    bitRange=5-5
;`IOCON_PIO2_4.OD`          0x40044040,        4, base=16,    bitRange=10-10

IOCON_PIO2_5             EQU  0x40044044
;`IOCON_PIO2_5.FUNC`        0x40044044,        4, base=16,    bitRange=0-2
;`IOCON_PIO2_5.MODE`        0x40044044,        4, base=16,    bitRange=3-4
;`IOCON_PIO2_5.HYS`         0x40044044,        4, base=16,    bitRange=5-5
;`IOCON_PIO2_5.OD`          0x40044044,        4, base=16,    bitRange=10-10

IOCON_PIO3_5             EQU  0x40044048
;`IOCON_PIO3_5.FUNC`        0x40044048,        4, base=16,    bitRange=0-2
;`IOCON_PIO3_5.MODE`        0x40044048,        4, base=16,    bitRange=3-4
;`IOCON_PIO3_5.HYS`         0x40044048,        4, base=16,    bitRange=5-5
;`IOCON_PIO3_5.OD`          0x40044048,        4, base=16,    bitRange=10-10

IOCON_PIO0_6             EQU  0x4004404C
;`IOCON_PIO0_6.FUNC`        0x4004404C,        4, base=16,    bitRange=0-2
;`IOCON_PIO0_6.MODE`        0x4004404C,        4, base=16,    bitRange=3-4
;`IOCON_PIO0_6.HYS`         0x4004404C,        4, base=16,    bitRange=5-5
;`IOCON_PIO0_6.OD`          0x4004404C,        4, base=16,    bitRange=10-10

IOCON_PIO0_7             EQU  0x40044050
;`IOCON_PIO0_7.FUNC`        0x40044050,        4, base=16,    bitRange=0-2
;`IOCON_PIO0_7.MODE`        0x40044050,        4, base=16,    bitRange=3-4
;`IOCON_PIO0_7.HYS`         0x40044050,        4, base=16,    bitRange=5-5
;`IOCON_PIO0_7.OD`          0x40044050,        4, base=16,    bitRange=10-10

IOCON_PIO2_9             EQU  0x40044054
;`IOCON_PIO2_9.FUNC`        0x40044054,        4, base=16,    bitRange=0-2
;`IOCON_PIO2_9.MODE`        0x40044054,        4, base=16,    bitRange=3-4
;`IOCON_PIO2_9.HYS`         0x40044054,        4, base=16,    bitRange=5-5
;`IOCON_PIO2_9.OD`          0x40044054,        4, base=16,    bitRange=10-10

IOCON_PIO2_10            EQU  0x40044058
;`IOCON_PIO2_10.FUNC`       0x40044058,        4, base=16,    bitRange=0-2
;`IOCON_PIO2_10.MODE`       0x40044058,        4, base=16,    bitRange=3-4
;`IOCON_PIO2_10.HYS`        0x40044058,        4, base=16,    bitRange=5-5
;`IOCON_PIO2_10.OD`         0x40044058,        4, base=16,    bitRange=10-10

IOCON_PIO2_2             EQU  0x4004405C
;`IOCON_PIO2_2.FUNC`        0x4004405C,        4, base=16,    bitRange=0-2
;`IOCON_PIO2_2.MODE`        0x4004405C,        4, base=16,    bitRange=3-4
;`IOCON_PIO2_2.HYS`         0x4004405C,        4, base=16,    bitRange=5-5
;`IOCON_PIO2_2.OD`          0x4004405C,        4, base=16,    bitRange=10-10

IOCON_PIO0_8             EQU  0x40044060
;`IOCON_PIO0_8.FUNC`        0x40044060,        4, base=16,    bitRange=0-2
;`IOCON_PIO0_8.MODE`        0x40044060,        4, base=16,    bitRange=3-4
;`IOCON_PIO0_8.HYS`         0x40044060,        4, base=16,    bitRange=5-5
;`IOCON_PIO0_8.OD`          0x40044060,        4, base=16,    bitRange=10-10

IOCON_PIO0_9             EQU  0x40044064
;`IOCON_PIO0_9.FUNC`        0x40044064,        4, base=16,    bitRange=0-2
;`IOCON_PIO0_9.MODE`        0x40044064,        4, base=16,    bitRange=3-4
;`IOCON_PIO0_9.HYS`         0x40044064,        4, base=16,    bitRange=5-5
;`IOCON_PIO0_9.OD`          0x40044064,        4, base=16,    bitRange=10-10

IOCON_SWCLK_PIO0_10      EQU  0x40044068
;`IOCON_SWCLK_PIO0_10.FUNC` 0x40044068,        4, base=16,    bitRange=0-2
;`IOCON_SWCLK_PIO0_10.MODE` 0x40044068,        4, base=16,    bitRange=3-4
;`IOCON_SWCLK_PIO0_10.HYS`  0x40044068,        4, base=16,    bitRange=5-5
;`IOCON_SWCLK_PIO0_10.OD`   0x40044068,        4, base=16,    bitRange=10-10

IOCON_PIO1_10            EQU  0x4004406C
;`IOCON_PIO1_10.FUNC`       0x4004406C,        4, base=16,    bitRange=0-2
;`IOCON_PIO1_10.MODE`       0x4004406C,        4, base=16,    bitRange=3-4
;`IOCON_PIO1_10.HYS`        0x4004406C,        4, base=16,    bitRange=5-5
;`IOCON_PIO1_10.ADMODE`     0x4004406C,        4, base=16,    bitRange=7-7
;`IOCON_PIO1_10.OD`         0x4004406C,        4, base=16,    bitRange=10-10

IOCON_PIO2_11            EQU  0x40044070
;`IOCON_PIO2_11.FUNC`       0x40044070,        4, base=16,    bitRange=0-2
;`IOCON_PIO2_11.MODE`       0x40044070,        4, base=16,    bitRange=3-4
;`IOCON_PIO2_11.HYS`        0x40044070,        4, base=16,    bitRange=5-5
;`IOCON_PIO2_11.OD`         0x40044070,        4, base=16,    bitRange=10-10

IOCON_R_PIO0_11          EQU  0x40044074
;`IOCON_R_PIO0_11.FUNC`     0x40044074,        4, base=16,    bitRange=0-2
;`IOCON_R_PIO0_11.MODE`     0x40044074,        4, base=16,    bitRange=3-4
;`IOCON_R_PIO0_11.HYS`      0x40044074,        4, base=16,    bitRange=5-5
;`IOCON_R_PIO0_11.ADMODE`   0x40044074,        4, base=16,    bitRange=7-7
;`IOCON_R_PIO0_11.OD`       0x40044074,        4, base=16,    bitRange=10-10

IOCON_R_PIO1_0           EQU  0x40044078
;`IOCON_R_PIO1_0.FUNC`      0x40044078,        4, base=16,    bitRange=0-2
;`IOCON_R_PIO1_0.MODE`      0x40044078,        4, base=16,    bitRange=3-4
;`IOCON_R_PIO1_0.HYS`       0x40044078,        4, base=16,    bitRange=5-5
;`IOCON_R_PIO1_0.ADMODE`    0x40044078,        4, base=16,    bitRange=7-7
;`IOCON_R_PIO1_0.OD`        0x40044078,        4, base=16,    bitRange=10-10

IOCON_R_PIO1_1           EQU  0x4004407C
;`IOCON_R_PIO1_1.FUNC`      0x4004407C,        4, base=16,    bitRange=0-2
;`IOCON_R_PIO1_1.MODE`      0x4004407C,        4, base=16,    bitRange=3-4
;`IOCON_R_PIO1_1.HYS`       0x4004407C,        4, base=16,    bitRange=5-5
;`IOCON_R_PIO1_1.ADMODE`    0x4004407C,        4, base=16,    bitRange=7-7
;`IOCON_R_PIO1_1.OD`        0x4004407C,        4, base=16,    bitRange=10-10

IOCON_R_PIO1_2           EQU  0x40044080
;`IOCON_R_PIO1_2.FUNC`      0x40044080,        4, base=16,    bitRange=0-2
;`IOCON_R_PIO1_2.MODE`      0x40044080,        4, base=16,    bitRange=3-4
;`IOCON_R_PIO1_2.HYS`       0x40044080,        4, base=16,    bitRange=5-5
;`IOCON_R_PIO1_2.ADMODE`    0x40044080,        4, base=16,    bitRange=7-7
;`IOCON_R_PIO1_2.OD`        0x40044080,        4, base=16,    bitRange=10-10

IOCON_PIO3_0             EQU  0x40044084
;`IOCON_PIO3_0.FUNC`        0x40044084,        4, base=16,    bitRange=0-2
;`IOCON_PIO3_0.MODE`        0x40044084,        4, base=16,    bitRange=3-4
;`IOCON_PIO3_0.HYS`         0x40044084,        4, base=16,    bitRange=5-5
;`IOCON_PIO3_0.OD`          0x40044084,        4, base=16,    bitRange=10-10

IOCON_PIO3_1             EQU  0x40044088
;`IOCON_PIO3_1.FUNC`        0x40044088,        4, base=16,    bitRange=0-2
;`IOCON_PIO3_1.MODE`        0x40044088,        4, base=16,    bitRange=3-4
;`IOCON_PIO3_1.HYS`         0x40044088,        4, base=16,    bitRange=5-5
;`IOCON_PIO3_1.OD`          0x40044088,        4, base=16,    bitRange=10-10

IOCON_PIO2_3             EQU  0x4004408C
;`IOCON_PIO2_3.FUNC`        0x4004408C,        4, base=16,    bitRange=0-2
;`IOCON_PIO2_3.MODE`        0x4004408C,        4, base=16,    bitRange=3-4
;`IOCON_PIO2_3.HYS`         0x4004408C,        4, base=16,    bitRange=5-5
;`IOCON_PIO2_3.OD`          0x4004408C,        4, base=16,    bitRange=10-10

IOCON_SWDIO_PIO1_3       EQU  0x40044090
;`IOCON_SWDIO_PIO1_3.FUNC`  0x40044090,        4, base=16,    bitRange=0-2
;`IOCON_SWDIO_PIO1_3.MODE`  0x40044090,        4, base=16,    bitRange=3-4
;`IOCON_SWDIO_PIO1_3.HYS`   0x40044090,        4, base=16,    bitRange=5-5
;`IOCON_SWDIO_PIO1_3.ADMODE` 0x40044090,        4, base=16,    bitRange=7-7
;`IOCON_SWDIO_PIO1_3.OD`    0x40044090,        4, base=16,    bitRange=10-10

IOCON_PIO1_4             EQU  0x40044094
;`IOCON_PIO1_4.FUNC`        0x40044094,        4, base=16,    bitRange=0-2
;`IOCON_PIO1_4.MODE`        0x40044094,        4, base=16,    bitRange=3-4
;`IOCON_PIO1_4.HYS`         0x40044094,        4, base=16,    bitRange=5-5
;`IOCON_PIO1_4.ADMODE`      0x40044094,        4, base=16,    bitRange=7-7
;`IOCON_PIO1_4.OD`          0x40044094,        4, base=16,    bitRange=10-10

IOCON_PIO1_11            EQU  0x40044098
;`IOCON_PIO1_11.FUNC`       0x40044098,        4, base=16,    bitRange=0-2
;`IOCON_PIO1_11.MODE`       0x40044098,        4, base=16,    bitRange=3-4
;`IOCON_PIO1_11.HYS`        0x40044098,        4, base=16,    bitRange=5-5
;`IOCON_PIO1_11.ADMODE`     0x40044098,        4, base=16,    bitRange=7-7
;`IOCON_PIO1_11.OD`         0x40044098,        4, base=16,    bitRange=10-10

IOCON_PIO3_2             EQU  0x4004409C
;`IOCON_PIO3_2.FUNC`        0x4004409C,        4, base=16,    bitRange=0-2
;`IOCON_PIO3_2.MODE`        0x4004409C,        4, base=16,    bitRange=3-4
;`IOCON_PIO3_2.HYS`         0x4004409C,        4, base=16,    bitRange=5-5
;`IOCON_PIO3_2.OD`          0x4004409C,        4, base=16,    bitRange=10-10

IOCON_PIO1_5             EQU  0x400440A0
;`IOCON_PIO1_5.FUNC`        0x400440A0,        4, base=16,    bitRange=0-2
;`IOCON_PIO1_5.MODE`        0x400440A0,        4, base=16,    bitRange=3-4
;`IOCON_PIO1_5.HYS`         0x400440A0,        4, base=16,    bitRange=5-5
;`IOCON_PIO1_5.OD`          0x400440A0,        4, base=16,    bitRange=10-10

IOCON_PIO1_6             EQU  0x400440A4
;`IOCON_PIO1_6.FUNC`        0x400440A4,        4, base=16,    bitRange=0-2
;`IOCON_PIO1_6.MODE`        0x400440A4,        4, base=16,    bitRange=3-4
;`IOCON_PIO1_6.HYS`         0x400440A4,        4, base=16,    bitRange=5-5
;`IOCON_PIO1_6.OD`          0x400440A4,        4, base=16,    bitRange=10-10

IOCON_PIO1_7             EQU  0x400440A8
;`IOCON_PIO1_7.FUNC`        0x400440A8,        4, base=16,    bitRange=0-2
;`IOCON_PIO1_7.MODE`        0x400440A8,        4, base=16,    bitRange=3-4
;`IOCON_PIO1_7.HYS`         0x400440A8,        4, base=16,    bitRange=5-5
;`IOCON_PIO1_7.OD`          0x400440A8,        4, base=16,    bitRange=10-10

IOCON_PIO3_3             EQU  0x400440AC
;`IOCON_PIO3_3.FUNC`        0x400440AC,        4, base=16,    bitRange=0-2
;`IOCON_PIO3_3.MODE`        0x400440AC,        4, base=16,    bitRange=3-4
;`IOCON_PIO3_3.HYS`         0x400440AC,        4, base=16,    bitRange=5-5
;`IOCON_PIO3_3.OD`          0x400440AC,        4, base=16,    bitRange=10-10

IOCON_SCK_LOC            EQU  0x400440B0
;`IOCON_SCK_LOC.SCKLOC`     0x400440B0,        4, base=16,    bitRange=0-1

IOCON_DSR_LOC            EQU  0x400440B4
;`IOCON_DSR_LOC.DSRLOC`     0x400440B4,        4, base=16,    bitRange=0-1

IOCON_DCD_LOC            EQU  0x400440B8
;`IOCON_DCD_LOC.DCDLOC`     0x400440B8,        4, base=16,    bitRange=0-1

IOCON_RI_LOC             EQU  0x400440BC
;`IOCON_RI_LOC.RILOC`       0x400440BC,        4, base=16,    bitRange=0-1


;
;               CPIO
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


GPIO0DATA                EQU  0x50003FFC
;`GPIO0DATA.P0_0`           0x50003FFC,        4, base=16,    bitRange=0-0
;`GPIO0DATA.P0_1`           0x50003FFC,        4, base=16,    bitRange=1-1
;`GPIO0DATA.P0_2`           0x50003FFC,        4, base=16,    bitRange=2-2
;`GPIO0DATA.P0_3`           0x50003FFC,        4, base=16,    bitRange=3-3
;`GPIO0DATA.P0_4`           0x50003FFC,        4, base=16,    bitRange=4-4
;`GPIO0DATA.P0_5`           0x50003FFC,        4, base=16,    bitRange=5-5
;`GPIO0DATA.P0_6`           0x50003FFC,        4, base=16,    bitRange=6-6
;`GPIO0DATA.P0_7`           0x50003FFC,        4, base=16,    bitRange=7-7
;`GPIO0DATA.P0_8`           0x50003FFC,        4, base=16,    bitRange=8-8
;`GPIO0DATA.P0_9`           0x50003FFC,        4, base=16,    bitRange=9-9
;`GPIO0DATA.P0_10`          0x50003FFC,        4, base=16,    bitRange=10-10
;`GPIO0DATA.P0_11`          0x50003FFC,        4, base=16,    bitRange=11-11

GPIO0DATA0               EQU  0x50003FFC
;`GPIO0DATA0.P0_0`          0x50003FFC,        1, base=16,    bitRange=0-0
;`GPIO0DATA0.P0_1`          0x50003FFC,        1, base=16,    bitRange=1-1
;`GPIO0DATA0.P0_2`          0x50003FFC,        1, base=16,    bitRange=2-2
;`GPIO0DATA0.P0_3`          0x50003FFC,        1, base=16,    bitRange=3-3
;`GPIO0DATA0.P0_4`          0x50003FFC,        1, base=16,    bitRange=4-4
;`GPIO0DATA0.P0_5`          0x50003FFC,        1, base=16,    bitRange=5-5
;`GPIO0DATA0.P0_6`          0x50003FFC,        1, base=16,    bitRange=6-6
;`GPIO0DATA0.P0_7`          0x50003FFC,        1, base=16,    bitRange=7-7

GPIO0DATA1               EQU  0x50003FFD
;`GPIO0DATA1.P0_8`          0x50003FFD,        1, base=16,    bitRange=0-0
;`GPIO0DATA1.P0_9`          0x50003FFD,        1, base=16,    bitRange=1-1
;`GPIO0DATA1.P0_10`         0x50003FFD,        1, base=16,    bitRange=2-2
;`GPIO0DATA1.P0_11`         0x50003FFD,        1, base=16,    bitRange=3-3

GPIO0DATAL               EQU  0x50003FFC
;`GPIO0DATAL.P0_0`          0x50003FFC,        2, base=16,    bitRange=0-0
;`GPIO0DATAL.P0_1`          0x50003FFC,        2, base=16,    bitRange=1-1
;`GPIO0DATAL.P0_2`          0x50003FFC,        2, base=16,    bitRange=2-2
;`GPIO0DATAL.P0_3`          0x50003FFC,        2, base=16,    bitRange=3-3
;`GPIO0DATAL.P0_4`          0x50003FFC,        2, base=16,    bitRange=4-4
;`GPIO0DATAL.P0_5`          0x50003FFC,        2, base=16,    bitRange=5-5
;`GPIO0DATAL.P0_6`          0x50003FFC,        2, base=16,    bitRange=6-6
;`GPIO0DATAL.P0_7`          0x50003FFC,        2, base=16,    bitRange=7-7
;`GPIO0DATAL.P0_8`          0x50003FFC,        2, base=16,    bitRange=8-8
;`GPIO0DATAL.P0_9`          0x50003FFC,        2, base=16,    bitRange=9-9
;`GPIO0DATAL.P0_10`         0x50003FFC,        2, base=16,    bitRange=10-10
;`GPIO0DATAL.P0_11`         0x50003FFC,        2, base=16,    bitRange=11-11

GPIO0DIR                 EQU  0x50008000
;`GPIO0DIR.P0_0`            0x50008000,        4, base=16,    bitRange=0-0
;`GPIO0DIR.P0_1`            0x50008000,        4, base=16,    bitRange=1-1
;`GPIO0DIR.P0_2`            0x50008000,        4, base=16,    bitRange=2-2
;`GPIO0DIR.P0_3`            0x50008000,        4, base=16,    bitRange=3-3
;`GPIO0DIR.P0_4`            0x50008000,        4, base=16,    bitRange=4-4
;`GPIO0DIR.P0_5`            0x50008000,        4, base=16,    bitRange=5-5
;`GPIO0DIR.P0_6`            0x50008000,        4, base=16,    bitRange=6-6
;`GPIO0DIR.P0_7`            0x50008000,        4, base=16,    bitRange=7-7
;`GPIO0DIR.P0_8`            0x50008000,        4, base=16,    bitRange=8-8
;`GPIO0DIR.P0_9`            0x50008000,        4, base=16,    bitRange=9-9
;`GPIO0DIR.P0_10`           0x50008000,        4, base=16,    bitRange=10-10
;`GPIO0DIR.P0_11`           0x50008000,        4, base=16,    bitRange=11-11

GPIO0DIR0                EQU  0x50008000
;`GPIO0DIR0.P0_0`           0x50008000,        1, base=16,    bitRange=0-0
;`GPIO0DIR0.P0_1`           0x50008000,        1, base=16,    bitRange=1-1
;`GPIO0DIR0.P0_2`           0x50008000,        1, base=16,    bitRange=2-2
;`GPIO0DIR0.P0_3`           0x50008000,        1, base=16,    bitRange=3-3
;`GPIO0DIR0.P0_4`           0x50008000,        1, base=16,    bitRange=4-4
;`GPIO0DIR0.P0_5`           0x50008000,        1, base=16,    bitRange=5-5
;`GPIO0DIR0.P0_6`           0x50008000,        1, base=16,    bitRange=6-6
;`GPIO0DIR0.P0_7`           0x50008000,        1, base=16,    bitRange=7-7

GPIO0DIR1                EQU  0x50008001
;`GPIO0DIR1.P0_8`           0x50008001,        1, base=16,    bitRange=0-0
;`GPIO0DIR1.P0_9`           0x50008001,        1, base=16,    bitRange=1-1
;`GPIO0DIR1.P0_10`          0x50008001,        1, base=16,    bitRange=2-2
;`GPIO0DIR1.P0_11`          0x50008001,        1, base=16,    bitRange=3-3

GPIO0DIRL                EQU  0x50008000
;`GPIO0DIRL.P0_0`           0x50008000,        2, base=16,    bitRange=0-0
;`GPIO0DIRL.P0_1`           0x50008000,        2, base=16,    bitRange=1-1
;`GPIO0DIRL.P0_2`           0x50008000,        2, base=16,    bitRange=2-2
;`GPIO0DIRL.P0_3`           0x50008000,        2, base=16,    bitRange=3-3
;`GPIO0DIRL.P0_4`           0x50008000,        2, base=16,    bitRange=4-4
;`GPIO0DIRL.P0_5`           0x50008000,        2, base=16,    bitRange=5-5
;`GPIO0DIRL.P0_6`           0x50008000,        2, base=16,    bitRange=6-6
;`GPIO0DIRL.P0_7`           0x50008000,        2, base=16,    bitRange=7-7
;`GPIO0DIRL.P0_8`           0x50008000,        2, base=16,    bitRange=8-8
;`GPIO0DIRL.P0_9`           0x50008000,        2, base=16,    bitRange=9-9
;`GPIO0DIRL.P0_10`          0x50008000,        2, base=16,    bitRange=10-10
;`GPIO0DIRL.P0_11`          0x50008000,        2, base=16,    bitRange=11-11

GPIO0IS                  EQU  0x50008004
;`GPIO0IS.P0_0`             0x50008004,        4, base=16,    bitRange=0-0
;`GPIO0IS.P0_1`             0x50008004,        4, base=16,    bitRange=1-1
;`GPIO0IS.P0_2`             0x50008004,        4, base=16,    bitRange=2-2
;`GPIO0IS.P0_3`             0x50008004,        4, base=16,    bitRange=3-3
;`GPIO0IS.P0_4`             0x50008004,        4, base=16,    bitRange=4-4
;`GPIO0IS.P0_5`             0x50008004,        4, base=16,    bitRange=5-5
;`GPIO0IS.P0_6`             0x50008004,        4, base=16,    bitRange=6-6
;`GPIO0IS.P0_7`             0x50008004,        4, base=16,    bitRange=7-7
;`GPIO0IS.P0_8`             0x50008004,        4, base=16,    bitRange=8-8
;`GPIO0IS.P0_9`             0x50008004,        4, base=16,    bitRange=9-9
;`GPIO0IS.P0_10`            0x50008004,        4, base=16,    bitRange=10-10
;`GPIO0IS.P0_11`            0x50008004,        4, base=16,    bitRange=11-11

GPIO0IS0                 EQU  0x50008004
;`GPIO0IS0.P0_0`            0x50008004,        1, base=16,    bitRange=0-0
;`GPIO0IS0.P0_1`            0x50008004,        1, base=16,    bitRange=1-1
;`GPIO0IS0.P0_2`            0x50008004,        1, base=16,    bitRange=2-2
;`GPIO0IS0.P0_3`            0x50008004,        1, base=16,    bitRange=3-3
;`GPIO0IS0.P0_4`            0x50008004,        1, base=16,    bitRange=4-4
;`GPIO0IS0.P0_5`            0x50008004,        1, base=16,    bitRange=5-5
;`GPIO0IS0.P0_6`            0x50008004,        1, base=16,    bitRange=6-6
;`GPIO0IS0.P0_7`            0x50008004,        1, base=16,    bitRange=7-7

GPIO0IS1                 EQU  0x50008005
;`GPIO0IS1.P0_8`            0x50008005,        1, base=16,    bitRange=0-0
;`GPIO0IS1.P0_9`            0x50008005,        1, base=16,    bitRange=1-1
;`GPIO0IS1.P0_10`           0x50008005,        1, base=16,    bitRange=2-2
;`GPIO0IS1.P0_11`           0x50008005,        1, base=16,    bitRange=3-3

GPIO0ISL                 EQU  0x50008004
;`GPIO0ISL.P0_0`            0x50008004,        2, base=16,    bitRange=0-0
;`GPIO0ISL.P0_1`            0x50008004,        2, base=16,    bitRange=1-1
;`GPIO0ISL.P0_2`            0x50008004,        2, base=16,    bitRange=2-2
;`GPIO0ISL.P0_3`            0x50008004,        2, base=16,    bitRange=3-3
;`GPIO0ISL.P0_4`            0x50008004,        2, base=16,    bitRange=4-4
;`GPIO0ISL.P0_5`            0x50008004,        2, base=16,    bitRange=5-5
;`GPIO0ISL.P0_6`            0x50008004,        2, base=16,    bitRange=6-6
;`GPIO0ISL.P0_7`            0x50008004,        2, base=16,    bitRange=7-7
;`GPIO0ISL.P0_8`            0x50008004,        2, base=16,    bitRange=8-8
;`GPIO0ISL.P0_9`            0x50008004,        2, base=16,    bitRange=9-9
;`GPIO0ISL.P0_10`           0x50008004,        2, base=16,    bitRange=10-10
;`GPIO0ISL.P0_11`           0x50008004,        2, base=16,    bitRange=11-11

GPIO0IBE                 EQU  0x50008008
;`GPIO0IBE.P0_0`            0x50008008,        4, base=16,    bitRange=0-0
;`GPIO0IBE.P0_1`            0x50008008,        4, base=16,    bitRange=1-1
;`GPIO0IBE.P0_2`            0x50008008,        4, base=16,    bitRange=2-2
;`GPIO0IBE.P0_3`            0x50008008,        4, base=16,    bitRange=3-3
;`GPIO0IBE.P0_4`            0x50008008,        4, base=16,    bitRange=4-4
;`GPIO0IBE.P0_5`            0x50008008,        4, base=16,    bitRange=5-5
;`GPIO0IBE.P0_6`            0x50008008,        4, base=16,    bitRange=6-6
;`GPIO0IBE.P0_7`            0x50008008,        4, base=16,    bitRange=7-7
;`GPIO0IBE.P0_8`            0x50008008,        4, base=16,    bitRange=8-8
;`GPIO0IBE.P0_9`            0x50008008,        4, base=16,    bitRange=9-9
;`GPIO0IBE.P0_10`           0x50008008,        4, base=16,    bitRange=10-10
;`GPIO0IBE.P0_11`           0x50008008,        4, base=16,    bitRange=11-11

GPIO0IBE0                EQU  0x50008008
;`GPIO0IBE0.P0_0`           0x50008008,        1, base=16,    bitRange=0-0
;`GPIO0IBE0.P0_1`           0x50008008,        1, base=16,    bitRange=1-1
;`GPIO0IBE0.P0_2`           0x50008008,        1, base=16,    bitRange=2-2
;`GPIO0IBE0.P0_3`           0x50008008,        1, base=16,    bitRange=3-3
;`GPIO0IBE0.P0_4`           0x50008008,        1, base=16,    bitRange=4-4
;`GPIO0IBE0.P0_5`           0x50008008,        1, base=16,    bitRange=5-5
;`GPIO0IBE0.P0_6`           0x50008008,        1, base=16,    bitRange=6-6
;`GPIO0IBE0.P0_7`           0x50008008,        1, base=16,    bitRange=7-7

GPIO0IBE1                EQU  0x50008009
;`GPIO0IBE1.P0_8`           0x50008009,        1, base=16,    bitRange=0-0
;`GPIO0IBE1.P0_9`           0x50008009,        1, base=16,    bitRange=1-1
;`GPIO0IBE1.P0_10`          0x50008009,        1, base=16,    bitRange=2-2
;`GPIO0IBE1.P0_11`          0x50008009,        1, base=16,    bitRange=3-3

GPIO0IBEL                EQU  0x50008008
;`GPIO0IBEL.P0_0`           0x50008008,        2, base=16,    bitRange=0-0
;`GPIO0IBEL.P0_1`           0x50008008,        2, base=16,    bitRange=1-1
;`GPIO0IBEL.P0_2`           0x50008008,        2, base=16,    bitRange=2-2
;`GPIO0IBEL.P0_3`           0x50008008,        2, base=16,    bitRange=3-3
;`GPIO0IBEL.P0_4`           0x50008008,        2, base=16,    bitRange=4-4
;`GPIO0IBEL.P0_5`           0x50008008,        2, base=16,    bitRange=5-5
;`GPIO0IBEL.P0_6`           0x50008008,        2, base=16,    bitRange=6-6
;`GPIO0IBEL.P0_7`           0x50008008,        2, base=16,    bitRange=7-7
;`GPIO0IBEL.P0_8`           0x50008008,        2, base=16,    bitRange=8-8
;`GPIO0IBEL.P0_9`           0x50008008,        2, base=16,    bitRange=9-9
;`GPIO0IBEL.P0_10`          0x50008008,        2, base=16,    bitRange=10-10
;`GPIO0IBEL.P0_11`          0x50008008,        2, base=16,    bitRange=11-11

GPIO0IEV                 EQU  0x5000800C
;`GPIO0IEV.P0_0`            0x5000800C,        4, base=16,    bitRange=0-0
;`GPIO0IEV.P0_1`            0x5000800C,        4, base=16,    bitRange=1-1
;`GPIO0IEV.P0_2`            0x5000800C,        4, base=16,    bitRange=2-2
;`GPIO0IEV.P0_3`            0x5000800C,        4, base=16,    bitRange=3-3
;`GPIO0IEV.P0_4`            0x5000800C,        4, base=16,    bitRange=4-4
;`GPIO0IEV.P0_5`            0x5000800C,        4, base=16,    bitRange=5-5
;`GPIO0IEV.P0_6`            0x5000800C,        4, base=16,    bitRange=6-6
;`GPIO0IEV.P0_7`            0x5000800C,        4, base=16,    bitRange=7-7
;`GPIO0IEV.P0_8`            0x5000800C,        4, base=16,    bitRange=8-8
;`GPIO0IEV.P0_9`            0x5000800C,        4, base=16,    bitRange=9-9
;`GPIO0IEV.P0_10`           0x5000800C,        4, base=16,    bitRange=10-10
;`GPIO0IEV.P0_11`           0x5000800C,        4, base=16,    bitRange=11-11

GPIO0IEV0                EQU  0x5000800C
;`GPIO0IEV0.P0_0`           0x5000800C,        1, base=16,    bitRange=0-0
;`GPIO0IEV0.P0_1`           0x5000800C,        1, base=16,    bitRange=1-1
;`GPIO0IEV0.P0_2`           0x5000800C,        1, base=16,    bitRange=2-2
;`GPIO0IEV0.P0_3`           0x5000800C,        1, base=16,    bitRange=3-3
;`GPIO0IEV0.P0_4`           0x5000800C,        1, base=16,    bitRange=4-4
;`GPIO0IEV0.P0_5`           0x5000800C,        1, base=16,    bitRange=5-5
;`GPIO0IEV0.P0_6`           0x5000800C,        1, base=16,    bitRange=6-6
;`GPIO0IEV0.P0_7`           0x5000800C,        1, base=16,    bitRange=7-7

GPIO0IEV1                EQU  0x5000800D
;`GPIO0IEV1.P0_8`           0x5000800D,        1, base=16,    bitRange=0-0
;`GPIO0IEV1.P0_9`           0x5000800D,        1, base=16,    bitRange=1-1
;`GPIO0IEV1.P0_10`          0x5000800D,        1, base=16,    bitRange=2-2
;`GPIO0IEV1.P0_11`          0x5000800D,        1, base=16,    bitRange=3-3

GPIO0IEVL                EQU  0x5000800C
;`GPIO0IEVL.P0_0`           0x5000800C,        2, base=16,    bitRange=0-0
;`GPIO0IEVL.P0_1`           0x5000800C,        2, base=16,    bitRange=1-1
;`GPIO0IEVL.P0_2`           0x5000800C,        2, base=16,    bitRange=2-2
;`GPIO0IEVL.P0_3`           0x5000800C,        2, base=16,    bitRange=3-3
;`GPIO0IEVL.P0_4`           0x5000800C,        2, base=16,    bitRange=4-4
;`GPIO0IEVL.P0_5`           0x5000800C,        2, base=16,    bitRange=5-5
;`GPIO0IEVL.P0_6`           0x5000800C,        2, base=16,    bitRange=6-6
;`GPIO0IEVL.P0_7`           0x5000800C,        2, base=16,    bitRange=7-7
;`GPIO0IEVL.P0_8`           0x5000800C,        2, base=16,    bitRange=8-8
;`GPIO0IEVL.P0_9`           0x5000800C,        2, base=16,    bitRange=9-9
;`GPIO0IEVL.P0_10`          0x5000800C,        2, base=16,    bitRange=10-10
;`GPIO0IEVL.P0_11`          0x5000800C,        2, base=16,    bitRange=11-11

GPIO0IE                  EQU  0x50008010
;`GPIO0IE.P0_0`             0x50008010,        4, base=16,    bitRange=0-0
;`GPIO0IE.P0_1`             0x50008010,        4, base=16,    bitRange=1-1
;`GPIO0IE.P0_2`             0x50008010,        4, base=16,    bitRange=2-2
;`GPIO0IE.P0_3`             0x50008010,        4, base=16,    bitRange=3-3
;`GPIO0IE.P0_4`             0x50008010,        4, base=16,    bitRange=4-4
;`GPIO0IE.P0_5`             0x50008010,        4, base=16,    bitRange=5-5
;`GPIO0IE.P0_6`             0x50008010,        4, base=16,    bitRange=6-6
;`GPIO0IE.P0_7`             0x50008010,        4, base=16,    bitRange=7-7
;`GPIO0IE.P0_8`             0x50008010,        4, base=16,    bitRange=8-8
;`GPIO0IE.P0_9`             0x50008010,        4, base=16,    bitRange=9-9
;`GPIO0IE.P0_10`            0x50008010,        4, base=16,    bitRange=10-10
;`GPIO0IE.P0_11`            0x50008010,        4, base=16,    bitRange=11-11

GPIO0IE0                 EQU  0x50008010
;`GPIO0IE0.P0_0`            0x50008010,        1, base=16,    bitRange=0-0
;`GPIO0IE0.P0_1`            0x50008010,        1, base=16,    bitRange=1-1
;`GPIO0IE0.P0_2`            0x50008010,        1, base=16,    bitRange=2-2
;`GPIO0IE0.P0_3`            0x50008010,        1, base=16,    bitRange=3-3
;`GPIO0IE0.P0_4`            0x50008010,        1, base=16,    bitRange=4-4
;`GPIO0IE0.P0_5`            0x50008010,        1, base=16,    bitRange=5-5
;`GPIO0IE0.P0_6`            0x50008010,        1, base=16,    bitRange=6-6
;`GPIO0IE0.P0_7`            0x50008010,        1, base=16,    bitRange=7-7

GPIO0IE1                 EQU  0x50008011
;`GPIO0IE1.P0_8`            0x50008011,        1, base=16,    bitRange=0-0
;`GPIO0IE1.P0_9`            0x50008011,        1, base=16,    bitRange=1-1
;`GPIO0IE1.P0_10`           0x50008011,        1, base=16,    bitRange=2-2
;`GPIO0IE1.P0_11`           0x50008011,        1, base=16,    bitRange=3-3

GPIO0IEL                 EQU  0x50008010
;`GPIO0IEL.P0_0`            0x50008010,        2, base=16,    bitRange=0-0
;`GPIO0IEL.P0_1`            0x50008010,        2, base=16,    bitRange=1-1
;`GPIO0IEL.P0_2`            0x50008010,        2, base=16,    bitRange=2-2
;`GPIO0IEL.P0_3`            0x50008010,        2, base=16,    bitRange=3-3
;`GPIO0IEL.P0_4`            0x50008010,        2, base=16,    bitRange=4-4
;`GPIO0IEL.P0_5`            0x50008010,        2, base=16,    bitRange=5-5
;`GPIO0IEL.P0_6`            0x50008010,        2, base=16,    bitRange=6-6
;`GPIO0IEL.P0_7`            0x50008010,        2, base=16,    bitRange=7-7
;`GPIO0IEL.P0_8`            0x50008010,        2, base=16,    bitRange=8-8
;`GPIO0IEL.P0_9`            0x50008010,        2, base=16,    bitRange=9-9
;`GPIO0IEL.P0_10`           0x50008010,        2, base=16,    bitRange=10-10
;`GPIO0IEL.P0_11`           0x50008010,        2, base=16,    bitRange=11-11

GPIO0RIS                 EQU  0x50008014
;`GPIO0RIS.P0_0`            0x50008014,        4, base=16,    bitRange=0-0
;`GPIO0RIS.P0_1`            0x50008014,        4, base=16,    bitRange=1-1
;`GPIO0RIS.P0_2`            0x50008014,        4, base=16,    bitRange=2-2
;`GPIO0RIS.P0_3`            0x50008014,        4, base=16,    bitRange=3-3
;`GPIO0RIS.P0_4`            0x50008014,        4, base=16,    bitRange=4-4
;`GPIO0RIS.P0_5`            0x50008014,        4, base=16,    bitRange=5-5
;`GPIO0RIS.P0_6`            0x50008014,        4, base=16,    bitRange=6-6
;`GPIO0RIS.P0_7`            0x50008014,        4, base=16,    bitRange=7-7
;`GPIO0RIS.P0_8`            0x50008014,        4, base=16,    bitRange=8-8
;`GPIO0RIS.P0_9`            0x50008014,        4, base=16,    bitRange=9-9
;`GPIO0RIS.P0_10`           0x50008014,        4, base=16,    bitRange=10-10
;`GPIO0RIS.P0_11`           0x50008014,        4, base=16,    bitRange=11-11

GPIO0RIS0                EQU  0x50008014
;`GPIO0RIS0.P0_0`           0x50008014,        1, base=16,    bitRange=0-0
;`GPIO0RIS0.P0_1`           0x50008014,        1, base=16,    bitRange=1-1
;`GPIO0RIS0.P0_2`           0x50008014,        1, base=16,    bitRange=2-2
;`GPIO0RIS0.P0_3`           0x50008014,        1, base=16,    bitRange=3-3
;`GPIO0RIS0.P0_4`           0x50008014,        1, base=16,    bitRange=4-4
;`GPIO0RIS0.P0_5`           0x50008014,        1, base=16,    bitRange=5-5
;`GPIO0RIS0.P0_6`           0x50008014,        1, base=16,    bitRange=6-6
;`GPIO0RIS0.P0_7`           0x50008014,        1, base=16,    bitRange=7-7

GPIO0RIS1                EQU  0x50008015
;`GPIO0RIS1.P0_8`           0x50008015,        1, base=16,    bitRange=0-0
;`GPIO0RIS1.P0_9`           0x50008015,        1, base=16,    bitRange=1-1
;`GPIO0RIS1.P0_10`          0x50008015,        1, base=16,    bitRange=2-2
;`GPIO0RIS1.P0_11`          0x50008015,        1, base=16,    bitRange=3-3

GPIO0RISL                EQU  0x50008014
;`GPIO0RISL.P0_0`           0x50008014,        2, base=16,    bitRange=0-0
;`GPIO0RISL.P0_1`           0x50008014,        2, base=16,    bitRange=1-1
;`GPIO0RISL.P0_2`           0x50008014,        2, base=16,    bitRange=2-2
;`GPIO0RISL.P0_3`           0x50008014,        2, base=16,    bitRange=3-3
;`GPIO0RISL.P0_4`           0x50008014,        2, base=16,    bitRange=4-4
;`GPIO0RISL.P0_5`           0x50008014,        2, base=16,    bitRange=5-5
;`GPIO0RISL.P0_6`           0x50008014,        2, base=16,    bitRange=6-6
;`GPIO0RISL.P0_7`           0x50008014,        2, base=16,    bitRange=7-7
;`GPIO0RISL.P0_8`           0x50008014,        2, base=16,    bitRange=8-8
;`GPIO0RISL.P0_9`           0x50008014,        2, base=16,    bitRange=9-9
;`GPIO0RISL.P0_10`          0x50008014,        2, base=16,    bitRange=10-10
;`GPIO0RISL.P0_11`          0x50008014,        2, base=16,    bitRange=11-11

GPIO0MIS                 EQU  0x50008018
;`GPIO0MIS.P0_0`            0x50008018,        4, base=16,    bitRange=0-0
;`GPIO0MIS.P0_1`            0x50008018,        4, base=16,    bitRange=1-1
;`GPIO0MIS.P0_2`            0x50008018,        4, base=16,    bitRange=2-2
;`GPIO0MIS.P0_3`            0x50008018,        4, base=16,    bitRange=3-3
;`GPIO0MIS.P0_4`            0x50008018,        4, base=16,    bitRange=4-4
;`GPIO0MIS.P0_5`            0x50008018,        4, base=16,    bitRange=5-5
;`GPIO0MIS.P0_6`            0x50008018,        4, base=16,    bitRange=6-6
;`GPIO0MIS.P0_7`            0x50008018,        4, base=16,    bitRange=7-7
;`GPIO0MIS.P0_8`            0x50008018,        4, base=16,    bitRange=8-8
;`GPIO0MIS.P0_9`            0x50008018,        4, base=16,    bitRange=9-9
;`GPIO0MIS.P0_10`           0x50008018,        4, base=16,    bitRange=10-10
;`GPIO0MIS.P0_11`           0x50008018,        4, base=16,    bitRange=11-11

GPIO0MIS0                EQU  0x50008018
;`GPIO0MIS0.P0_0`           0x50008018,        1, base=16,    bitRange=0-0
;`GPIO0MIS0.P0_1`           0x50008018,        1, base=16,    bitRange=1-1
;`GPIO0MIS0.P0_2`           0x50008018,        1, base=16,    bitRange=2-2
;`GPIO0MIS0.P0_3`           0x50008018,        1, base=16,    bitRange=3-3
;`GPIO0MIS0.P0_4`           0x50008018,        1, base=16,    bitRange=4-4
;`GPIO0MIS0.P0_5`           0x50008018,        1, base=16,    bitRange=5-5
;`GPIO0MIS0.P0_6`           0x50008018,        1, base=16,    bitRange=6-6
;`GPIO0MIS0.P0_7`           0x50008018,        1, base=16,    bitRange=7-7

GPIO0MIS1                EQU  0x50008019
;`GPIO0MIS1.P0_8`           0x50008019,        1, base=16,    bitRange=0-0
;`GPIO0MIS1.P0_9`           0x50008019,        1, base=16,    bitRange=1-1
;`GPIO0MIS1.P0_10`          0x50008019,        1, base=16,    bitRange=2-2
;`GPIO0MIS1.P0_11`          0x50008019,        1, base=16,    bitRange=3-3

GPIO0MISL                EQU  0x50008018
;`GPIO0MISL.P0_0`           0x50008018,        2, base=16,    bitRange=0-0
;`GPIO0MISL.P0_1`           0x50008018,        2, base=16,    bitRange=1-1
;`GPIO0MISL.P0_2`           0x50008018,        2, base=16,    bitRange=2-2
;`GPIO0MISL.P0_3`           0x50008018,        2, base=16,    bitRange=3-3
;`GPIO0MISL.P0_4`           0x50008018,        2, base=16,    bitRange=4-4
;`GPIO0MISL.P0_5`           0x50008018,        2, base=16,    bitRange=5-5
;`GPIO0MISL.P0_6`           0x50008018,        2, base=16,    bitRange=6-6
;`GPIO0MISL.P0_7`           0x50008018,        2, base=16,    bitRange=7-7
;`GPIO0MISL.P0_8`           0x50008018,        2, base=16,    bitRange=8-8
;`GPIO0MISL.P0_9`           0x50008018,        2, base=16,    bitRange=9-9
;`GPIO0MISL.P0_10`          0x50008018,        2, base=16,    bitRange=10-10
;`GPIO0MISL.P0_11`          0x50008018,        2, base=16,    bitRange=11-11

GPIO0IC                  EQU  0x5000801C

GPIO1DATA                EQU  0x50013FFC
;`GPIO1DATA.P1_0`           0x50013FFC,        4, base=16,    bitRange=0-0
;`GPIO1DATA.P1_1`           0x50013FFC,        4, base=16,    bitRange=1-1
;`GPIO1DATA.P1_2`           0x50013FFC,        4, base=16,    bitRange=2-2
;`GPIO1DATA.P1_3`           0x50013FFC,        4, base=16,    bitRange=3-3
;`GPIO1DATA.P1_4`           0x50013FFC,        4, base=16,    bitRange=4-4
;`GPIO1DATA.P1_5`           0x50013FFC,        4, base=16,    bitRange=5-5
;`GPIO1DATA.P1_6`           0x50013FFC,        4, base=16,    bitRange=6-6
;`GPIO1DATA.P1_7`           0x50013FFC,        4, base=16,    bitRange=7-7
;`GPIO1DATA.P1_8`           0x50013FFC,        4, base=16,    bitRange=8-8
;`GPIO1DATA.P1_9`           0x50013FFC,        4, base=16,    bitRange=9-9
;`GPIO1DATA.P1_10`          0x50013FFC,        4, base=16,    bitRange=10-10
;`GPIO1DATA.P1_11`          0x50013FFC,        4, base=16,    bitRange=11-11

GPIO1DATA0               EQU  0x50013FFC
;`GPIO1DATA0.P1_0`          0x50013FFC,        1, base=16,    bitRange=0-0
;`GPIO1DATA0.P1_1`          0x50013FFC,        1, base=16,    bitRange=1-1
;`GPIO1DATA0.P1_2`          0x50013FFC,        1, base=16,    bitRange=2-2
;`GPIO1DATA0.P1_3`          0x50013FFC,        1, base=16,    bitRange=3-3
;`GPIO1DATA0.P1_4`          0x50013FFC,        1, base=16,    bitRange=4-4
;`GPIO1DATA0.P1_5`          0x50013FFC,        1, base=16,    bitRange=5-5
;`GPIO1DATA0.P1_6`          0x50013FFC,        1, base=16,    bitRange=6-6
;`GPIO1DATA0.P1_7`          0x50013FFC,        1, base=16,    bitRange=7-7

GPIO1DATA1               EQU  0x50013FFD
;`GPIO1DATA1.P1_8`          0x50013FFD,        1, base=16,    bitRange=0-0
;`GPIO1DATA1.P1_9`          0x50013FFD,        1, base=16,    bitRange=1-1
;`GPIO1DATA1.P1_10`         0x50013FFD,        1, base=16,    bitRange=2-2
;`GPIO1DATA1.P1_11`         0x50013FFD,        1, base=16,    bitRange=3-3

GPIO1DATAL               EQU  0x50013FFC
;`GPIO1DATAL.P1_0`          0x50013FFC,        2, base=16,    bitRange=0-0
;`GPIO1DATAL.P1_1`          0x50013FFC,        2, base=16,    bitRange=1-1
;`GPIO1DATAL.P1_2`          0x50013FFC,        2, base=16,    bitRange=2-2
;`GPIO1DATAL.P1_3`          0x50013FFC,        2, base=16,    bitRange=3-3
;`GPIO1DATAL.P1_4`          0x50013FFC,        2, base=16,    bitRange=4-4
;`GPIO1DATAL.P1_5`          0x50013FFC,        2, base=16,    bitRange=5-5
;`GPIO1DATAL.P1_6`          0x50013FFC,        2, base=16,    bitRange=6-6
;`GPIO1DATAL.P1_7`          0x50013FFC,        2, base=16,    bitRange=7-7
;`GPIO1DATAL.P1_8`          0x50013FFC,        2, base=16,    bitRange=8-8
;`GPIO1DATAL.P1_9`          0x50013FFC,        2, base=16,    bitRange=9-9
;`GPIO1DATAL.P1_10`         0x50013FFC,        2, base=16,    bitRange=10-10
;`GPIO1DATAL.P1_11`         0x50013FFC,        2, base=16,    bitRange=11-11

GPIO1DIR                 EQU  0x50018000
;`GPIO1DIR.P1_0`            0x50018000,        4, base=16,    bitRange=0-0
;`GPIO1DIR.P1_1`            0x50018000,        4, base=16,    bitRange=1-1
;`GPIO1DIR.P1_2`            0x50018000,        4, base=16,    bitRange=2-2
;`GPIO1DIR.P1_3`            0x50018000,        4, base=16,    bitRange=3-3
;`GPIO1DIR.P1_4`            0x50018000,        4, base=16,    bitRange=4-4
;`GPIO1DIR.P1_5`            0x50018000,        4, base=16,    bitRange=5-5
;`GPIO1DIR.P1_6`            0x50018000,        4, base=16,    bitRange=6-6
;`GPIO1DIR.P1_7`            0x50018000,        4, base=16,    bitRange=7-7
;`GPIO1DIR.P1_8`            0x50018000,        4, base=16,    bitRange=8-8
;`GPIO1DIR.P1_9`            0x50018000,        4, base=16,    bitRange=9-9
;`GPIO1DIR.P1_10`           0x50018000,        4, base=16,    bitRange=10-10
;`GPIO1DIR.P1_11`           0x50018000,        4, base=16,    bitRange=11-11

GPIO1DIR0                EQU  0x50018000
;`GPIO1DIR0.P1_0`           0x50018000,        1, base=16,    bitRange=0-0
;`GPIO1DIR0.P1_1`           0x50018000,        1, base=16,    bitRange=1-1
;`GPIO1DIR0.P1_2`           0x50018000,        1, base=16,    bitRange=2-2
;`GPIO1DIR0.P1_3`           0x50018000,        1, base=16,    bitRange=3-3
;`GPIO1DIR0.P1_4`           0x50018000,        1, base=16,    bitRange=4-4
;`GPIO1DIR0.P1_5`           0x50018000,        1, base=16,    bitRange=5-5
;`GPIO1DIR0.P1_6`           0x50018000,        1, base=16,    bitRange=6-6
;`GPIO1DIR0.P1_7`           0x50018000,        1, base=16,    bitRange=7-7

GPIO1DIR1                EQU  0x50018001
;`GPIO1DIR1.P1_8`           0x50018001,        1, base=16,    bitRange=0-0
;`GPIO1DIR1.P1_9`           0x50018001,        1, base=16,    bitRange=1-1
;`GPIO1DIR1.P1_10`          0x50018001,        1, base=16,    bitRange=2-2
;`GPIO1DIR1.P1_11`          0x50018001,        1, base=16,    bitRange=3-3

GPIO1DIRL                EQU  0x50018000
;`GPIO1DIRL.P1_0`           0x50018000,        2, base=16,    bitRange=0-0
;`GPIO1DIRL.P1_1`           0x50018000,        2, base=16,    bitRange=1-1
;`GPIO1DIRL.P1_2`           0x50018000,        2, base=16,    bitRange=2-2
;`GPIO1DIRL.P1_3`           0x50018000,        2, base=16,    bitRange=3-3
;`GPIO1DIRL.P1_4`           0x50018000,        2, base=16,    bitRange=4-4
;`GPIO1DIRL.P1_5`           0x50018000,        2, base=16,    bitRange=5-5
;`GPIO1DIRL.P1_6`           0x50018000,        2, base=16,    bitRange=6-6
;`GPIO1DIRL.P1_7`           0x50018000,        2, base=16,    bitRange=7-7
;`GPIO1DIRL.P1_8`           0x50018000,        2, base=16,    bitRange=8-8
;`GPIO1DIRL.P1_9`           0x50018000,        2, base=16,    bitRange=9-9
;`GPIO1DIRL.P1_10`          0x50018000,        2, base=16,    bitRange=10-10
;`GPIO1DIRL.P1_11`          0x50018000,        2, base=16,    bitRange=11-11

GPIO1IS                  EQU  0x50018004
;`GPIO1IS.P1_0`             0x50018004,        4, base=16,    bitRange=0-0
;`GPIO1IS.P1_1`             0x50018004,        4, base=16,    bitRange=1-1
;`GPIO1IS.P1_2`             0x50018004,        4, base=16,    bitRange=2-2
;`GPIO1IS.P1_3`             0x50018004,        4, base=16,    bitRange=3-3
;`GPIO1IS.P1_4`             0x50018004,        4, base=16,    bitRange=4-4
;`GPIO1IS.P1_5`             0x50018004,        4, base=16,    bitRange=5-5
;`GPIO1IS.P1_6`             0x50018004,        4, base=16,    bitRange=6-6
;`GPIO1IS.P1_7`             0x50018004,        4, base=16,    bitRange=7-7
;`GPIO1IS.P1_8`             0x50018004,        4, base=16,    bitRange=8-8
;`GPIO1IS.P1_9`             0x50018004,        4, base=16,    bitRange=9-9
;`GPIO1IS.P1_10`            0x50018004,        4, base=16,    bitRange=10-10
;`GPIO1IS.P1_11`            0x50018004,        4, base=16,    bitRange=11-11

GPIO1IS0                 EQU  0x50018004
;`GPIO1IS0.P1_0`            0x50018004,        1, base=16,    bitRange=0-0
;`GPIO1IS0.P1_1`            0x50018004,        1, base=16,    bitRange=1-1
;`GPIO1IS0.P1_2`            0x50018004,        1, base=16,    bitRange=2-2
;`GPIO1IS0.P1_3`            0x50018004,        1, base=16,    bitRange=3-3
;`GPIO1IS0.P1_4`            0x50018004,        1, base=16,    bitRange=4-4
;`GPIO1IS0.P1_5`            0x50018004,        1, base=16,    bitRange=5-5
;`GPIO1IS0.P1_6`            0x50018004,        1, base=16,    bitRange=6-6
;`GPIO1IS0.P1_7`            0x50018004,        1, base=16,    bitRange=7-7

GPIO1IS1                 EQU  0x50018005
;`GPIO1IS1.P1_8`            0x50018005,        1, base=16,    bitRange=0-0
;`GPIO1IS1.P1_9`            0x50018005,        1, base=16,    bitRange=1-1
;`GPIO1IS1.P1_10`           0x50018005,        1, base=16,    bitRange=2-2
;`GPIO1IS1.P1_11`           0x50018005,        1, base=16,    bitRange=3-3

GPIO1ISL                 EQU  0x50018004
;`GPIO1ISL.P1_0`            0x50018004,        2, base=16,    bitRange=0-0
;`GPIO1ISL.P1_1`            0x50018004,        2, base=16,    bitRange=1-1
;`GPIO1ISL.P1_2`            0x50018004,        2, base=16,    bitRange=2-2
;`GPIO1ISL.P1_3`            0x50018004,        2, base=16,    bitRange=3-3
;`GPIO1ISL.P1_4`            0x50018004,        2, base=16,    bitRange=4-4
;`GPIO1ISL.P1_5`            0x50018004,        2, base=16,    bitRange=5-5
;`GPIO1ISL.P1_6`            0x50018004,        2, base=16,    bitRange=6-6
;`GPIO1ISL.P1_7`            0x50018004,        2, base=16,    bitRange=7-7
;`GPIO1ISL.P1_8`            0x50018004,        2, base=16,    bitRange=8-8
;`GPIO1ISL.P1_9`            0x50018004,        2, base=16,    bitRange=9-9
;`GPIO1ISL.P1_10`           0x50018004,        2, base=16,    bitRange=10-10
;`GPIO1ISL.P1_11`           0x50018004,        2, base=16,    bitRange=11-11

GPIO1IBE                 EQU  0x50018008
;`GPIO1IBE.P1_0`            0x50018008,        4, base=16,    bitRange=0-0
;`GPIO1IBE.P1_1`            0x50018008,        4, base=16,    bitRange=1-1
;`GPIO1IBE.P1_2`            0x50018008,        4, base=16,    bitRange=2-2
;`GPIO1IBE.P1_3`            0x50018008,        4, base=16,    bitRange=3-3
;`GPIO1IBE.P1_4`            0x50018008,        4, base=16,    bitRange=4-4
;`GPIO1IBE.P1_5`            0x50018008,        4, base=16,    bitRange=5-5
;`GPIO1IBE.P1_6`            0x50018008,        4, base=16,    bitRange=6-6
;`GPIO1IBE.P1_7`            0x50018008,        4, base=16,    bitRange=7-7
;`GPIO1IBE.P1_8`            0x50018008,        4, base=16,    bitRange=8-8
;`GPIO1IBE.P1_9`            0x50018008,        4, base=16,    bitRange=9-9
;`GPIO1IBE.P1_10`           0x50018008,        4, base=16,    bitRange=10-10
;`GPIO1IBE.P1_11`           0x50018008,        4, base=16,    bitRange=11-11

GPIO1IBE0                EQU  0x50018008
;`GPIO1IBE0.P1_0`           0x50018008,        1, base=16,    bitRange=0-0
;`GPIO1IBE0.P1_1`           0x50018008,        1, base=16,    bitRange=1-1
;`GPIO1IBE0.P1_2`           0x50018008,        1, base=16,    bitRange=2-2
;`GPIO1IBE0.P1_3`           0x50018008,        1, base=16,    bitRange=3-3
;`GPIO1IBE0.P1_4`           0x50018008,        1, base=16,    bitRange=4-4
;`GPIO1IBE0.P1_5`           0x50018008,        1, base=16,    bitRange=5-5
;`GPIO1IBE0.P1_6`           0x50018008,        1, base=16,    bitRange=6-6
;`GPIO1IBE0.P1_7`           0x50018008,        1, base=16,    bitRange=7-7

GPIO1IBE1                EQU  0x50018009
;`GPIO1IBE1.P1_8`           0x50018009,        1, base=16,    bitRange=0-0
;`GPIO1IBE1.P1_9`           0x50018009,        1, base=16,    bitRange=1-1
;`GPIO1IBE1.P1_10`          0x50018009,        1, base=16,    bitRange=2-2
;`GPIO1IBE1.P1_11`          0x50018009,        1, base=16,    bitRange=3-3

GPIO1IBEL                EQU  0x50018008
;`GPIO1IBEL.P1_0`           0x50018008,        2, base=16,    bitRange=0-0
;`GPIO1IBEL.P1_1`           0x50018008,        2, base=16,    bitRange=1-1
;`GPIO1IBEL.P1_2`           0x50018008,        2, base=16,    bitRange=2-2
;`GPIO1IBEL.P1_3`           0x50018008,        2, base=16,    bitRange=3-3
;`GPIO1IBEL.P1_4`           0x50018008,        2, base=16,    bitRange=4-4
;`GPIO1IBEL.P1_5`           0x50018008,        2, base=16,    bitRange=5-5
;`GPIO1IBEL.P1_6`           0x50018008,        2, base=16,    bitRange=6-6
;`GPIO1IBEL.P1_7`           0x50018008,        2, base=16,    bitRange=7-7
;`GPIO1IBEL.P1_8`           0x50018008,        2, base=16,    bitRange=8-8
;`GPIO1IBEL.P1_9`           0x50018008,        2, base=16,    bitRange=9-9
;`GPIO1IBEL.P1_10`          0x50018008,        2, base=16,    bitRange=10-10
;`GPIO1IBEL.P1_11`          0x50018008,        2, base=16,    bitRange=11-11

GPIO1IEV                 EQU  0x5001800C
;`GPIO1IEV.P1_0`            0x5001800C,        4, base=16,    bitRange=0-0
;`GPIO1IEV.P1_1`            0x5001800C,        4, base=16,    bitRange=1-1
;`GPIO1IEV.P1_2`            0x5001800C,        4, base=16,    bitRange=2-2
;`GPIO1IEV.P1_3`            0x5001800C,        4, base=16,    bitRange=3-3
;`GPIO1IEV.P1_4`            0x5001800C,        4, base=16,    bitRange=4-4
;`GPIO1IEV.P1_5`            0x5001800C,        4, base=16,    bitRange=5-5
;`GPIO1IEV.P1_6`            0x5001800C,        4, base=16,    bitRange=6-6
;`GPIO1IEV.P1_7`            0x5001800C,        4, base=16,    bitRange=7-7
;`GPIO1IEV.P1_8`            0x5001800C,        4, base=16,    bitRange=8-8
;`GPIO1IEV.P1_9`            0x5001800C,        4, base=16,    bitRange=9-9
;`GPIO1IEV.P1_10`           0x5001800C,        4, base=16,    bitRange=10-10
;`GPIO1IEV.P1_11`           0x5001800C,        4, base=16,    bitRange=11-11

GPIO1IEV0                EQU  0x5001800C
;`GPIO1IEV0.P1_0`           0x5001800C,        1, base=16,    bitRange=0-0
;`GPIO1IEV0.P1_1`           0x5001800C,        1, base=16,    bitRange=1-1
;`GPIO1IEV0.P1_2`           0x5001800C,        1, base=16,    bitRange=2-2
;`GPIO1IEV0.P1_3`           0x5001800C,        1, base=16,    bitRange=3-3
;`GPIO1IEV0.P1_4`           0x5001800C,        1, base=16,    bitRange=4-4
;`GPIO1IEV0.P1_5`           0x5001800C,        1, base=16,    bitRange=5-5
;`GPIO1IEV0.P1_6`           0x5001800C,        1, base=16,    bitRange=6-6
;`GPIO1IEV0.P1_7`           0x5001800C,        1, base=16,    bitRange=7-7

GPIO1IEV1                EQU  0x5001800D
;`GPIO1IEV1.P1_8`           0x5001800D,        1, base=16,    bitRange=0-0
;`GPIO1IEV1.P1_9`           0x5001800D,        1, base=16,    bitRange=1-1
;`GPIO1IEV1.P1_10`          0x5001800D,        1, base=16,    bitRange=2-2
;`GPIO1IEV1.P1_11`          0x5001800D,        1, base=16,    bitRange=3-3

GPIO1IEVL                EQU  0x5001800C
;`GPIO1IEVL.P1_0`           0x5001800C,        2, base=16,    bitRange=0-0
;`GPIO1IEVL.P1_1`           0x5001800C,        2, base=16,    bitRange=1-1
;`GPIO1IEVL.P1_2`           0x5001800C,        2, base=16,    bitRange=2-2
;`GPIO1IEVL.P1_3`           0x5001800C,        2, base=16,    bitRange=3-3
;`GPIO1IEVL.P1_4`           0x5001800C,        2, base=16,    bitRange=4-4
;`GPIO1IEVL.P1_5`           0x5001800C,        2, base=16,    bitRange=5-5
;`GPIO1IEVL.P1_6`           0x5001800C,        2, base=16,    bitRange=6-6
;`GPIO1IEVL.P1_7`           0x5001800C,        2, base=16,    bitRange=7-7
;`GPIO1IEVL.P1_8`           0x5001800C,        2, base=16,    bitRange=8-8
;`GPIO1IEVL.P1_9`           0x5001800C,        2, base=16,    bitRange=9-9
;`GPIO1IEVL.P1_10`          0x5001800C,        2, base=16,    bitRange=10-10
;`GPIO1IEVL.P1_11`          0x5001800C,        2, base=16,    bitRange=11-11

GPIO1IE                  EQU  0x50018010
;`GPIO1IE.P1_0`             0x50018010,        4, base=16,    bitRange=0-0
;`GPIO1IE.P1_1`             0x50018010,        4, base=16,    bitRange=1-1
;`GPIO1IE.P1_2`             0x50018010,        4, base=16,    bitRange=2-2
;`GPIO1IE.P1_3`             0x50018010,        4, base=16,    bitRange=3-3
;`GPIO1IE.P1_4`             0x50018010,        4, base=16,    bitRange=4-4
;`GPIO1IE.P1_5`             0x50018010,        4, base=16,    bitRange=5-5
;`GPIO1IE.P1_6`             0x50018010,        4, base=16,    bitRange=6-6
;`GPIO1IE.P1_7`             0x50018010,        4, base=16,    bitRange=7-7
;`GPIO1IE.P1_8`             0x50018010,        4, base=16,    bitRange=8-8
;`GPIO1IE.P1_9`             0x50018010,        4, base=16,    bitRange=9-9
;`GPIO1IE.P1_10`            0x50018010,        4, base=16,    bitRange=10-10
;`GPIO1IE.P1_11`            0x50018010,        4, base=16,    bitRange=11-11

GPIO1IE0                 EQU  0x50018010
;`GPIO1IE0.P1_0`            0x50018010,        1, base=16,    bitRange=0-0
;`GPIO1IE0.P1_1`            0x50018010,        1, base=16,    bitRange=1-1
;`GPIO1IE0.P1_2`            0x50018010,        1, base=16,    bitRange=2-2
;`GPIO1IE0.P1_3`            0x50018010,        1, base=16,    bitRange=3-3
;`GPIO1IE0.P1_4`            0x50018010,        1, base=16,    bitRange=4-4
;`GPIO1IE0.P1_5`            0x50018010,        1, base=16,    bitRange=5-5
;`GPIO1IE0.P1_6`            0x50018010,        1, base=16,    bitRange=6-6
;`GPIO1IE0.P1_7`            0x50018010,        1, base=16,    bitRange=7-7

GPIO1IE1                 EQU  0x50018011
;`GPIO1IE1.P1_8`            0x50018011,        1, base=16,    bitRange=0-0
;`GPIO1IE1.P1_9`            0x50018011,        1, base=16,    bitRange=1-1
;`GPIO1IE1.P1_10`           0x50018011,        1, base=16,    bitRange=2-2
;`GPIO1IE1.P1_11`           0x50018011,        1, base=16,    bitRange=3-3

GPIO1IEL                 EQU  0x50018010
;`GPIO1IEL.P1_0`            0x50018010,        2, base=16,    bitRange=0-0
;`GPIO1IEL.P1_1`            0x50018010,        2, base=16,    bitRange=1-1
;`GPIO1IEL.P1_2`            0x50018010,        2, base=16,    bitRange=2-2
;`GPIO1IEL.P1_3`            0x50018010,        2, base=16,    bitRange=3-3
;`GPIO1IEL.P1_4`            0x50018010,        2, base=16,    bitRange=4-4
;`GPIO1IEL.P1_5`            0x50018010,        2, base=16,    bitRange=5-5
;`GPIO1IEL.P1_6`            0x50018010,        2, base=16,    bitRange=6-6
;`GPIO1IEL.P1_7`            0x50018010,        2, base=16,    bitRange=7-7
;`GPIO1IEL.P1_8`            0x50018010,        2, base=16,    bitRange=8-8
;`GPIO1IEL.P1_9`            0x50018010,        2, base=16,    bitRange=9-9
;`GPIO1IEL.P1_10`           0x50018010,        2, base=16,    bitRange=10-10
;`GPIO1IEL.P1_11`           0x50018010,        2, base=16,    bitRange=11-11

GPIO1RIS                 EQU  0x50018014
;`GPIO1RIS.P1_0`            0x50018014,        4, base=16,    bitRange=0-0
;`GPIO1RIS.P1_1`            0x50018014,        4, base=16,    bitRange=1-1
;`GPIO1RIS.P1_2`            0x50018014,        4, base=16,    bitRange=2-2
;`GPIO1RIS.P1_3`            0x50018014,        4, base=16,    bitRange=3-3
;`GPIO1RIS.P1_4`            0x50018014,        4, base=16,    bitRange=4-4
;`GPIO1RIS.P1_5`            0x50018014,        4, base=16,    bitRange=5-5
;`GPIO1RIS.P1_6`            0x50018014,        4, base=16,    bitRange=6-6
;`GPIO1RIS.P1_7`            0x50018014,        4, base=16,    bitRange=7-7
;`GPIO1RIS.P1_8`            0x50018014,        4, base=16,    bitRange=8-8
;`GPIO1RIS.P1_9`            0x50018014,        4, base=16,    bitRange=9-9
;`GPIO1RIS.P1_10`           0x50018014,        4, base=16,    bitRange=10-10
;`GPIO1RIS.P1_11`           0x50018014,        4, base=16,    bitRange=11-11

GPIO1RIS0                EQU  0x50018014
;`GPIO1RIS0.P1_0`           0x50018014,        1, base=16,    bitRange=0-0
;`GPIO1RIS0.P1_1`           0x50018014,        1, base=16,    bitRange=1-1
;`GPIO1RIS0.P1_2`           0x50018014,        1, base=16,    bitRange=2-2
;`GPIO1RIS0.P1_3`           0x50018014,        1, base=16,    bitRange=3-3
;`GPIO1RIS0.P1_4`           0x50018014,        1, base=16,    bitRange=4-4
;`GPIO1RIS0.P1_5`           0x50018014,        1, base=16,    bitRange=5-5
;`GPIO1RIS0.P1_6`           0x50018014,        1, base=16,    bitRange=6-6
;`GPIO1RIS0.P1_7`           0x50018014,        1, base=16,    bitRange=7-7

GPIO1RIS1                EQU  0x50018015
;`GPIO1RIS1.P1_8`           0x50018015,        1, base=16,    bitRange=0-0
;`GPIO1RIS1.P1_9`           0x50018015,        1, base=16,    bitRange=1-1
;`GPIO1RIS1.P1_10`          0x50018015,        1, base=16,    bitRange=2-2
;`GPIO1RIS1.P1_11`          0x50018015,        1, base=16,    bitRange=3-3

GPIO1RISL                EQU  0x50018014
;`GPIO1RISL.P1_0`           0x50018014,        2, base=16,    bitRange=0-0
;`GPIO1RISL.P1_1`           0x50018014,        2, base=16,    bitRange=1-1
;`GPIO1RISL.P1_2`           0x50018014,        2, base=16,    bitRange=2-2
;`GPIO1RISL.P1_3`           0x50018014,        2, base=16,    bitRange=3-3
;`GPIO1RISL.P1_4`           0x50018014,        2, base=16,    bitRange=4-4
;`GPIO1RISL.P1_5`           0x50018014,        2, base=16,    bitRange=5-5
;`GPIO1RISL.P1_6`           0x50018014,        2, base=16,    bitRange=6-6
;`GPIO1RISL.P1_7`           0x50018014,        2, base=16,    bitRange=7-7
;`GPIO1RISL.P1_8`           0x50018014,        2, base=16,    bitRange=8-8
;`GPIO1RISL.P1_9`           0x50018014,        2, base=16,    bitRange=9-9
;`GPIO1RISL.P1_10`          0x50018014,        2, base=16,    bitRange=10-10
;`GPIO1RISL.P1_11`          0x50018014,        2, base=16,    bitRange=11-11

GPIO1MIS                 EQU  0x50018018
;`GPIO1MIS.P1_0`            0x50018018,        4, base=16,    bitRange=0-0
;`GPIO1MIS.P1_1`            0x50018018,        4, base=16,    bitRange=1-1
;`GPIO1MIS.P1_2`            0x50018018,        4, base=16,    bitRange=2-2
;`GPIO1MIS.P1_3`            0x50018018,        4, base=16,    bitRange=3-3
;`GPIO1MIS.P1_4`            0x50018018,        4, base=16,    bitRange=4-4
;`GPIO1MIS.P1_5`            0x50018018,        4, base=16,    bitRange=5-5
;`GPIO1MIS.P1_6`            0x50018018,        4, base=16,    bitRange=6-6
;`GPIO1MIS.P1_7`            0x50018018,        4, base=16,    bitRange=7-7
;`GPIO1MIS.P1_8`            0x50018018,        4, base=16,    bitRange=8-8
;`GPIO1MIS.P1_9`            0x50018018,        4, base=16,    bitRange=9-9
;`GPIO1MIS.P1_10`           0x50018018,        4, base=16,    bitRange=10-10
;`GPIO1MIS.P1_11`           0x50018018,        4, base=16,    bitRange=11-11

GPIO1MIS0                EQU  0x50018018
;`GPIO1MIS0.P1_0`           0x50018018,        1, base=16,    bitRange=0-0
;`GPIO1MIS0.P1_1`           0x50018018,        1, base=16,    bitRange=1-1
;`GPIO1MIS0.P1_2`           0x50018018,        1, base=16,    bitRange=2-2
;`GPIO1MIS0.P1_3`           0x50018018,        1, base=16,    bitRange=3-3
;`GPIO1MIS0.P1_4`           0x50018018,        1, base=16,    bitRange=4-4
;`GPIO1MIS0.P1_5`           0x50018018,        1, base=16,    bitRange=5-5
;`GPIO1MIS0.P1_6`           0x50018018,        1, base=16,    bitRange=6-6
;`GPIO1MIS0.P1_7`           0x50018018,        1, base=16,    bitRange=7-7

GPIO1MIS1                EQU  0x50018019
;`GPIO1MIS1.P1_8`           0x50018019,        1, base=16,    bitRange=0-0
;`GPIO1MIS1.P1_9`           0x50018019,        1, base=16,    bitRange=1-1
;`GPIO1MIS1.P1_10`          0x50018019,        1, base=16,    bitRange=2-2
;`GPIO1MIS1.P1_11`          0x50018019,        1, base=16,    bitRange=3-3

GPIO1MISL                EQU  0x50018018
;`GPIO1MISL.P1_0`           0x50018018,        2, base=16,    bitRange=0-0
;`GPIO1MISL.P1_1`           0x50018018,        2, base=16,    bitRange=1-1
;`GPIO1MISL.P1_2`           0x50018018,        2, base=16,    bitRange=2-2
;`GPIO1MISL.P1_3`           0x50018018,        2, base=16,    bitRange=3-3
;`GPIO1MISL.P1_4`           0x50018018,        2, base=16,    bitRange=4-4
;`GPIO1MISL.P1_5`           0x50018018,        2, base=16,    bitRange=5-5
;`GPIO1MISL.P1_6`           0x50018018,        2, base=16,    bitRange=6-6
;`GPIO1MISL.P1_7`           0x50018018,        2, base=16,    bitRange=7-7
;`GPIO1MISL.P1_8`           0x50018018,        2, base=16,    bitRange=8-8
;`GPIO1MISL.P1_9`           0x50018018,        2, base=16,    bitRange=9-9
;`GPIO1MISL.P1_10`          0x50018018,        2, base=16,    bitRange=10-10
;`GPIO1MISL.P1_11`          0x50018018,        2, base=16,    bitRange=11-11

GPIO1IC                  EQU  0x5001801C

GPIO2DATA                EQU  0x50023FFC
;`GPIO2DATA.P2_0`           0x50023FFC,        4, base=16,    bitRange=0-0
;`GPIO2DATA.P2_1`           0x50023FFC,        4, base=16,    bitRange=1-1
;`GPIO2DATA.P2_2`           0x50023FFC,        4, base=16,    bitRange=2-2
;`GPIO2DATA.P2_3`           0x50023FFC,        4, base=16,    bitRange=3-3
;`GPIO2DATA.P2_4`           0x50023FFC,        4, base=16,    bitRange=4-4
;`GPIO2DATA.P2_5`           0x50023FFC,        4, base=16,    bitRange=5-5
;`GPIO2DATA.P2_6`           0x50023FFC,        4, base=16,    bitRange=6-6
;`GPIO2DATA.P2_7`           0x50023FFC,        4, base=16,    bitRange=7-7
;`GPIO2DATA.P2_8`           0x50023FFC,        4, base=16,    bitRange=8-8
;`GPIO2DATA.P2_9`           0x50023FFC,        4, base=16,    bitRange=9-9
;`GPIO2DATA.P2_10`          0x50023FFC,        4, base=16,    bitRange=10-10
;`GPIO2DATA.P2_11`          0x50023FFC,        4, base=16,    bitRange=11-11

GPIO2DATA0               EQU  0x50023FFC
;`GPIO2DATA0.P2_0`          0x50023FFC,        1, base=16,    bitRange=0-0
;`GPIO2DATA0.P2_1`          0x50023FFC,        1, base=16,    bitRange=1-1
;`GPIO2DATA0.P2_2`          0x50023FFC,        1, base=16,    bitRange=2-2
;`GPIO2DATA0.P2_3`          0x50023FFC,        1, base=16,    bitRange=3-3
;`GPIO2DATA0.P2_4`          0x50023FFC,        1, base=16,    bitRange=4-4
;`GPIO2DATA0.P2_5`          0x50023FFC,        1, base=16,    bitRange=5-5
;`GPIO2DATA0.P2_6`          0x50023FFC,        1, base=16,    bitRange=6-6
;`GPIO2DATA0.P2_7`          0x50023FFC,        1, base=16,    bitRange=7-7

GPIO2DATA1               EQU  0x50023FFD
;`GPIO2DATA1.P2_8`          0x50023FFD,        1, base=16,    bitRange=0-0
;`GPIO2DATA1.P2_9`          0x50023FFD,        1, base=16,    bitRange=1-1
;`GPIO2DATA1.P2_10`         0x50023FFD,        1, base=16,    bitRange=2-2
;`GPIO2DATA1.P2_11`         0x50023FFD,        1, base=16,    bitRange=3-3

GPIO2DATAL               EQU  0x50023FFC
;`GPIO2DATAL.P2_0`          0x50023FFC,        2, base=16,    bitRange=0-0
;`GPIO2DATAL.P2_1`          0x50023FFC,        2, base=16,    bitRange=1-1
;`GPIO2DATAL.P2_2`          0x50023FFC,        2, base=16,    bitRange=2-2
;`GPIO2DATAL.P2_3`          0x50023FFC,        2, base=16,    bitRange=3-3
;`GPIO2DATAL.P2_4`          0x50023FFC,        2, base=16,    bitRange=4-4
;`GPIO2DATAL.P2_5`          0x50023FFC,        2, base=16,    bitRange=5-5
;`GPIO2DATAL.P2_6`          0x50023FFC,        2, base=16,    bitRange=6-6
;`GPIO2DATAL.P2_7`          0x50023FFC,        2, base=16,    bitRange=7-7
;`GPIO2DATAL.P2_8`          0x50023FFC,        2, base=16,    bitRange=8-8
;`GPIO2DATAL.P2_9`          0x50023FFC,        2, base=16,    bitRange=9-9
;`GPIO2DATAL.P2_10`         0x50023FFC,        2, base=16,    bitRange=10-10
;`GPIO2DATAL.P2_11`         0x50023FFC,        2, base=16,    bitRange=11-11

GPIO2DIR                 EQU  0x50028000
;`GPIO2DIR.P2_0`            0x50028000,        4, base=16,    bitRange=0-0
;`GPIO2DIR.P2_1`            0x50028000,        4, base=16,    bitRange=1-1
;`GPIO2DIR.P2_2`            0x50028000,        4, base=16,    bitRange=2-2
;`GPIO2DIR.P2_3`            0x50028000,        4, base=16,    bitRange=3-3
;`GPIO2DIR.P2_4`            0x50028000,        4, base=16,    bitRange=4-4
;`GPIO2DIR.P2_5`            0x50028000,        4, base=16,    bitRange=5-5
;`GPIO2DIR.P2_6`            0x50028000,        4, base=16,    bitRange=6-6
;`GPIO2DIR.P2_7`            0x50028000,        4, base=16,    bitRange=7-7
;`GPIO2DIR.P2_8`            0x50028000,        4, base=16,    bitRange=8-8
;`GPIO2DIR.P2_9`            0x50028000,        4, base=16,    bitRange=9-9
;`GPIO2DIR.P2_10`           0x50028000,        4, base=16,    bitRange=10-10
;`GPIO2DIR.P2_11`           0x50028000,        4, base=16,    bitRange=11-11

GPIO2DIR0                EQU  0x50028000
;`GPIO2DIR0.P2_0`           0x50028000,        1, base=16,    bitRange=0-0
;`GPIO2DIR0.P2_1`           0x50028000,        1, base=16,    bitRange=1-1
;`GPIO2DIR0.P2_2`           0x50028000,        1, base=16,    bitRange=2-2
;`GPIO2DIR0.P2_3`           0x50028000,        1, base=16,    bitRange=3-3
;`GPIO2DIR0.P2_4`           0x50028000,        1, base=16,    bitRange=4-4
;`GPIO2DIR0.P2_5`           0x50028000,        1, base=16,    bitRange=5-5
;`GPIO2DIR0.P2_6`           0x50028000,        1, base=16,    bitRange=6-6
;`GPIO2DIR0.P2_7`           0x50028000,        1, base=16,    bitRange=7-7

GPIO2DIR1                EQU  0x50028001
;`GPIO2DIR1.P2_8`           0x50028001,        1, base=16,    bitRange=0-0
;`GPIO2DIR1.P2_9`           0x50028001,        1, base=16,    bitRange=1-1
;`GPIO2DIR1.P2_10`          0x50028001,        1, base=16,    bitRange=2-2
;`GPIO2DIR1.P2_11`          0x50028001,        1, base=16,    bitRange=3-3

GPIO2DIRL                EQU  0x50028000
;`GPIO2DIRL.P2_0`           0x50028000,        2, base=16,    bitRange=0-0
;`GPIO2DIRL.P2_1`           0x50028000,        2, base=16,    bitRange=1-1
;`GPIO2DIRL.P2_2`           0x50028000,        2, base=16,    bitRange=2-2
;`GPIO2DIRL.P2_3`           0x50028000,        2, base=16,    bitRange=3-3
;`GPIO2DIRL.P2_4`           0x50028000,        2, base=16,    bitRange=4-4
;`GPIO2DIRL.P2_5`           0x50028000,        2, base=16,    bitRange=5-5
;`GPIO2DIRL.P2_6`           0x50028000,        2, base=16,    bitRange=6-6
;`GPIO2DIRL.P2_7`           0x50028000,        2, base=16,    bitRange=7-7
;`GPIO2DIRL.P2_8`           0x50028000,        2, base=16,    bitRange=8-8
;`GPIO2DIRL.P2_9`           0x50028000,        2, base=16,    bitRange=9-9
;`GPIO2DIRL.P2_10`          0x50028000,        2, base=16,    bitRange=10-10
;`GPIO2DIRL.P2_11`          0x50028000,        2, base=16,    bitRange=11-11

GPIO2IS                  EQU  0x50028004
;`GPIO2IS.P2_0`             0x50028004,        4, base=16,    bitRange=0-0
;`GPIO2IS.P2_1`             0x50028004,        4, base=16,    bitRange=1-1
;`GPIO2IS.P2_2`             0x50028004,        4, base=16,    bitRange=2-2
;`GPIO2IS.P2_3`             0x50028004,        4, base=16,    bitRange=3-3
;`GPIO2IS.P2_4`             0x50028004,        4, base=16,    bitRange=4-4
;`GPIO2IS.P2_5`             0x50028004,        4, base=16,    bitRange=5-5
;`GPIO2IS.P2_6`             0x50028004,        4, base=16,    bitRange=6-6
;`GPIO2IS.P2_7`             0x50028004,        4, base=16,    bitRange=7-7
;`GPIO2IS.P2_8`             0x50028004,        4, base=16,    bitRange=8-8
;`GPIO2IS.P2_9`             0x50028004,        4, base=16,    bitRange=9-9
;`GPIO2IS.P2_10`            0x50028004,        4, base=16,    bitRange=10-10
;`GPIO2IS.P2_11`            0x50028004,        4, base=16,    bitRange=11-11

GPIO2IS0                 EQU  0x50028004
;`GPIO2IS0.P2_0`            0x50028004,        1, base=16,    bitRange=0-0
;`GPIO2IS0.P2_1`            0x50028004,        1, base=16,    bitRange=1-1
;`GPIO2IS0.P2_2`            0x50028004,        1, base=16,    bitRange=2-2
;`GPIO2IS0.P2_3`            0x50028004,        1, base=16,    bitRange=3-3
;`GPIO2IS0.P2_4`            0x50028004,        1, base=16,    bitRange=4-4
;`GPIO2IS0.P2_5`            0x50028004,        1, base=16,    bitRange=5-5
;`GPIO2IS0.P2_6`            0x50028004,        1, base=16,    bitRange=6-6
;`GPIO2IS0.P2_7`            0x50028004,        1, base=16,    bitRange=7-7

GPIO2IS1                 EQU  0x50028005
;`GPIO2IS1.P2_8`            0x50028005,        1, base=16,    bitRange=0-0
;`GPIO2IS1.P2_9`            0x50028005,        1, base=16,    bitRange=1-1
;`GPIO2IS1.P2_10`           0x50028005,        1, base=16,    bitRange=2-2
;`GPIO2IS1.P2_11`           0x50028005,        1, base=16,    bitRange=3-3

GPIO2ISL                 EQU  0x50028004
;`GPIO2ISL.P2_0`            0x50028004,        2, base=16,    bitRange=0-0
;`GPIO2ISL.P2_1`            0x50028004,        2, base=16,    bitRange=1-1
;`GPIO2ISL.P2_2`            0x50028004,        2, base=16,    bitRange=2-2
;`GPIO2ISL.P2_3`            0x50028004,        2, base=16,    bitRange=3-3
;`GPIO2ISL.P2_4`            0x50028004,        2, base=16,    bitRange=4-4
;`GPIO2ISL.P2_5`            0x50028004,        2, base=16,    bitRange=5-5
;`GPIO2ISL.P2_6`            0x50028004,        2, base=16,    bitRange=6-6
;`GPIO2ISL.P2_7`            0x50028004,        2, base=16,    bitRange=7-7
;`GPIO2ISL.P2_8`            0x50028004,        2, base=16,    bitRange=8-8
;`GPIO2ISL.P2_9`            0x50028004,        2, base=16,    bitRange=9-9
;`GPIO2ISL.P2_10`           0x50028004,        2, base=16,    bitRange=10-10
;`GPIO2ISL.P2_11`           0x50028004,        2, base=16,    bitRange=11-11

GPIO2IBE                 EQU  0x50028008
;`GPIO2IBE.P2_0`            0x50028008,        4, base=16,    bitRange=0-0
;`GPIO2IBE.P2_1`            0x50028008,        4, base=16,    bitRange=1-1
;`GPIO2IBE.P2_2`            0x50028008,        4, base=16,    bitRange=2-2
;`GPIO2IBE.P2_3`            0x50028008,        4, base=16,    bitRange=3-3
;`GPIO2IBE.P2_4`            0x50028008,        4, base=16,    bitRange=4-4
;`GPIO2IBE.P2_5`            0x50028008,        4, base=16,    bitRange=5-5
;`GPIO2IBE.P2_6`            0x50028008,        4, base=16,    bitRange=6-6
;`GPIO2IBE.P2_7`            0x50028008,        4, base=16,    bitRange=7-7
;`GPIO2IBE.P2_8`            0x50028008,        4, base=16,    bitRange=8-8
;`GPIO2IBE.P2_9`            0x50028008,        4, base=16,    bitRange=9-9
;`GPIO2IBE.P2_10`           0x50028008,        4, base=16,    bitRange=10-10
;`GPIO2IBE.P2_11`           0x50028008,        4, base=16,    bitRange=11-11

GPIO2IBE0                EQU  0x50028008
;`GPIO2IBE0.P2_0`           0x50028008,        1, base=16,    bitRange=0-0
;`GPIO2IBE0.P2_1`           0x50028008,        1, base=16,    bitRange=1-1
;`GPIO2IBE0.P2_2`           0x50028008,        1, base=16,    bitRange=2-2
;`GPIO2IBE0.P2_3`           0x50028008,        1, base=16,    bitRange=3-3
;`GPIO2IBE0.P2_4`           0x50028008,        1, base=16,    bitRange=4-4
;`GPIO2IBE0.P2_5`           0x50028008,        1, base=16,    bitRange=5-5
;`GPIO2IBE0.P2_6`           0x50028008,        1, base=16,    bitRange=6-6
;`GPIO2IBE0.P2_7`           0x50028008,        1, base=16,    bitRange=7-7

GPIO2IBE1                EQU  0x50028009
;`GPIO2IBE1.P2_8`           0x50028009,        1, base=16,    bitRange=0-0
;`GPIO2IBE1.P2_9`           0x50028009,        1, base=16,    bitRange=1-1
;`GPIO2IBE1.P2_10`          0x50028009,        1, base=16,    bitRange=2-2
;`GPIO2IBE1.P2_11`          0x50028009,        1, base=16,    bitRange=3-3

GPIO2IBEL                EQU  0x50028008
;`GPIO2IBEL.P2_0`           0x50028008,        2, base=16,    bitRange=0-0
;`GPIO2IBEL.P2_1`           0x50028008,        2, base=16,    bitRange=1-1
;`GPIO2IBEL.P2_2`           0x50028008,        2, base=16,    bitRange=2-2
;`GPIO2IBEL.P2_3`           0x50028008,        2, base=16,    bitRange=3-3
;`GPIO2IBEL.P2_4`           0x50028008,        2, base=16,    bitRange=4-4
;`GPIO2IBEL.P2_5`           0x50028008,        2, base=16,    bitRange=5-5
;`GPIO2IBEL.P2_6`           0x50028008,        2, base=16,    bitRange=6-6
;`GPIO2IBEL.P2_7`           0x50028008,        2, base=16,    bitRange=7-7
;`GPIO2IBEL.P2_8`           0x50028008,        2, base=16,    bitRange=8-8
;`GPIO2IBEL.P2_9`           0x50028008,        2, base=16,    bitRange=9-9
;`GPIO2IBEL.P2_10`          0x50028008,        2, base=16,    bitRange=10-10
;`GPIO2IBEL.P2_11`          0x50028008,        2, base=16,    bitRange=11-11

GPIO2IEV                 EQU  0x5002800C
;`GPIO2IEV.P2_0`            0x5002800C,        4, base=16,    bitRange=0-0
;`GPIO2IEV.P2_1`            0x5002800C,        4, base=16,    bitRange=1-1
;`GPIO2IEV.P2_2`            0x5002800C,        4, base=16,    bitRange=2-2
;`GPIO2IEV.P2_3`            0x5002800C,        4, base=16,    bitRange=3-3
;`GPIO2IEV.P2_4`            0x5002800C,        4, base=16,    bitRange=4-4
;`GPIO2IEV.P2_5`            0x5002800C,        4, base=16,    bitRange=5-5
;`GPIO2IEV.P2_6`            0x5002800C,        4, base=16,    bitRange=6-6
;`GPIO2IEV.P2_7`            0x5002800C,        4, base=16,    bitRange=7-7
;`GPIO2IEV.P2_8`            0x5002800C,        4, base=16,    bitRange=8-8
;`GPIO2IEV.P2_9`            0x5002800C,        4, base=16,    bitRange=9-9
;`GPIO2IEV.P2_10`           0x5002800C,        4, base=16,    bitRange=10-10
;`GPIO2IEV.P2_11`           0x5002800C,        4, base=16,    bitRange=11-11

GPIO2IEV0                EQU  0x5002800C
;`GPIO2IEV0.P2_0`           0x5002800C,        1, base=16,    bitRange=0-0
;`GPIO2IEV0.P2_1`           0x5002800C,        1, base=16,    bitRange=1-1
;`GPIO2IEV0.P2_2`           0x5002800C,        1, base=16,    bitRange=2-2
;`GPIO2IEV0.P2_3`           0x5002800C,        1, base=16,    bitRange=3-3
;`GPIO2IEV0.P2_4`           0x5002800C,        1, base=16,    bitRange=4-4
;`GPIO2IEV0.P2_5`           0x5002800C,        1, base=16,    bitRange=5-5
;`GPIO2IEV0.P2_6`           0x5002800C,        1, base=16,    bitRange=6-6
;`GPIO2IEV0.P2_7`           0x5002800C,        1, base=16,    bitRange=7-7

GPIO2IEV1                EQU  0x5002800D
;`GPIO2IEV1.P2_8`           0x5002800D,        1, base=16,    bitRange=0-0
;`GPIO2IEV1.P2_9`           0x5002800D,        1, base=16,    bitRange=1-1
;`GPIO2IEV1.P2_10`          0x5002800D,        1, base=16,    bitRange=2-2
;`GPIO2IEV1.P2_11`          0x5002800D,        1, base=16,    bitRange=3-3

GPIO2IEVL                EQU  0x5002800C
;`GPIO2IEVL.P2_0`           0x5002800C,        2, base=16,    bitRange=0-0
;`GPIO2IEVL.P2_1`           0x5002800C,        2, base=16,    bitRange=1-1
;`GPIO2IEVL.P2_2`           0x5002800C,        2, base=16,    bitRange=2-2
;`GPIO2IEVL.P2_3`           0x5002800C,        2, base=16,    bitRange=3-3
;`GPIO2IEVL.P2_4`           0x5002800C,        2, base=16,    bitRange=4-4
;`GPIO2IEVL.P2_5`           0x5002800C,        2, base=16,    bitRange=5-5
;`GPIO2IEVL.P2_6`           0x5002800C,        2, base=16,    bitRange=6-6
;`GPIO2IEVL.P2_7`           0x5002800C,        2, base=16,    bitRange=7-7
;`GPIO2IEVL.P2_8`           0x5002800C,        2, base=16,    bitRange=8-8
;`GPIO2IEVL.P2_9`           0x5002800C,        2, base=16,    bitRange=9-9
;`GPIO2IEVL.P2_10`          0x5002800C,        2, base=16,    bitRange=10-10
;`GPIO2IEVL.P2_11`          0x5002800C,        2, base=16,    bitRange=11-11

GPIO2IE                  EQU  0x50028010
;`GPIO2IE.P2_0`             0x50028010,        4, base=16,    bitRange=0-0
;`GPIO2IE.P2_1`             0x50028010,        4, base=16,    bitRange=1-1
;`GPIO2IE.P2_2`             0x50028010,        4, base=16,    bitRange=2-2
;`GPIO2IE.P2_3`             0x50028010,        4, base=16,    bitRange=3-3
;`GPIO2IE.P2_4`             0x50028010,        4, base=16,    bitRange=4-4
;`GPIO2IE.P2_5`             0x50028010,        4, base=16,    bitRange=5-5
;`GPIO2IE.P2_6`             0x50028010,        4, base=16,    bitRange=6-6
;`GPIO2IE.P2_7`             0x50028010,        4, base=16,    bitRange=7-7
;`GPIO2IE.P2_8`             0x50028010,        4, base=16,    bitRange=8-8
;`GPIO2IE.P2_9`             0x50028010,        4, base=16,    bitRange=9-9
;`GPIO2IE.P2_10`            0x50028010,        4, base=16,    bitRange=10-10
;`GPIO2IE.P2_11`            0x50028010,        4, base=16,    bitRange=11-11

GPIO2IE0                 EQU  0x50028010
;`GPIO2IE0.P2_0`            0x50028010,        1, base=16,    bitRange=0-0
;`GPIO2IE0.P2_1`            0x50028010,        1, base=16,    bitRange=1-1
;`GPIO2IE0.P2_2`            0x50028010,        1, base=16,    bitRange=2-2
;`GPIO2IE0.P2_3`            0x50028010,        1, base=16,    bitRange=3-3
;`GPIO2IE0.P2_4`            0x50028010,        1, base=16,    bitRange=4-4
;`GPIO2IE0.P2_5`            0x50028010,        1, base=16,    bitRange=5-5
;`GPIO2IE0.P2_6`            0x50028010,        1, base=16,    bitRange=6-6
;`GPIO2IE0.P2_7`            0x50028010,        1, base=16,    bitRange=7-7

GPIO2IE1                 EQU  0x50028011
;`GPIO2IE1.P2_8`            0x50028011,        1, base=16,    bitRange=0-0
;`GPIO2IE1.P2_9`            0x50028011,        1, base=16,    bitRange=1-1
;`GPIO2IE1.P2_10`           0x50028011,        1, base=16,    bitRange=2-2
;`GPIO2IE1.P2_11`           0x50028011,        1, base=16,    bitRange=3-3

GPIO2IEL                 EQU  0x50028010
;`GPIO2IEL.P2_0`            0x50028010,        2, base=16,    bitRange=0-0
;`GPIO2IEL.P2_1`            0x50028010,        2, base=16,    bitRange=1-1
;`GPIO2IEL.P2_2`            0x50028010,        2, base=16,    bitRange=2-2
;`GPIO2IEL.P2_3`            0x50028010,        2, base=16,    bitRange=3-3
;`GPIO2IEL.P2_4`            0x50028010,        2, base=16,    bitRange=4-4
;`GPIO2IEL.P2_5`            0x50028010,        2, base=16,    bitRange=5-5
;`GPIO2IEL.P2_6`            0x50028010,        2, base=16,    bitRange=6-6
;`GPIO2IEL.P2_7`            0x50028010,        2, base=16,    bitRange=7-7
;`GPIO2IEL.P2_8`            0x50028010,        2, base=16,    bitRange=8-8
;`GPIO2IEL.P2_9`            0x50028010,        2, base=16,    bitRange=9-9
;`GPIO2IEL.P2_10`           0x50028010,        2, base=16,    bitRange=10-10
;`GPIO2IEL.P2_11`           0x50028010,        2, base=16,    bitRange=11-11

GPIO2RIS                 EQU  0x50028014
;`GPIO2RIS.P2_0`            0x50028014,        4, base=16,    bitRange=0-0
;`GPIO2RIS.P2_1`            0x50028014,        4, base=16,    bitRange=1-1
;`GPIO2RIS.P2_2`            0x50028014,        4, base=16,    bitRange=2-2
;`GPIO2RIS.P2_3`            0x50028014,        4, base=16,    bitRange=3-3
;`GPIO2RIS.P2_4`            0x50028014,        4, base=16,    bitRange=4-4
;`GPIO2RIS.P2_5`            0x50028014,        4, base=16,    bitRange=5-5
;`GPIO2RIS.P2_6`            0x50028014,        4, base=16,    bitRange=6-6
;`GPIO2RIS.P2_7`            0x50028014,        4, base=16,    bitRange=7-7
;`GPIO2RIS.P2_8`            0x50028014,        4, base=16,    bitRange=8-8
;`GPIO2RIS.P2_9`            0x50028014,        4, base=16,    bitRange=9-9
;`GPIO2RIS.P2_10`           0x50028014,        4, base=16,    bitRange=10-10
;`GPIO2RIS.P2_11`           0x50028014,        4, base=16,    bitRange=11-11

GPIO2RIS0                EQU  0x50028014
;`GPIO2RIS0.P2_0`           0x50028014,        1, base=16,    bitRange=0-0
;`GPIO2RIS0.P2_1`           0x50028014,        1, base=16,    bitRange=1-1
;`GPIO2RIS0.P2_2`           0x50028014,        1, base=16,    bitRange=2-2
;`GPIO2RIS0.P2_3`           0x50028014,        1, base=16,    bitRange=3-3
;`GPIO2RIS0.P2_4`           0x50028014,        1, base=16,    bitRange=4-4
;`GPIO2RIS0.P2_5`           0x50028014,        1, base=16,    bitRange=5-5
;`GPIO2RIS0.P2_6`           0x50028014,        1, base=16,    bitRange=6-6
;`GPIO2RIS0.P2_7`           0x50028014,        1, base=16,    bitRange=7-7

GPIO2RIS1                EQU  0x50028015
;`GPIO2RIS1.P2_8`           0x50028015,        1, base=16,    bitRange=0-0
;`GPIO2RIS1.P2_9`           0x50028015,        1, base=16,    bitRange=1-1
;`GPIO2RIS1.P2_10`          0x50028015,        1, base=16,    bitRange=2-2
;`GPIO2RIS1.P2_11`          0x50028015,        1, base=16,    bitRange=3-3

GPIO2RISL                EQU  0x50028014
;`GPIO2RISL.P2_0`           0x50028014,        2, base=16,    bitRange=0-0
;`GPIO2RISL.P2_1`           0x50028014,        2, base=16,    bitRange=1-1
;`GPIO2RISL.P2_2`           0x50028014,        2, base=16,    bitRange=2-2
;`GPIO2RISL.P2_3`           0x50028014,        2, base=16,    bitRange=3-3
;`GPIO2RISL.P2_4`           0x50028014,        2, base=16,    bitRange=4-4
;`GPIO2RISL.P2_5`           0x50028014,        2, base=16,    bitRange=5-5
;`GPIO2RISL.P2_6`           0x50028014,        2, base=16,    bitRange=6-6
;`GPIO2RISL.P2_7`           0x50028014,        2, base=16,    bitRange=7-7
;`GPIO2RISL.P2_8`           0x50028014,        2, base=16,    bitRange=8-8
;`GPIO2RISL.P2_9`           0x50028014,        2, base=16,    bitRange=9-9
;`GPIO2RISL.P2_10`          0x50028014,        2, base=16,    bitRange=10-10
;`GPIO2RISL.P2_11`          0x50028014,        2, base=16,    bitRange=11-11

GPIO2MIS                 EQU  0x50028018
;`GPIO2MIS.P2_0`            0x50028018,        4, base=16,    bitRange=0-0
;`GPIO2MIS.P2_1`            0x50028018,        4, base=16,    bitRange=1-1
;`GPIO2MIS.P2_2`            0x50028018,        4, base=16,    bitRange=2-2
;`GPIO2MIS.P2_3`            0x50028018,        4, base=16,    bitRange=3-3
;`GPIO2MIS.P2_4`            0x50028018,        4, base=16,    bitRange=4-4
;`GPIO2MIS.P2_5`            0x50028018,        4, base=16,    bitRange=5-5
;`GPIO2MIS.P2_6`            0x50028018,        4, base=16,    bitRange=6-6
;`GPIO2MIS.P2_7`            0x50028018,        4, base=16,    bitRange=7-7
;`GPIO2MIS.P2_8`            0x50028018,        4, base=16,    bitRange=8-8
;`GPIO2MIS.P2_9`            0x50028018,        4, base=16,    bitRange=9-9
;`GPIO2MIS.P2_10`           0x50028018,        4, base=16,    bitRange=10-10
;`GPIO2MIS.P2_11`           0x50028018,        4, base=16,    bitRange=11-11

GPIO2MIS0                EQU  0x50028018
;`GPIO2MIS0.P2_0`           0x50028018,        1, base=16,    bitRange=0-0
;`GPIO2MIS0.P2_1`           0x50028018,        1, base=16,    bitRange=1-1
;`GPIO2MIS0.P2_2`           0x50028018,        1, base=16,    bitRange=2-2
;`GPIO2MIS0.P2_3`           0x50028018,        1, base=16,    bitRange=3-3
;`GPIO2MIS0.P2_4`           0x50028018,        1, base=16,    bitRange=4-4
;`GPIO2MIS0.P2_5`           0x50028018,        1, base=16,    bitRange=5-5
;`GPIO2MIS0.P2_6`           0x50028018,        1, base=16,    bitRange=6-6
;`GPIO2MIS0.P2_7`           0x50028018,        1, base=16,    bitRange=7-7

GPIO2MIS1                EQU  0x50028019
;`GPIO2MIS1.P2_8`           0x50028019,        1, base=16,    bitRange=0-0
;`GPIO2MIS1.P2_9`           0x50028019,        1, base=16,    bitRange=1-1
;`GPIO2MIS1.P2_10`          0x50028019,        1, base=16,    bitRange=2-2
;`GPIO2MIS1.P2_11`          0x50028019,        1, base=16,    bitRange=3-3

GPIO2MISL                EQU  0x50028018
;`GPIO2MISL.P2_0`           0x50028018,        2, base=16,    bitRange=0-0
;`GPIO2MISL.P2_1`           0x50028018,        2, base=16,    bitRange=1-1
;`GPIO2MISL.P2_2`           0x50028018,        2, base=16,    bitRange=2-2
;`GPIO2MISL.P2_3`           0x50028018,        2, base=16,    bitRange=3-3
;`GPIO2MISL.P2_4`           0x50028018,        2, base=16,    bitRange=4-4
;`GPIO2MISL.P2_5`           0x50028018,        2, base=16,    bitRange=5-5
;`GPIO2MISL.P2_6`           0x50028018,        2, base=16,    bitRange=6-6
;`GPIO2MISL.P2_7`           0x50028018,        2, base=16,    bitRange=7-7
;`GPIO2MISL.P2_8`           0x50028018,        2, base=16,    bitRange=8-8
;`GPIO2MISL.P2_9`           0x50028018,        2, base=16,    bitRange=9-9
;`GPIO2MISL.P2_10`          0x50028018,        2, base=16,    bitRange=10-10
;`GPIO2MISL.P2_11`          0x50028018,        2, base=16,    bitRange=11-11

GPIO2IC                  EQU  0x5002801C

GPIO3DATA                EQU  0x50033FFC
;`GPIO3DATA.P3_0`           0x50033FFC,        4, base=16,    bitRange=0-0
;`GPIO3DATA.P3_1`           0x50033FFC,        4, base=16,    bitRange=1-1
;`GPIO3DATA.P3_2`           0x50033FFC,        4, base=16,    bitRange=2-2
;`GPIO3DATA.P3_3`           0x50033FFC,        4, base=16,    bitRange=3-3
;`GPIO3DATA.P3_4`           0x50033FFC,        4, base=16,    bitRange=4-4
;`GPIO3DATA.P3_5`           0x50033FFC,        4, base=16,    bitRange=5-5

GPIO3DATA0               EQU  0x50033FFC
;`GPIO3DATA0.P3_0`          0x50033FFC,        1, base=16,    bitRange=0-0
;`GPIO3DATA0.P3_1`          0x50033FFC,        1, base=16,    bitRange=1-1
;`GPIO3DATA0.P3_2`          0x50033FFC,        1, base=16,    bitRange=2-2
;`GPIO3DATA0.P3_3`          0x50033FFC,        1, base=16,    bitRange=3-3
;`GPIO3DATA0.P3_4`          0x50033FFC,        1, base=16,    bitRange=4-4
;`GPIO3DATA0.P3_5`          0x50033FFC,        1, base=16,    bitRange=5-5

GPIO3DATAL               EQU  0x50033FFC
;`GPIO3DATAL.P3_0`          0x50033FFC,        2, base=16,    bitRange=0-0
;`GPIO3DATAL.P3_1`          0x50033FFC,        2, base=16,    bitRange=1-1
;`GPIO3DATAL.P3_2`          0x50033FFC,        2, base=16,    bitRange=2-2
;`GPIO3DATAL.P3_3`          0x50033FFC,        2, base=16,    bitRange=3-3
;`GPIO3DATAL.P3_4`          0x50033FFC,        2, base=16,    bitRange=4-4
;`GPIO3DATAL.P3_5`          0x50033FFC,        2, base=16,    bitRange=5-5

GPIO3DIR                 EQU  0x50038000
;`GPIO3DIR.P3_0`            0x50038000,        4, base=16,    bitRange=0-0
;`GPIO3DIR.P3_1`            0x50038000,        4, base=16,    bitRange=1-1
;`GPIO3DIR.P3_2`            0x50038000,        4, base=16,    bitRange=2-2
;`GPIO3DIR.P3_3`            0x50038000,        4, base=16,    bitRange=3-3
;`GPIO3DIR.P3_4`            0x50038000,        4, base=16,    bitRange=4-4
;`GPIO3DIR.P3_5`            0x50038000,        4, base=16,    bitRange=5-5

GPIO3DIR0                EQU  0x50038000
;`GPIO3DIR0.P3_0`           0x50038000,        1, base=16,    bitRange=0-0
;`GPIO3DIR0.P3_1`           0x50038000,        1, base=16,    bitRange=1-1
;`GPIO3DIR0.P3_2`           0x50038000,        1, base=16,    bitRange=2-2
;`GPIO3DIR0.P3_3`           0x50038000,        1, base=16,    bitRange=3-3
;`GPIO3DIR0.P3_4`           0x50038000,        1, base=16,    bitRange=4-4
;`GPIO3DIR0.P3_5`           0x50038000,        1, base=16,    bitRange=5-5

GPIO3DIRL                EQU  0x50038000
;`GPIO3DIRL.P3_0`           0x50038000,        2, base=16,    bitRange=0-0
;`GPIO3DIRL.P3_1`           0x50038000,        2, base=16,    bitRange=1-1
;`GPIO3DIRL.P3_2`           0x50038000,        2, base=16,    bitRange=2-2
;`GPIO3DIRL.P3_3`           0x50038000,        2, base=16,    bitRange=3-3
;`GPIO3DIRL.P3_4`           0x50038000,        2, base=16,    bitRange=4-4
;`GPIO3DIRL.P3_5`           0x50038000,        2, base=16,    bitRange=5-5

GPIO3IS                  EQU  0x50038004
;`GPIO3IS.P3_0`             0x50038004,        4, base=16,    bitRange=0-0
;`GPIO3IS.P3_1`             0x50038004,        4, base=16,    bitRange=1-1
;`GPIO3IS.P3_2`             0x50038004,        4, base=16,    bitRange=2-2
;`GPIO3IS.P3_3`             0x50038004,        4, base=16,    bitRange=3-3
;`GPIO3IS.P3_4`             0x50038004,        4, base=16,    bitRange=4-4
;`GPIO3IS.P3_5`             0x50038004,        4, base=16,    bitRange=5-5

GPIO3IS0                 EQU  0x50038004
;`GPIO3IS0.P3_0`            0x50038004,        1, base=16,    bitRange=0-0
;`GPIO3IS0.P3_1`            0x50038004,        1, base=16,    bitRange=1-1
;`GPIO3IS0.P3_2`            0x50038004,        1, base=16,    bitRange=2-2
;`GPIO3IS0.P3_3`            0x50038004,        1, base=16,    bitRange=3-3
;`GPIO3IS0.P3_4`            0x50038004,        1, base=16,    bitRange=4-4
;`GPIO3IS0.P3_5`            0x50038004,        1, base=16,    bitRange=5-5

GPIO3ISL                 EQU  0x50038004
;`GPIO3ISL.P3_0`            0x50038004,        2, base=16,    bitRange=0-0
;`GPIO3ISL.P3_1`            0x50038004,        2, base=16,    bitRange=1-1
;`GPIO3ISL.P3_2`            0x50038004,        2, base=16,    bitRange=2-2
;`GPIO3ISL.P3_3`            0x50038004,        2, base=16,    bitRange=3-3
;`GPIO3ISL.P3_4`            0x50038004,        2, base=16,    bitRange=4-4
;`GPIO3ISL.P3_5`            0x50038004,        2, base=16,    bitRange=5-5

GPIO3IBE                 EQU  0x50038008
;`GPIO3IBE.P3_0`            0x50038008,        4, base=16,    bitRange=0-0
;`GPIO3IBE.P3_1`            0x50038008,        4, base=16,    bitRange=1-1
;`GPIO3IBE.P3_2`            0x50038008,        4, base=16,    bitRange=2-2
;`GPIO3IBE.P3_3`            0x50038008,        4, base=16,    bitRange=3-3
;`GPIO3IBE.P3_4`            0x50038008,        4, base=16,    bitRange=4-4
;`GPIO3IBE.P3_5`            0x50038008,        4, base=16,    bitRange=5-5

GPIO3IBE0                EQU  0x50038008
;`GPIO3IBE0.P3_0`           0x50038008,        1, base=16,    bitRange=0-0
;`GPIO3IBE0.P3_1`           0x50038008,        1, base=16,    bitRange=1-1
;`GPIO3IBE0.P3_2`           0x50038008,        1, base=16,    bitRange=2-2
;`GPIO3IBE0.P3_3`           0x50038008,        1, base=16,    bitRange=3-3
;`GPIO3IBE0.P3_4`           0x50038008,        1, base=16,    bitRange=4-4
;`GPIO3IBE0.P3_5`           0x50038008,        1, base=16,    bitRange=5-5

GPIO3IBEL                EQU  0x50038008
;`GPIO3IBEL.P3_0`           0x50038008,        2, base=16,    bitRange=0-0
;`GPIO3IBEL.P3_1`           0x50038008,        2, base=16,    bitRange=1-1
;`GPIO3IBEL.P3_2`           0x50038008,        2, base=16,    bitRange=2-2
;`GPIO3IBEL.P3_3`           0x50038008,        2, base=16,    bitRange=3-3
;`GPIO3IBEL.P3_4`           0x50038008,        2, base=16,    bitRange=4-4
;`GPIO3IBEL.P3_5`           0x50038008,        2, base=16,    bitRange=5-5

GPIO3IEV                 EQU  0x5003800C
;`GPIO3IEV.P3_0`            0x5003800C,        4, base=16,    bitRange=0-0
;`GPIO3IEV.P3_1`            0x5003800C,        4, base=16,    bitRange=1-1
;`GPIO3IEV.P3_2`            0x5003800C,        4, base=16,    bitRange=2-2
;`GPIO3IEV.P3_3`            0x5003800C,        4, base=16,    bitRange=3-3
;`GPIO3IEV.P3_4`            0x5003800C,        4, base=16,    bitRange=4-4
;`GPIO3IEV.P3_5`            0x5003800C,        4, base=16,    bitRange=5-5

GPIO3IEV0                EQU  0x5003800C
;`GPIO3IEV0.P3_0`           0x5003800C,        1, base=16,    bitRange=0-0
;`GPIO3IEV0.P3_1`           0x5003800C,        1, base=16,    bitRange=1-1
;`GPIO3IEV0.P3_2`           0x5003800C,        1, base=16,    bitRange=2-2
;`GPIO3IEV0.P3_3`           0x5003800C,        1, base=16,    bitRange=3-3
;`GPIO3IEV0.P3_4`           0x5003800C,        1, base=16,    bitRange=4-4
;`GPIO3IEV0.P3_5`           0x5003800C,        1, base=16,    bitRange=5-5

GPIO3IEVL                EQU  0x5003800C
;`GPIO3IEVL.P3_0`           0x5003800C,        2, base=16,    bitRange=0-0
;`GPIO3IEVL.P3_1`           0x5003800C,        2, base=16,    bitRange=1-1
;`GPIO3IEVL.P3_2`           0x5003800C,        2, base=16,    bitRange=2-2
;`GPIO3IEVL.P3_3`           0x5003800C,        2, base=16,    bitRange=3-3
;`GPIO3IEVL.P3_4`           0x5003800C,        2, base=16,    bitRange=4-4
;`GPIO3IEVL.P3_5`           0x5003800C,        2, base=16,    bitRange=5-5

GPIO3IE                  EQU  0x50038010
;`GPIO3IE.P3_0`             0x50038010,        4, base=16,    bitRange=0-0
;`GPIO3IE.P3_1`             0x50038010,        4, base=16,    bitRange=1-1
;`GPIO3IE.P3_2`             0x50038010,        4, base=16,    bitRange=2-2
;`GPIO3IE.P3_3`             0x50038010,        4, base=16,    bitRange=3-3
;`GPIO3IE.P3_4`             0x50038010,        4, base=16,    bitRange=4-4
;`GPIO3IE.P3_5`             0x50038010,        4, base=16,    bitRange=5-5

GPIO3IE0                 EQU  0x50038010
;`GPIO3IE0.P3_0`            0x50038010,        1, base=16,    bitRange=0-0
;`GPIO3IE0.P3_1`            0x50038010,        1, base=16,    bitRange=1-1
;`GPIO3IE0.P3_2`            0x50038010,        1, base=16,    bitRange=2-2
;`GPIO3IE0.P3_3`            0x50038010,        1, base=16,    bitRange=3-3
;`GPIO3IE0.P3_4`            0x50038010,        1, base=16,    bitRange=4-4
;`GPIO3IE0.P3_5`            0x50038010,        1, base=16,    bitRange=5-5

GPIO3IEL                 EQU  0x50038010
;`GPIO3IEL.P3_0`            0x50038010,        2, base=16,    bitRange=0-0
;`GPIO3IEL.P3_1`            0x50038010,        2, base=16,    bitRange=1-1
;`GPIO3IEL.P3_2`            0x50038010,        2, base=16,    bitRange=2-2
;`GPIO3IEL.P3_3`            0x50038010,        2, base=16,    bitRange=3-3
;`GPIO3IEL.P3_4`            0x50038010,        2, base=16,    bitRange=4-4
;`GPIO3IEL.P3_5`            0x50038010,        2, base=16,    bitRange=5-5

GPIO3RIS                 EQU  0x50038014
;`GPIO3RIS.P3_0`            0x50038014,        4, base=16,    bitRange=0-0
;`GPIO3RIS.P3_1`            0x50038014,        4, base=16,    bitRange=1-1
;`GPIO3RIS.P3_2`            0x50038014,        4, base=16,    bitRange=2-2
;`GPIO3RIS.P3_3`            0x50038014,        4, base=16,    bitRange=3-3
;`GPIO3RIS.P3_4`            0x50038014,        4, base=16,    bitRange=4-4
;`GPIO3RIS.P3_5`            0x50038014,        4, base=16,    bitRange=5-5

GPIO3RIS0                EQU  0x50038014
;`GPIO3RIS0.P3_0`           0x50038014,        1, base=16,    bitRange=0-0
;`GPIO3RIS0.P3_1`           0x50038014,        1, base=16,    bitRange=1-1
;`GPIO3RIS0.P3_2`           0x50038014,        1, base=16,    bitRange=2-2
;`GPIO3RIS0.P3_3`           0x50038014,        1, base=16,    bitRange=3-3
;`GPIO3RIS0.P3_4`           0x50038014,        1, base=16,    bitRange=4-4
;`GPIO3RIS0.P3_5`           0x50038014,        1, base=16,    bitRange=5-5

GPIO3RISL                EQU  0x50038014
;`GPIO3RISL.P3_0`           0x50038014,        2, base=16,    bitRange=0-0
;`GPIO3RISL.P3_1`           0x50038014,        2, base=16,    bitRange=1-1
;`GPIO3RISL.P3_2`           0x50038014,        2, base=16,    bitRange=2-2
;`GPIO3RISL.P3_3`           0x50038014,        2, base=16,    bitRange=3-3
;`GPIO3RISL.P3_4`           0x50038014,        2, base=16,    bitRange=4-4
;`GPIO3RISL.P3_5`           0x50038014,        2, base=16,    bitRange=5-5

GPIO3MIS                 EQU  0x50038018
;`GPIO3MIS.P3_0`            0x50038018,        4, base=16,    bitRange=0-0
;`GPIO3MIS.P3_1`            0x50038018,        4, base=16,    bitRange=1-1
;`GPIO3MIS.P3_2`            0x50038018,        4, base=16,    bitRange=2-2
;`GPIO3MIS.P3_3`            0x50038018,        4, base=16,    bitRange=3-3
;`GPIO3MIS.P3_4`            0x50038018,        4, base=16,    bitRange=4-4
;`GPIO3MIS.P3_5`            0x50038018,        4, base=16,    bitRange=5-5

GPIO3MIS0                EQU  0x50038018
;`GPIO3MIS0.P3_0`           0x50038018,        1, base=16,    bitRange=0-0
;`GPIO3MIS0.P3_1`           0x50038018,        1, base=16,    bitRange=1-1
;`GPIO3MIS0.P3_2`           0x50038018,        1, base=16,    bitRange=2-2
;`GPIO3MIS0.P3_3`           0x50038018,        1, base=16,    bitRange=3-3
;`GPIO3MIS0.P3_4`           0x50038018,        1, base=16,    bitRange=4-4
;`GPIO3MIS0.P3_5`           0x50038018,        1, base=16,    bitRange=5-5

GPIO3MISL                EQU  0x50038018
;`GPIO3MISL.P3_0`           0x50038018,        2, base=16,    bitRange=0-0
;`GPIO3MISL.P3_1`           0x50038018,        2, base=16,    bitRange=1-1
;`GPIO3MISL.P3_2`           0x50038018,        2, base=16,    bitRange=2-2
;`GPIO3MISL.P3_3`           0x50038018,        2, base=16,    bitRange=3-3
;`GPIO3MISL.P3_4`           0x50038018,        2, base=16,    bitRange=4-4
;`GPIO3MISL.P3_5`           0x50038018,        2, base=16,    bitRange=5-5

GPIO3IC                  EQU  0x5003801C


;
;               UART
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


U0RBRTHR                 EQU  0x40008000

U0DLL                    EQU  0x40008000

U0RBR                    EQU  0x40008000

U0THR                    EQU  0x40008000

U0IER                    EQU  0x40008004
;`U0IER.RDAIE`              0x40008004,        4, base=16,    bitRange=0-0
;`U0IER.THREIE`             0x40008004,        4, base=16,    bitRange=1-1
;`U0IER.RXLSIE`             0x40008004,        4, base=16,    bitRange=2-2
;`U0IER.ABEOINTEN`          0x40008004,        4, base=16,    bitRange=8-8
;`U0IER.ABTOINTEN`          0x40008004,        4, base=16,    bitRange=9-9

U0DLM                    EQU  0x40008004

U0FCR                    EQU  0x40008008
;`U0FCR.FCRFE`              0x40008008,        4, base=16,    bitRange=0-0
;`U0FCR.RFR`                0x40008008,        4, base=16,    bitRange=1-1
;`U0FCR.TFR`                0x40008008,        4, base=16,    bitRange=2-2
;`U0FCR.RTLS`               0x40008008,        4, base=16,    bitRange=6-7

U0IIR                    EQU  0x40008008
;`U0IIR.IP`                 0x40008008,        4, base=16,    bitRange=0-0
;`U0IIR.IID`                0x40008008,        4, base=16,    bitRange=1-3
;`U0IIR.IIRFE`              0x40008008,        4, base=16,    bitRange=6-7
;`U0IIR.ABEOINT`            0x40008008,        4, base=16,    bitRange=8-8
;`U0IIR.ABTOINT`            0x40008008,        4, base=16,    bitRange=9-9

U0LCR                    EQU  0x4000800C
;`U0LCR.WLS`                0x4000800C,        1, base=16,    bitRange=0-1
;`U0LCR.SBS`                0x4000800C,        1, base=16,    bitRange=2-2
;`U0LCR.PE`                 0x4000800C,        1, base=16,    bitRange=3-3
;`U0LCR.PS`                 0x4000800C,        1, base=16,    bitRange=4-5
;`U0LCR.BC`                 0x4000800C,        1, base=16,    bitRange=6-6
;`U0LCR.DLAB`               0x4000800C,        1, base=16,    bitRange=7-7

U0MCR                    EQU  0x40008010
;`U0MCR.DTR`                0x40008010,        1, base=16,    bitRange=0-0
;`U0MCR.RTS`                0x40008010,        1, base=16,    bitRange=1-1
;`U0MCR.LMS`                0x40008010,        1, base=16,    bitRange=4-4
;`U0MCR.RTSEN`              0x40008010,        1, base=16,    bitRange=6-6
;`U0MCR.CTSEN`              0x40008010,        1, base=16,    bitRange=7-7

U0LSR                    EQU  0x40008014
;`U0LSR.DR`                 0x40008014,        1, base=16,    bitRange=0-0
;`U0LSR.OE`                 0x40008014,        1, base=16,    bitRange=1-1
;`U0LSR.PE`                 0x40008014,        1, base=16,    bitRange=2-2
;`U0LSR.FE`                 0x40008014,        1, base=16,    bitRange=3-3
;`U0LSR.BI`                 0x40008014,        1, base=16,    bitRange=4-4
;`U0LSR.THRE`               0x40008014,        1, base=16,    bitRange=5-5
;`U0LSR.TEMT`               0x40008014,        1, base=16,    bitRange=6-6
;`U0LSR.RXFE`               0x40008014,        1, base=16,    bitRange=7-7

U0MSR                    EQU  0x40008018
;`U0MSR.DCTS`               0x40008018,        1, base=16,    bitRange=0-0
;`U0MSR.DDSR`               0x40008018,        1, base=16,    bitRange=1-1
;`U0MSR.TERI`               0x40008018,        1, base=16,    bitRange=2-2
;`U0MSR.DDCD`               0x40008018,        1, base=16,    bitRange=3-3
;`U0MSR.CTS`                0x40008018,        1, base=16,    bitRange=4-4
;`U0MSR.DSR`                0x40008018,        1, base=16,    bitRange=5-5
;`U0MSR.RI`                 0x40008018,        1, base=16,    bitRange=6-6
;`U0MSR.DCD`                0x40008018,        1, base=16,    bitRange=7-7

U0SCR                    EQU  0x4000801C

U0ACR                    EQU  0x40008020
;`U0ACR.START`              0x40008020,        4, base=16,    bitRange=0-0
;`U0ACR.MODE`               0x40008020,        4, base=16,    bitRange=1-1
;`U0ACR.AUTORESTART`        0x40008020,        4, base=16,    bitRange=2-2
;`U0ACR.ABEOINTCLR`         0x40008020,        4, base=16,    bitRange=8-8
;`U0ACR.ABTOINTCLR`         0x40008020,        4, base=16,    bitRange=9-9

U0FDR                    EQU  0x40008028
;`U0FDR.DIVADDVAL`          0x40008028,        4, base=16,    bitRange=0-3
;`U0FDR.MULVAL`             0x40008028,        4, base=16,    bitRange=4-7

U0TER                    EQU  0x40008030
;`U0TER.TXEN`               0x40008030,        1, base=16,    bitRange=7-7

U0RS485CTRL              EQU  0x4000804C
;`U0RS485CTRL.NMMEN`        0x4000804C,        4, base=16,    bitRange=0-0
;`U0RS485CTRL.RXDIS`        0x4000804C,        4, base=16,    bitRange=1-1
;`U0RS485CTRL.AADEN`        0x4000804C,        4, base=16,    bitRange=2-2
;`U0RS485CTRL.SEL`          0x4000804C,        4, base=16,    bitRange=3-3
;`U0RS485CTRL.DCTRL`        0x4000804C,        4, base=16,    bitRange=4-4
;`U0RS485CTRL.OINV`         0x4000804C,        4, base=16,    bitRange=5-5

U0ADRMATCH               EQU  0x40008050

U0RS485DLY               EQU  0x40008054


;
;               SSP0
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


SSP0CR0                  EQU  0x40040000
;`SSP0CR0.DSS`              0x40040000,        4, base=16,    bitRange=0-3
;`SSP0CR0.FRF`              0x40040000,        4, base=16,    bitRange=4-5
;`SSP0CR0.CPOL`             0x40040000,        4, base=16,    bitRange=6-6
;`SSP0CR0.CPHA`             0x40040000,        4, base=16,    bitRange=7-7
;`SSP0CR0.SCR`              0x40040000,        4, base=16,    bitRange=8-15

SSP0CR1                  EQU  0x40040004
;`SSP0CR1.LBM`              0x40040004,        4, base=16,    bitRange=0-0
;`SSP0CR1.SSE`              0x40040004,        4, base=16,    bitRange=1-1
;`SSP0CR1.MS`               0x40040004,        4, base=16,    bitRange=2-2
;`SSP0CR1.SOD`              0x40040004,        4, base=16,    bitRange=3-3

SSP0DR                   EQU  0x40040008
;`SSP0DR.DATA`              0x40040008,        4, base=16,    bitRange=0-15

SSP0SR                   EQU  0x4004000C
;`SSP0SR.TFE`               0x4004000C,        4, base=16,    bitRange=0-0
;`SSP0SR.TNF`               0x4004000C,        4, base=16,    bitRange=1-1
;`SSP0SR.RNE`               0x4004000C,        4, base=16,    bitRange=2-2
;`SSP0SR.RFF`               0x4004000C,        4, base=16,    bitRange=3-3
;`SSP0SR.BSY`               0x4004000C,        4, base=16,    bitRange=4-4

SSP0CPSR                 EQU  0x40040010
;`SSP0CPSR.CPSDVSR`         0x40040010,        4, base=16,    bitRange=0-7

SSP0IMSC                 EQU  0x40040014
;`SSP0IMSC.RORIM`           0x40040014,        4, base=16,    bitRange=0-0
;`SSP0IMSC.RTIM`            0x40040014,        4, base=16,    bitRange=1-1
;`SSP0IMSC.RXIM`            0x40040014,        4, base=16,    bitRange=2-2
;`SSP0IMSC.TXIM`            0x40040014,        4, base=16,    bitRange=3-3

SSP0RIS                  EQU  0x40040018
;`SSP0RIS.RORRIS`           0x40040018,        4, base=16,    bitRange=0-0
;`SSP0RIS.RTRIS`            0x40040018,        4, base=16,    bitRange=1-1
;`SSP0RIS.RXRIS`            0x40040018,        4, base=16,    bitRange=2-2
;`SSP0RIS.TXRIS`            0x40040018,        4, base=16,    bitRange=3-3

SSP0MIS                  EQU  0x4004001C
;`SSP0MIS.RORMIS`           0x4004001C,        4, base=16,    bitRange=0-0
;`SSP0MIS.RTMIS`            0x4004001C,        4, base=16,    bitRange=1-1
;`SSP0MIS.RXMIS`            0x4004001C,        4, base=16,    bitRange=2-2
;`SSP0MIS.TXMIS`            0x4004001C,        4, base=16,    bitRange=3-3

SSP0ICR                  EQU  0x40040020
;`SSP0ICR.RORIC`            0x40040020,        4, base=16,    bitRange=0-0
;`SSP0ICR.RTIC`             0x40040020,        4, base=16,    bitRange=1-1


;
;               SSP1
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


SSP1CR0                  EQU  0x40058000
;`SSP1CR0.DSS`              0x40058000,        4, base=16,    bitRange=0-3
;`SSP1CR0.FRF`              0x40058000,        4, base=16,    bitRange=4-5
;`SSP1CR0.CPOL`             0x40058000,        4, base=16,    bitRange=6-6
;`SSP1CR0.CPHA`             0x40058000,        4, base=16,    bitRange=7-7
;`SSP1CR0.SCR`              0x40058000,        4, base=16,    bitRange=8-15

SSP1CR1                  EQU  0x40058004
;`SSP1CR1.LBM`              0x40058004,        4, base=16,    bitRange=0-0
;`SSP1CR1.SSE`              0x40058004,        4, base=16,    bitRange=1-1
;`SSP1CR1.MS`               0x40058004,        4, base=16,    bitRange=2-2
;`SSP1CR1.SOD`              0x40058004,        4, base=16,    bitRange=3-3

SSP1DR                   EQU  0x40058008
;`SSP1DR.DATA`              0x40058008,        4, base=16,    bitRange=0-15

SSP1SR                   EQU  0x4005800C
;`SSP1SR.TFE`               0x4005800C,        4, base=16,    bitRange=0-0
;`SSP1SR.TNF`               0x4005800C,        4, base=16,    bitRange=1-1
;`SSP1SR.RNE`               0x4005800C,        4, base=16,    bitRange=2-2
;`SSP1SR.RFF`               0x4005800C,        4, base=16,    bitRange=3-3
;`SSP1SR.BSY`               0x4005800C,        4, base=16,    bitRange=4-4

SSP1CPSR                 EQU  0x40058010
;`SSP1CPSR.CPSDVSR`         0x40058010,        4, base=16,    bitRange=0-7

SSP1IMSC                 EQU  0x40058014
;`SSP1IMSC.RORIM`           0x40058014,        4, base=16,    bitRange=0-0
;`SSP1IMSC.RTIM`            0x40058014,        4, base=16,    bitRange=1-1
;`SSP1IMSC.RXIM`            0x40058014,        4, base=16,    bitRange=2-2
;`SSP1IMSC.TXIM`            0x40058014,        4, base=16,    bitRange=3-3

SSP1RIS                  EQU  0x40058018
;`SSP1RIS.RORRIS`           0x40058018,        4, base=16,    bitRange=0-0
;`SSP1RIS.RTRIS`            0x40058018,        4, base=16,    bitRange=1-1
;`SSP1RIS.RXRIS`            0x40058018,        4, base=16,    bitRange=2-2
;`SSP1RIS.TXRIS`            0x40058018,        4, base=16,    bitRange=3-3

SSP1MIS                  EQU  0x4005801C
;`SSP1MIS.RORMIS`           0x4005801C,        4, base=16,    bitRange=0-0
;`SSP1MIS.RTMIS`            0x4005801C,        4, base=16,    bitRange=1-1
;`SSP1MIS.RXMIS`            0x4005801C,        4, base=16,    bitRange=2-2
;`SSP1MIS.TXMIS`            0x4005801C,        4, base=16,    bitRange=3-3

SSP1ICR                  EQU  0x40058020
;`SSP1ICR.RORIC`            0x40058020,        4, base=16,    bitRange=0-0
;`SSP1ICR.RTIC`             0x40058020,        4, base=16,    bitRange=1-1


;
;               I2C
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


I2C0CONSET               EQU  0x40000000
;`I2C0CONSET.AA`            0x40000000,        4, base=16,    bitRange=2-2
;`I2C0CONSET.SI`            0x40000000,        4, base=16,    bitRange=3-3
;`I2C0CONSET.STO`           0x40000000,        4, base=16,    bitRange=4-4
;`I2C0CONSET.STA`           0x40000000,        4, base=16,    bitRange=5-5
;`I2C0CONSET.I2EN`          0x40000000,        4, base=16,    bitRange=6-6

I2C0STAT                 EQU  0x40000004
;`I2C0STAT.STATUS`          0x40000004,        4, base=16,    bitRange=0-7

I2C0DAT                  EQU  0x40000008
;`I2C0DAT.DATA`             0x40000008,        4, base=16,    bitRange=0-7

I2C0ADR                  EQU  0x4000000C
;`I2C0ADR.GC`               0x4000000C,        4, base=16,    bitRange=0-0
;`I2C0ADR.ADDR`             0x4000000C,        4, base=16,    bitRange=1-7

I2C0SCLH                 EQU  0x40000010
;`I2C0SCLH.SCLH`            0x40000010,        4, base=16,    bitRange=0-15

I2C0SCLL                 EQU  0x40000014
;`I2C0SCLL.SCLL`            0x40000014,        4, base=16,    bitRange=0-15

I2C0CONCLR               EQU  0x40000018

I2C0MMCTRL               EQU  0x4000001C
;`I2C0MMCTRL.MM_ENA`        0x4000001C,        4, base=16,    bitRange=0-0
;`I2C0MMCTRL.ENA_SCL`       0x4000001C,        4, base=16,    bitRange=1-1
;`I2C0MMCTRL.MATCH_ALL`     0x4000001C,        4, base=16,    bitRange=2-2

I2C0ADR1                 EQU  0x40000020
;`I2C0ADR1.GC`              0x40000020,        4, base=16,    bitRange=0-0
;`I2C0ADR1.ADDR`            0x40000020,        4, base=16,    bitRange=1-7

I2C0ADR2                 EQU  0x40000024
;`I2C0ADR2.GC`              0x40000024,        4, base=16,    bitRange=0-0
;`I2C0ADR2.ADDR`            0x40000024,        4, base=16,    bitRange=1-7

I2C0ADR3                 EQU  0x40000028
;`I2C0ADR3.GC`              0x40000028,        4, base=16,    bitRange=0-0
;`I2C0ADR3.ADDR`            0x40000028,        4, base=16,    bitRange=1-7

I2C0DATABUFFER           EQU  0x4000002C
;`I2C0DATABUFFER.DATA`      0x4000002C,        4, base=16,    bitRange=0-7

I2C0MASK0                EQU  0x40000030
;`I2C0MASK0.MASK`           0x40000030,        4, base=16,    bitRange=1-7

I2C0MASK1                EQU  0x40000034
;`I2C0MASK1.MASK`           0x40000034,        4, base=16,    bitRange=1-7

I2C0MASK2                EQU  0x40000038
;`I2C0MASK2.MASK`           0x40000038,        4, base=16,    bitRange=1-7

I2C0MASK3                EQU  0x4000003C
;`I2C0MASK3.MASK`           0x4000003C,        4, base=16,    bitRange=1-7


;
;               CT16B0
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


TMR16B0IR                EQU  0x4000C000
;`TMR16B0IR.MR0INT`         0x4000C000,        4, base=16,    bitRange=0-0
;`TMR16B0IR.MR1INT`         0x4000C000,        4, base=16,    bitRange=1-1
;`TMR16B0IR.MR2INT`         0x4000C000,        4, base=16,    bitRange=2-2
;`TMR16B0IR.MR3INT`         0x4000C000,        4, base=16,    bitRange=3-3
;`TMR16B0IR.CR0INT`         0x4000C000,        4, base=16,    bitRange=4-4

TMR16B0TCR               EQU  0x4000C004
;`TMR16B0TCR.CE`            0x4000C004,        4, base=16,    bitRange=0-0
;`TMR16B0TCR.CR`            0x4000C004,        4, base=16,    bitRange=1-1

TMR16B0TC                EQU  0x4000C008

TMR16B0PR                EQU  0x4000C00C

TMR16B0PC                EQU  0x4000C010

TMR16B0MCR               EQU  0x4000C014
;`TMR16B0MCR.MR0I`          0x4000C014,        4, base=16,    bitRange=0-0
;`TMR16B0MCR.MR0R`          0x4000C014,        4, base=16,    bitRange=1-1
;`TMR16B0MCR.MR0S`          0x4000C014,        4, base=16,    bitRange=2-2
;`TMR16B0MCR.MR1I`          0x4000C014,        4, base=16,    bitRange=3-3
;`TMR16B0MCR.MR1R`          0x4000C014,        4, base=16,    bitRange=4-4
;`TMR16B0MCR.MR1S`          0x4000C014,        4, base=16,    bitRange=5-5
;`TMR16B0MCR.MR2I`          0x4000C014,        4, base=16,    bitRange=6-6
;`TMR16B0MCR.MR2R`          0x4000C014,        4, base=16,    bitRange=7-7
;`TMR16B0MCR.MR2S`          0x4000C014,        4, base=16,    bitRange=8-8
;`TMR16B0MCR.MR3I`          0x4000C014,        4, base=16,    bitRange=9-9
;`TMR16B0MCR.MR3R`          0x4000C014,        4, base=16,    bitRange=10-10
;`TMR16B0MCR.MR3S`          0x4000C014,        4, base=16,    bitRange=11-11

TMR16B0MR0               EQU  0x4000C018

TMR16B0MR1               EQU  0x4000C01C

TMR16B0MR2               EQU  0x4000C020

TMR16B0MR3               EQU  0x4000C024

TMR16B0CCR               EQU  0x4000C028
;`TMR16B0CCR.CAP0RE`        0x4000C028,        4, base=16,    bitRange=0-0
;`TMR16B0CCR.CAP0FE`        0x4000C028,        4, base=16,    bitRange=1-1
;`TMR16B0CCR.CAP0I`         0x4000C028,        4, base=16,    bitRange=2-2

TMR16B0CR0               EQU  0x4000C02C

TMR16B0EMR               EQU  0x4000C03C
;`TMR16B0EMR.EM0`           0x4000C03C,        4, base=16,    bitRange=0-0
;`TMR16B0EMR.EM1`           0x4000C03C,        4, base=16,    bitRange=1-1
;`TMR16B0EMR.EM2`           0x4000C03C,        4, base=16,    bitRange=2-2
;`TMR16B0EMR.EM3`           0x4000C03C,        4, base=16,    bitRange=3-3
;`TMR16B0EMR.EMC0`          0x4000C03C,        4, base=16,    bitRange=4-5
;`TMR16B0EMR.EMC1`          0x4000C03C,        4, base=16,    bitRange=6-7
;`TMR16B0EMR.EMC2`          0x4000C03C,        4, base=16,    bitRange=8-9
;`TMR16B0EMR.EMC3`          0x4000C03C,        4, base=16,    bitRange=10-11

TMR16B0CTCR              EQU  0x4000C070
;`TMR16B0CTCR.CTM`          0x4000C070,        4, base=16,    bitRange=0-1
;`TMR16B0CTCR.CIS`          0x4000C070,        4, base=16,    bitRange=2-3

TMR16B0PWMC              EQU  0x4000C074
;`TMR16B0PWMC.PWM0ENA`      0x4000C074,        4, base=16,    bitRange=0-0
;`TMR16B0PWMC.PWM1ENA`      0x4000C074,        4, base=16,    bitRange=1-1
;`TMR16B0PWMC.PWM2ENA`      0x4000C074,        4, base=16,    bitRange=2-2
;`TMR16B0PWMC.PWM3ENA`      0x4000C074,        4, base=16,    bitRange=3-3


;
;               CT16B1
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


TMR16B1IR                EQU  0x40010000
;`TMR16B1IR.MR0INT`         0x40010000,        4, base=16,    bitRange=0-0
;`TMR16B1IR.MR1INT`         0x40010000,        4, base=16,    bitRange=1-1
;`TMR16B1IR.MR2INT`         0x40010000,        4, base=16,    bitRange=2-2
;`TMR16B1IR.MR3INT`         0x40010000,        4, base=16,    bitRange=3-3
;`TMR16B1IR.CR0INT`         0x40010000,        4, base=16,    bitRange=4-4

TMR16B1TCR               EQU  0x40010004
;`TMR16B1TCR.CE`            0x40010004,        4, base=16,    bitRange=0-0
;`TMR16B1TCR.CR`            0x40010004,        4, base=16,    bitRange=1-1

TMR16B1TC                EQU  0x40010008

TMR16B1PR                EQU  0x4001000C

TMR16B1PC                EQU  0x40010010

TMR16B1MCR               EQU  0x40010014
;`TMR16B1MCR.MR0I`          0x40010014,        4, base=16,    bitRange=0-0
;`TMR16B1MCR.MR0R`          0x40010014,        4, base=16,    bitRange=1-1
;`TMR16B1MCR.MR0S`          0x40010014,        4, base=16,    bitRange=2-2
;`TMR16B1MCR.MR1I`          0x40010014,        4, base=16,    bitRange=3-3
;`TMR16B1MCR.MR1R`          0x40010014,        4, base=16,    bitRange=4-4
;`TMR16B1MCR.MR1S`          0x40010014,        4, base=16,    bitRange=5-5
;`TMR16B1MCR.MR2I`          0x40010014,        4, base=16,    bitRange=6-6
;`TMR16B1MCR.MR2R`          0x40010014,        4, base=16,    bitRange=7-7
;`TMR16B1MCR.MR2S`          0x40010014,        4, base=16,    bitRange=8-8
;`TMR16B1MCR.MR3I`          0x40010014,        4, base=16,    bitRange=9-9
;`TMR16B1MCR.MR3R`          0x40010014,        4, base=16,    bitRange=10-10
;`TMR16B1MCR.MR3S`          0x40010014,        4, base=16,    bitRange=11-11

TMR16B1MR0               EQU  0x40010018

TMR16B1MR1               EQU  0x4001001C

TMR16B1MR2               EQU  0x40010020

TMR16B1MR3               EQU  0x40010024

TMR16B1CCR               EQU  0x40010028
;`TMR16B1CCR.CAP0RE`        0x40010028,        4, base=16,    bitRange=0-0
;`TMR16B1CCR.CAP0FE`        0x40010028,        4, base=16,    bitRange=1-1
;`TMR16B1CCR.CAP0I`         0x40010028,        4, base=16,    bitRange=2-2

TMR16B1CR0               EQU  0x4001002C

TMR16B1EMR               EQU  0x4001003C
;`TMR16B1EMR.EM0`           0x4001003C,        4, base=16,    bitRange=0-0
;`TMR16B1EMR.EM1`           0x4001003C,        4, base=16,    bitRange=1-1
;`TMR16B1EMR.EM2`           0x4001003C,        4, base=16,    bitRange=2-2
;`TMR16B1EMR.EM3`           0x4001003C,        4, base=16,    bitRange=3-3
;`TMR16B1EMR.EMC0`          0x4001003C,        4, base=16,    bitRange=4-5
;`TMR16B1EMR.EMC1`          0x4001003C,        4, base=16,    bitRange=6-7
;`TMR16B1EMR.EMC2`          0x4001003C,        4, base=16,    bitRange=8-9
;`TMR16B1EMR.EMC3`          0x4001003C,        4, base=16,    bitRange=10-11

TMR16B1CTCR              EQU  0x40010070
;`TMR16B1CTCR.CTM`          0x40010070,        4, base=16,    bitRange=0-1
;`TMR16B1CTCR.CIS`          0x40010070,        4, base=16,    bitRange=2-3

TMR16B1PWMC              EQU  0x40010074
;`TMR16B1PWMC.PWM0ENA`      0x40010074,        4, base=16,    bitRange=0-0
;`TMR16B1PWMC.PWM1ENA`      0x40010074,        4, base=16,    bitRange=1-1
;`TMR16B1PWMC.PWM2ENA`      0x40010074,        4, base=16,    bitRange=2-2
;`TMR16B1PWMC.PWM3ENA`      0x40010074,        4, base=16,    bitRange=3-3


;
;               CT32B0
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


TMR32B0IR                EQU  0x40014000
;`TMR32B0IR.MR0INT`         0x40014000,        4, base=16,    bitRange=0-0
;`TMR32B0IR.MR1INT`         0x40014000,        4, base=16,    bitRange=1-1
;`TMR32B0IR.MR2INT`         0x40014000,        4, base=16,    bitRange=2-2
;`TMR32B0IR.MR3INT`         0x40014000,        4, base=16,    bitRange=3-3
;`TMR32B0IR.CR0INT`         0x40014000,        4, base=16,    bitRange=4-4

TMR32B0TCR               EQU  0x40014004
;`TMR32B0TCR.CE`            0x40014004,        4, base=16,    bitRange=0-0
;`TMR32B0TCR.CR`            0x40014004,        4, base=16,    bitRange=1-1

TMR32B0TC                EQU  0x40014008

TMR32B0PR                EQU  0x4001400C

TMR32B0PC                EQU  0x40014010

TMR32B0MCR               EQU  0x40014014
;`TMR32B0MCR.MR0I`          0x40014014,        4, base=16,    bitRange=0-0
;`TMR32B0MCR.MR0R`          0x40014014,        4, base=16,    bitRange=1-1
;`TMR32B0MCR.MR0S`          0x40014014,        4, base=16,    bitRange=2-2
;`TMR32B0MCR.MR1I`          0x40014014,        4, base=16,    bitRange=3-3
;`TMR32B0MCR.MR1R`          0x40014014,        4, base=16,    bitRange=4-4
;`TMR32B0MCR.MR1S`          0x40014014,        4, base=16,    bitRange=5-5
;`TMR32B0MCR.MR2I`          0x40014014,        4, base=16,    bitRange=6-6
;`TMR32B0MCR.MR2R`          0x40014014,        4, base=16,    bitRange=7-7
;`TMR32B0MCR.MR2S`          0x40014014,        4, base=16,    bitRange=8-8
;`TMR32B0MCR.MR3I`          0x40014014,        4, base=16,    bitRange=9-9
;`TMR32B0MCR.MR3R`          0x40014014,        4, base=16,    bitRange=10-10
;`TMR32B0MCR.MR3S`          0x40014014,        4, base=16,    bitRange=11-11

TMR32B0MR0               EQU  0x40014018

TMR32B0MR1               EQU  0x4001401C

TMR32B0MR2               EQU  0x40014020

TMR32B0MR3               EQU  0x40014024

TMR32B0CCR               EQU  0x40014028
;`TMR32B0CCR.CAP0RE`        0x40014028,        4, base=16,    bitRange=0-0
;`TMR32B0CCR.CAP0FE`        0x40014028,        4, base=16,    bitRange=1-1
;`TMR32B0CCR.CAP0I`         0x40014028,        4, base=16,    bitRange=2-2

TMR32B0CR0               EQU  0x4001402C

TMR32B0EMR               EQU  0x4001403C
;`TMR32B0EMR.EM0`           0x4001403C,        4, base=16,    bitRange=0-0
;`TMR32B0EMR.EM1`           0x4001403C,        4, base=16,    bitRange=1-1
;`TMR32B0EMR.EM2`           0x4001403C,        4, base=16,    bitRange=2-2
;`TMR32B0EMR.EM3`           0x4001403C,        4, base=16,    bitRange=3-3
;`TMR32B0EMR.EMC0`          0x4001403C,        4, base=16,    bitRange=4-5
;`TMR32B0EMR.EMC1`          0x4001403C,        4, base=16,    bitRange=6-7
;`TMR32B0EMR.EMC2`          0x4001403C,        4, base=16,    bitRange=8-9
;`TMR32B0EMR.EMC3`          0x4001403C,        4, base=16,    bitRange=10-11

TMR32B0CTCR              EQU  0x40014070
;`TMR32B0CTCR.CTM`          0x40014070,        4, base=16,    bitRange=0-1
;`TMR32B0CTCR.CIS`          0x40014070,        4, base=16,    bitRange=2-3

TMR32B0PWMC              EQU  0x40014074
;`TMR32B0PWMC.PWM0ENA`      0x40014074,        4, base=16,    bitRange=0-0
;`TMR32B0PWMC.PWM1ENA`      0x40014074,        4, base=16,    bitRange=1-1
;`TMR32B0PWMC.PWM2ENA`      0x40014074,        4, base=16,    bitRange=2-2
;`TMR32B0PWMC.PWM3ENA`      0x40014074,        4, base=16,    bitRange=3-3


;
;               CT32B1
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


TMR32B1IR                EQU  0x40018000
;`TMR32B1IR.MR0INT`         0x40018000,        4, base=16,    bitRange=0-0
;`TMR32B1IR.MR1INT`         0x40018000,        4, base=16,    bitRange=1-1
;`TMR32B1IR.MR2INT`         0x40018000,        4, base=16,    bitRange=2-2
;`TMR32B1IR.MR3INT`         0x40018000,        4, base=16,    bitRange=3-3
;`TMR32B1IR.CR0INT`         0x40018000,        4, base=16,    bitRange=4-4

TMR32B1TCR               EQU  0x40018004
;`TMR32B1TCR.CE`            0x40018004,        4, base=16,    bitRange=0-0
;`TMR32B1TCR.CR`            0x40018004,        4, base=16,    bitRange=1-1

TMR32B1TC                EQU  0x40018008

TMR32B1PR                EQU  0x4001800C

TMR32B1PC                EQU  0x40018010

TMR32B1MCR               EQU  0x40018014
;`TMR32B1MCR.MR0I`          0x40018014,        4, base=16,    bitRange=0-0
;`TMR32B1MCR.MR0R`          0x40018014,        4, base=16,    bitRange=1-1
;`TMR32B1MCR.MR0S`          0x40018014,        4, base=16,    bitRange=2-2
;`TMR32B1MCR.MR1I`          0x40018014,        4, base=16,    bitRange=3-3
;`TMR32B1MCR.MR1R`          0x40018014,        4, base=16,    bitRange=4-4
;`TMR32B1MCR.MR1S`          0x40018014,        4, base=16,    bitRange=5-5
;`TMR32B1MCR.MR2I`          0x40018014,        4, base=16,    bitRange=6-6
;`TMR32B1MCR.MR2R`          0x40018014,        4, base=16,    bitRange=7-7
;`TMR32B1MCR.MR2S`          0x40018014,        4, base=16,    bitRange=8-8
;`TMR32B1MCR.MR3I`          0x40018014,        4, base=16,    bitRange=9-9
;`TMR32B1MCR.MR3R`          0x40018014,        4, base=16,    bitRange=10-10
;`TMR32B1MCR.MR3S`          0x40018014,        4, base=16,    bitRange=11-11

TMR32B1MR0               EQU  0x40018018

TMR32B1MR1               EQU  0x4001801C

TMR32B1MR2               EQU  0x40018020

TMR32B1MR3               EQU  0x40018024

TMR32B1CCR               EQU  0x40018028
;`TMR32B1CCR.CAP0RE`        0x40018028,        4, base=16,    bitRange=0-0
;`TMR32B1CCR.CAP0FE`        0x40018028,        4, base=16,    bitRange=1-1
;`TMR32B1CCR.CAP0I`         0x40018028,        4, base=16,    bitRange=2-2

TMR32B1CR0               EQU  0x4001802C

TMR32B1EMR               EQU  0x4001803C
;`TMR32B1EMR.EM0`           0x4001803C,        4, base=16,    bitRange=0-0
;`TMR32B1EMR.EM1`           0x4001803C,        4, base=16,    bitRange=1-1
;`TMR32B1EMR.EM2`           0x4001803C,        4, base=16,    bitRange=2-2
;`TMR32B1EMR.EM3`           0x4001803C,        4, base=16,    bitRange=3-3
;`TMR32B1EMR.EMC0`          0x4001803C,        4, base=16,    bitRange=4-5
;`TMR32B1EMR.EMC1`          0x4001803C,        4, base=16,    bitRange=6-7
;`TMR32B1EMR.EMC2`          0x4001803C,        4, base=16,    bitRange=8-9
;`TMR32B1EMR.EMC3`          0x4001803C,        4, base=16,    bitRange=10-11

TMR32B1CTCR              EQU  0x40018070
;`TMR32B1CTCR.CTM`          0x40018070,        4, base=16,    bitRange=0-1
;`TMR32B1CTCR.CIS`          0x40018070,        4, base=16,    bitRange=2-3

TMR32B1PWMC              EQU  0x40018074
;`TMR32B1PWMC.PWM0ENA`      0x40018074,        4, base=16,    bitRange=0-0
;`TMR32B1PWMC.PWM1ENA`      0x40018074,        4, base=16,    bitRange=1-1
;`TMR32B1PWMC.PWM2ENA`      0x40018074,        4, base=16,    bitRange=2-2
;`TMR32B1PWMC.PWM3ENA`      0x40018074,        4, base=16,    bitRange=3-3


;
;               A/D Converters
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


AD0CR                    EQU  0x4001C000
;`AD0CR.SEL`                0x4001C000,        4, base=16,    bitRange=0-7
;`AD0CR.CLKDIV`             0x4001C000,        4, base=16,    bitRange=8-15
;`AD0CR.BURST`              0x4001C000,        4, base=16,    bitRange=16-16
;`AD0CR.CLKS`               0x4001C000,        4, base=16,    bitRange=17-19
;`AD0CR.START`              0x4001C000,        4, base=16,    bitRange=24-26
;`AD0CR.EDGE`               0x4001C000,        4, base=16,    bitRange=27-27

AD0GDR                   EQU  0x4001C004
;`AD0GDR.RESULT`            0x4001C004,        4, base=16,    bitRange=6-15
;`AD0GDR.CHN`               0x4001C004,        4, base=16,    bitRange=24-26
;`AD0GDR.OVERUN`            0x4001C004,        4, base=16,    bitRange=30-30
;`AD0GDR.DONE`              0x4001C004,        4, base=16,    bitRange=31-31

AD0INTEN                 EQU  0x4001C00C
;`AD0INTEN.ADINTEN0`        0x4001C00C,        4, base=16,    bitRange=0-0
;`AD0INTEN.ADINTEN1`        0x4001C00C,        4, base=16,    bitRange=1-1
;`AD0INTEN.ADINTEN2`        0x4001C00C,        4, base=16,    bitRange=2-2
;`AD0INTEN.ADINTEN3`        0x4001C00C,        4, base=16,    bitRange=3-3
;`AD0INTEN.ADINTEN4`        0x4001C00C,        4, base=16,    bitRange=4-4
;`AD0INTEN.ADINTEN5`        0x4001C00C,        4, base=16,    bitRange=5-5
;`AD0INTEN.ADINTEN6`        0x4001C00C,        4, base=16,    bitRange=6-6
;`AD0INTEN.ADINTEN7`        0x4001C00C,        4, base=16,    bitRange=7-7
;`AD0INTEN.ADGINTEN`        0x4001C00C,        4, base=16,    bitRange=8-8

AD0DR0                   EQU  0x4001C010
;`AD0DR0.RESULT`            0x4001C010,        4, base=16,    bitRange=6-15
;`AD0DR0.OVERUN`            0x4001C010,        4, base=16,    bitRange=30-30
;`AD0DR0.DONE`              0x4001C010,        4, base=16,    bitRange=31-31

AD0DR1                   EQU  0x4001C014
;`AD0DR1.RESULT`            0x4001C014,        4, base=16,    bitRange=6-15
;`AD0DR1.OVERUN`            0x4001C014,        4, base=16,    bitRange=30-30
;`AD0DR1.DONE`              0x4001C014,        4, base=16,    bitRange=31-31

AD0DR2                   EQU  0x4001C018
;`AD0DR2.RESULT`            0x4001C018,        4, base=16,    bitRange=6-15
;`AD0DR2.OVERUN`            0x4001C018,        4, base=16,    bitRange=30-30
;`AD0DR2.DONE`              0x4001C018,        4, base=16,    bitRange=31-31

AD0DR3                   EQU  0x4001C01C
;`AD0DR3.RESULT`            0x4001C01C,        4, base=16,    bitRange=6-15
;`AD0DR3.OVERUN`            0x4001C01C,        4, base=16,    bitRange=30-30
;`AD0DR3.DONE`              0x4001C01C,        4, base=16,    bitRange=31-31

AD0DR4                   EQU  0x4001C020
;`AD0DR4.RESULT`            0x4001C020,        4, base=16,    bitRange=6-15
;`AD0DR4.OVERUN`            0x4001C020,        4, base=16,    bitRange=30-30
;`AD0DR4.DONE`              0x4001C020,        4, base=16,    bitRange=31-31

AD0DR5                   EQU  0x4001C024
;`AD0DR5.RESULT`            0x4001C024,        4, base=16,    bitRange=6-15
;`AD0DR5.OVERUN`            0x4001C024,        4, base=16,    bitRange=30-30
;`AD0DR5.DONE`              0x4001C024,        4, base=16,    bitRange=31-31

AD0DR6                   EQU  0x4001C028
;`AD0DR6.RESULT`            0x4001C028,        4, base=16,    bitRange=6-15
;`AD0DR6.OVERUN`            0x4001C028,        4, base=16,    bitRange=30-30
;`AD0DR6.DONE`              0x4001C028,        4, base=16,    bitRange=31-31

AD0DR7                   EQU  0x4001C02C
;`AD0DR7.RESULT`            0x4001C02C,        4, base=16,    bitRange=6-15
;`AD0DR7.OVERUN`            0x4001C02C,        4, base=16,    bitRange=30-30
;`AD0DR7.DONE`              0x4001C02C,        4, base=16,    bitRange=31-31

AD0STAT                  EQU  0x4001C030
;`AD0STAT.DONE0`            0x4001C030,        4, base=16,    bitRange=0-0
;`AD0STAT.DONE1`            0x4001C030,        4, base=16,    bitRange=1-1
;`AD0STAT.DONE2`            0x4001C030,        4, base=16,    bitRange=2-2
;`AD0STAT.DONE3`            0x4001C030,        4, base=16,    bitRange=3-3
;`AD0STAT.DONE4`            0x4001C030,        4, base=16,    bitRange=4-4
;`AD0STAT.DONE5`            0x4001C030,        4, base=16,    bitRange=5-5
;`AD0STAT.DONE6`            0x4001C030,        4, base=16,    bitRange=6-6
;`AD0STAT.DONE7`            0x4001C030,        4, base=16,    bitRange=7-7
;`AD0STAT.OVERRUN0`         0x4001C030,        4, base=16,    bitRange=8-8
;`AD0STAT.OVERRUN1`         0x4001C030,        4, base=16,    bitRange=9-9
;`AD0STAT.OVERRUN2`         0x4001C030,        4, base=16,    bitRange=10-10
;`AD0STAT.OVERRUN3`         0x4001C030,        4, base=16,    bitRange=11-11
;`AD0STAT.OVERRUN4`         0x4001C030,        4, base=16,    bitRange=12-12
;`AD0STAT.OVERRUN5`         0x4001C030,        4, base=16,    bitRange=13-13
;`AD0STAT.OVERRUN6`         0x4001C030,        4, base=16,    bitRange=14-14
;`AD0STAT.OVERRUN7`         0x4001C030,        4, base=16,    bitRange=15-15
;`AD0STAT.ADINT`            0x4001C030,        4, base=16,    bitRange=16-16


;
;               Watchdog
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


WDMOD                    EQU  0x40004000
;`WDMOD.WDEN`               0x40004000,        4, base=16,    bitRange=0-0
;`WDMOD.WDRESET`            0x40004000,        4, base=16,    bitRange=1-1
;`WDMOD.WDTOF`              0x40004000,        4, base=16,    bitRange=2-2
;`WDMOD.WDINT`              0x40004000,        4, base=16,    bitRange=3-3

WDTC                     EQU  0x40004004
;`WDTC.COUNT`               0x40004004,        4, base=16,    bitRange=0-23

WDFEED                   EQU  0x40004008

WDTV                     EQU  0x4000400C
;`WDTV.COUNT`               0x4000400C,        4, base=16,    bitRange=0-23


;
;               Flash
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


FLASHCFG                 EQU  0x4003C010
;`FLASHCFG.FLASHTIM`        0x4003C010,        4, base=16,    bitRange=0-1


;
;               Flash signature generation
;
;     Name                        Zone      Address     Bytesize  Displaybase Bitrange
;     ----                        ----      -------     --------  ----------- --------


FMSSTART                 EQU  0x4003C020
;`FMSSTART.START`           0x4003C020,        4, base=16,    bitRange=0-16

FMSSTOP                  EQU  0x4003C024
;`FMSSTOP.STOP`             0x4003C024,        4, base=16,    bitRange=0-16
;`FMSSTOP.SIG_START`        0x4003C024,        4, base=16,    bitRange=17-17

FMSW0                    EQU  0x4003C02C

FMSW1                    EQU  0x4003C030

FMSW2                    EQU  0x4003C034

FMSW3                    EQU  0x4003C038

FMSTAT                   EQU  0x4003CFE0
;`FMSTAT.SIG_DONE`          0x4003CFE0,        4, base=16,    bitRange=2-2

FMSTATCLR                EQU  0x4003CFE8


;;
;; Group info for SFR Window.
;;
;[SfrGroupInfo]

;group = `NVIC`,`SYSTICKCSR`,`SYSTICKRVR`,`SYSTICKCVR`,`SYSTICKCALVR`,`SETENA0`,`ISER`,`CLRENA0`,`ICER`,`SETPEND0`,`ISPR`,`CLRPEND0`,`ICPR`,`IP0`,`IP1`,`IP2`,`IP3`,`IP4`,`IP5`,`IP6`,`IP7`,`CPUIDBR`,`CPUID`,`ICSR`,`AIRCR`,`SCR`,`CCR`,`SHPR2`,`SHPR3`
;group = `System control block`,`SYSMEMREMAP`,`PRESETCTRL`,`SYSPLLCTRL`,`SYSPLLSTAT`,`SYSOSCCTRL`,`WDTOSCCTRL`,`IRCCTRL`,`SYSRESSTAT`,`SYSPLLCLKSEL`,`SYSPLLCLKUEN`,`MAINCLKSEL`,`MAINCLKUEN`,`SYSAHBCLKDIV`,`SYSAHBCLKCTRL`,`SSP0CLKDIV`,`UARTCLKDIV`,`SSP1CLKDIV`,`WDTCLKSEL`,`WDTCLKUEN`,`WDTCLKDIV`,`CLKOUTCLKSEL`,`CLKOUTUEN`,`CLKOUTDIV`,`PIOPORCAP0`,`PIOPORCAP1`,`BODCTRL`,`SYSTCKCAL`,`NMISRC`,`STARTAPRP0`,`STARTERP0`,`STARTRSRP0CLR`,`STARTSRP0`,`PDSLEEPCFG`,`PDAWAKECFG`,`PDRUNCFG`,`DEVICE_ID`
;group = `PMU`,`PCON`,`GPREG0`,`GPREG1`,`GPREG2`,`GPREG3`,`GPREG4`
;group = `I/O configuration`,`IOCON_PIO2_6`,`IOCON_PIO2_0`,`IOCON_RESET_PIO0_0`,`IOCON_PIO0_1`,`IOCON_PIO1_8`,`IOCON_PIO0_2`,`IOCON_PIO2_7`,`IOCON_PIO2_8`,`IOCON_PIO2_1`,`IOCON_PIO0_3`,`IOCON_PIO0_4`,`IOCON_PIO0_5`,`IOCON_PIO1_9`,`IOCON_PIO3_4`,`IOCON_PIO2_4`,`IOCON_PIO2_5`,`IOCON_PIO3_5`,`IOCON_PIO0_6`,`IOCON_PIO0_7`,`IOCON_PIO2_9`,`IOCON_PIO2_10`,`IOCON_PIO2_2`,`IOCON_PIO0_8`,`IOCON_PIO0_9`,`IOCON_SWCLK_PIO0_10`,`IOCON_PIO1_10`,`IOCON_PIO2_11`,`IOCON_R_PIO0_11`,`IOCON_R_PIO1_0`,`IOCON_R_PIO1_1`,`IOCON_R_PIO1_2`,`IOCON_PIO3_0`,`IOCON_PIO3_1`,`IOCON_PIO2_3`,`IOCON_SWDIO_PIO1_3`,`IOCON_PIO1_4`,`IOCON_PIO1_11`,`IOCON_PIO3_2`,`IOCON_PIO1_5`,`IOCON_PIO1_6`,`IOCON_PIO1_7`,`IOCON_PIO3_3`,`IOCON_SCK_LOC`,`IOCON_DSR_LOC`,`IOCON_DCD_LOC`,`IOCON_RI_LOC`
;group = `CPIO`,`GPIO0DATA`,`GPIO0DATA0`,`GPIO0DATA1`,`GPIO0DATAL`,`GPIO0DIR`,`GPIO0DIR0`,`GPIO0DIR1`,`GPIO0DIRL`,`GPIO0IS`,`GPIO0IS0`,`GPIO0IS1`,`GPIO0ISL`,`GPIO0IBE`,`GPIO0IBE0`,`GPIO0IBE1`,`GPIO0IBEL`,`GPIO0IEV`,`GPIO0IEV0`,`GPIO0IEV1`,`GPIO0IEVL`,`GPIO0IE`,`GPIO0IE0`,`GPIO0IE1`,`GPIO0IEL`,`GPIO0RIS`,`GPIO0RIS0`,`GPIO0RIS1`,`GPIO0RISL`,`GPIO0MIS`,`GPIO0MIS0`,`GPIO0MIS1`,`GPIO0MISL`,`GPIO0IC`,`GPIO1DATA`,`GPIO1DATA0`,`GPIO1DATA1`,`GPIO1DATAL`,`GPIO1DIR`,`GPIO1DIR0`,`GPIO1DIR1`,`GPIO1DIRL`,`GPIO1IS`,`GPIO1IS0`,`GPIO1IS1`,`GPIO1ISL`,`GPIO1IBE`,`GPIO1IBE0`,`GPIO1IBE1`,`GPIO1IBEL`,`GPIO1IEV`,`GPIO1IEV0`,`GPIO1IEV1`,`GPIO1IEVL`,`GPIO1IE`,`GPIO1IE0`,`GPIO1IE1`,`GPIO1IEL`,`GPIO1RIS`,`GPIO1RIS0`,`GPIO1RIS1`,`GPIO1RISL`,`GPIO1MIS`,`GPIO1MIS0`,`GPIO1MIS1`,`GPIO1MISL`,`GPIO1IC`,`GPIO2DATA`,`GPIO2DATA0`,`GPIO2DATA1`,`GPIO2DATAL`,`GPIO2DIR`,`GPIO2DIR0`,`GPIO2DIR1`,`GPIO2DIRL`,`GPIO2IS`,`GPIO2IS0`,`GPIO2IS1`,`GPIO2ISL`,`GPIO2IBE`,`GPIO2IBE0`,`GPIO2IBE1`,`GPIO2IBEL`,`GPIO2IEV`,`GPIO2IEV0`,`GPIO2IEV1`,`GPIO2IEVL`,`GPIO2IE`,`GPIO2IE0`,`GPIO2IE1`,`GPIO2IEL`,`GPIO2RIS`,`GPIO2RIS0`,`GPIO2RIS1`,`GPIO2RISL`,`GPIO2MIS`,`GPIO2MIS0`,`GPIO2MIS1`,`GPIO2MISL`,`GPIO2IC`,`GPIO3DATA`,`GPIO3DATA0`,`GPIO3DATAL`,`GPIO3DIR`,`GPIO3DIR0`,`GPIO3DIRL`,`GPIO3IS`,`GPIO3IS0`,`GPIO3ISL`,`GPIO3IBE`,`GPIO3IBE0`,`GPIO3IBEL`,`GPIO3IEV`,`GPIO3IEV0`,`GPIO3IEVL`,`GPIO3IE`,`GPIO3IE0`,`GPIO3IEL`,`GPIO3RIS`,`GPIO3RIS0`,`GPIO3RISL`,`GPIO3MIS`,`GPIO3MIS0`,`GPIO3MISL`,`GPIO3IC`
;group = `UART`,`U0RBRTHR`,`U0DLL`,`U0RBR`,`U0THR`,`U0IER`,`U0DLM`,`U0FCR`,`U0IIR`,`U0LCR`,`U0MCR`,`U0LSR`,`U0MSR`,`U0SCR`,`U0ACR`,`U0FDR`,`U0TER`,`U0RS485CTRL`,`U0ADRMATCH`,`U0RS485DLY`
;group = `SSP0`,`SSP0CR0`,`SSP0CR1`,`SSP0DR`,`SSP0SR`,`SSP0CPSR`,`SSP0IMSC`,`SSP0RIS`,`SSP0MIS`,`SSP0ICR`
;group = `SSP1`,`SSP1CR0`,`SSP1CR1`,`SSP1DR`,`SSP1SR`,`SSP1CPSR`,`SSP1IMSC`,`SSP1RIS`,`SSP1MIS`,`SSP1ICR`
;group = `I2C`,`I2C0CONSET`,`I2C0STAT`,`I2C0DAT`,`I2C0ADR`,`I2C0SCLH`,`I2C0SCLL`,`I2C0CONCLR`,`I2C0MMCTRL`,`I2C0ADR1`,`I2C0ADR2`,`I2C0ADR3`,`I2C0DATABUFFER`,`I2C0MASK0`,`I2C0MASK1`,`I2C0MASK2`,`I2C0MASK3`
;group = `CT16B0`,`TMR16B0IR`,`TMR16B0TCR`,`TMR16B0TC`,`TMR16B0PR`,`TMR16B0PC`,`TMR16B0MCR`,`TMR16B0MR0`,`TMR16B0MR1`,`TMR16B0MR2`,`TMR16B0MR3`,`TMR16B0CCR`,`TMR16B0CR0`,`TMR16B0EMR`,`TMR16B0CTCR`,`TMR16B0PWMC`
;group = `CT16B1`,`TMR16B1IR`,`TMR16B1TCR`,`TMR16B1TC`,`TMR16B1PR`,`TMR16B1PC`,`TMR16B1MCR`,`TMR16B1MR0`,`TMR16B1MR1`,`TMR16B1MR2`,`TMR16B1MR3`,`TMR16B1CCR`,`TMR16B1CR0`,`TMR16B1EMR`,`TMR16B1CTCR`,`TMR16B1PWMC`
;group = `CT32B0`,`TMR32B0IR`,`TMR32B0TCR`,`TMR32B0TC`,`TMR32B0PR`,`TMR32B0PC`,`TMR32B0MCR`,`TMR32B0MR0`,`TMR32B0MR1`,`TMR32B0MR2`,`TMR32B0MR3`,`TMR32B0CCR`,`TMR32B0CR0`,`TMR32B0EMR`,`TMR32B0CTCR`,`TMR32B0PWMC`
;group = `CT32B1`,`TMR32B1IR`,`TMR32B1TCR`,`TMR32B1TC`,`TMR32B1PR`,`TMR32B1PC`,`TMR32B1MCR`,`TMR32B1MR0`,`TMR32B1MR1`,`TMR32B1MR2`,`TMR32B1MR3`,`TMR32B1CCR`,`TMR32B1CR0`,`TMR32B1EMR`,`TMR32B1CTCR`,`TMR32B1PWMC`
;group = `A/D Converters`,`AD0CR`,`AD0GDR`,`AD0INTEN`,`AD0DR0`,`AD0DR1`,`AD0DR2`,`AD0DR3`,`AD0DR4`,`AD0DR5`,`AD0DR6`,`AD0DR7`,`AD0STAT`
;group = `Watchdog`,`WDMOD`,`WDTC`,`WDFEED`,`WDTV`
;group = `Flash`,`FLASHCFG`
;group = `Flash signature generation`,`FMSSTART`,`FMSSTOP`,`FMSW0`,`FMSW1`,`FMSW2`,`FMSW3`,`FMSTAT`,`FMSTATCLR`

;;
;; Interrupt list for SWO interrupt view.
;;
;[InterruptList]
;Interrupt0   = NMI            0x08
;Interrupt1   = HardFault      0x0C
;Interrupt2   = MemManage      0x10
;Interrupt3   = BusFault       0x14
;Interrupt4   = UsageFault     0x18
;Interrupt5   = SVC            0x2C
;Interrupt6   = DebugMon       0x30
;Interrupt7   = PendSV         0x38
;Interrupt8   = SysTick        0x3C
;Interrupt9   = WAKE_UP0       0x40
;Interrupt10  = WAKE_UP1       0x44
;Interrupt11  = WAKE_UP2       0x48
;Interrupt12  = WAKE_UP3       0x4C
;Interrupt13  = WAKE_UP4       0x50
;Interrupt14  = WAKE_UP5       0x54
;Interrupt15  = WAKE_UP6       0x58
;Interrupt16  = WAKE_UP7       0x5C
;Interrupt17  = WAKE_UP8       0x60
;Interrupt18  = WAKE_UP9       0x64
;Interrupt19  = WAKE_UP10      0x68
;Interrupt20  = WAKE_UP11      0x6C
;Interrupt21  = WAKE_UP12      0x70
;Interrupt22  = SSP1           0x78
;Interrupt23  = I2C0           0x7C
;Interrupt24  = CT16B0         0x80
;Interrupt25  = CT16B1         0x84
;Interrupt26  = CT32B0         0x88
;Interrupt27  = CT32B1         0x8C
;Interrupt28  = SSP0           0x90
;Interrupt29  = UART0          0x94
;Interrupt30  = ADC            0xA0
;Interrupt31  = WDT            0xA4
;Interrupt32  = BOD            0xA8
;Interrupt33  = PIO_3          0xB0
;Interrupt34  = PIO_2          0xB4
;Interrupt35  = PIO_1          0xB8
;Interrupt36  = PIO_0          0xBC
