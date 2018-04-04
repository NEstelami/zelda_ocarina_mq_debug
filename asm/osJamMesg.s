.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osJamMesg
/* 006EE0 800062E0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 006EE4 800062E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 006EE8 800062E8 AFA40028 */  sw    $a0, 0x28($sp)
/* 006EEC 800062EC AFA5002C */  sw    $a1, 0x2c($sp)
/* 006EF0 800062F0 AFA60030 */  sw    $a2, 0x30($sp)
/* 006EF4 800062F4 AFB10018 */  sw    $s1, 0x18($sp)
/* 006EF8 800062F8 0C001CA0 */  jal   __osDisableInt
/* 006EFC 800062FC AFB00014 */   sw    $s0, 0x14($sp)
/* 006F00 80006300 8FAE0028 */  lw    $t6, 0x28($sp)
/* 006F04 80006304 00408025 */  move  $s0, $v0
/* 006F08 80006308 8DCF0008 */  lw    $t7, 8($t6)
/* 006F0C 8000630C 8DD80010 */  lw    $t8, 0x10($t6)
/* 006F10 80006310 01F8082A */  slt   $at, $t7, $t8
/* 006F14 80006314 14200018 */  bnez  $at, .L80006378
/* 006F18 80006318 00000000 */   nop   
.L8000631C:
/* 006F1C 8000631C 8FB90030 */  lw    $t9, 0x30($sp)
/* 006F20 80006320 24010001 */  li    $at, 1
/* 006F24 80006324 1721000A */  bne   $t9, $at, .L80006350
/* 006F28 80006328 00000000 */   nop   
/* 006F2C 8000632C 3C098001 */  lui   $t1, %hi(D_8000AD50) # $t1, 0x8001
/* 006F30 80006330 8D29AD50 */  lw    $t1, %lo(D_8000AD50)($t1)
/* 006F34 80006334 24080008 */  li    $t0, 8
/* 006F38 80006338 A5280010 */  sh    $t0, 0x10($t1)
/* 006F3C 8000633C 8FA40028 */  lw    $a0, 0x28($sp)
/* 006F40 80006340 0C001005 */  jal   func_80004014
/* 006F44 80006344 24840004 */   addiu $a0, $a0, 4
/* 006F48 80006348 10000005 */  b     .L80006360
/* 006F4C 8000634C 00000000 */   nop   
.L80006350:
/* 006F50 80006350 0C001CBC */  jal   func_800072F0
/* 006F54 80006354 02002025 */   move  $a0, $s0
/* 006F58 80006358 10000030 */  b     .L8000641C
/* 006F5C 8000635C 2402FFFF */   li    $v0, -1
.L80006360:
/* 006F60 80006360 8FAA0028 */  lw    $t2, 0x28($sp)
/* 006F64 80006364 8D4B0008 */  lw    $t3, 8($t2)
/* 006F68 80006368 8D4C0010 */  lw    $t4, 0x10($t2)
/* 006F6C 8000636C 016C082A */  slt   $at, $t3, $t4
/* 006F70 80006370 1020FFEA */  beqz  $at, .L8000631C
/* 006F74 80006374 00000000 */   nop   
.L80006378:
/* 006F78 80006378 8FAD0028 */  lw    $t5, 0x28($sp)
/* 006F7C 8000637C 8DAE000C */  lw    $t6, 0xc($t5)
/* 006F80 80006380 8DAF0010 */  lw    $t7, 0x10($t5)
/* 006F84 80006384 01CFC021 */  addu  $t8, $t6, $t7
/* 006F88 80006388 2719FFFF */  addiu $t9, $t8, -1
/* 006F8C 8000638C 032F001A */  div   $zero, $t9, $t7
/* 006F90 80006390 00004010 */  mfhi  $t0
/* 006F94 80006394 ADA8000C */  sw    $t0, 0xc($t5)
/* 006F98 80006398 8FAA0028 */  lw    $t2, 0x28($sp)
/* 006F9C 8000639C 8FA9002C */  lw    $t1, 0x2c($sp)
/* 006FA0 800063A0 15E00002 */  bnez  $t7, .L800063AC
/* 006FA4 800063A4 00000000 */   nop   
/* 006FA8 800063A8 0007000D */  break 7
.L800063AC:
/* 006FAC 800063AC 2401FFFF */  li    $at, -1
/* 006FB0 800063B0 15E10004 */  bne   $t7, $at, .L800063C4
/* 006FB4 800063B4 3C018000 */   lui   $at, 0x8000
/* 006FB8 800063B8 17210002 */  bne   $t9, $at, .L800063C4
/* 006FBC 800063BC 00000000 */   nop   
/* 006FC0 800063C0 0006000D */  break 6
.L800063C4:
/* 006FC4 800063C4 8D4C000C */  lw    $t4, 0xc($t2)
/* 006FC8 800063C8 8D4B0014 */  lw    $t3, 0x14($t2)
/* 006FCC 800063CC 000C7080 */  sll   $t6, $t4, 2
/* 006FD0 800063D0 016EC021 */  addu  $t8, $t3, $t6
/* 006FD4 800063D4 AF090000 */  sw    $t1, ($t8)
/* 006FD8 800063D8 8FB90028 */  lw    $t9, 0x28($sp)
/* 006FDC 800063DC 8F2F0008 */  lw    $t7, 8($t9)
/* 006FE0 800063E0 25E80001 */  addiu $t0, $t7, 1
/* 006FE4 800063E4 AF280008 */  sw    $t0, 8($t9)
/* 006FE8 800063E8 8FAD0028 */  lw    $t5, 0x28($sp)
/* 006FEC 800063EC 8DAA0000 */  lw    $t2, ($t5)
/* 006FF0 800063F0 8D4C0000 */  lw    $t4, ($t2)
/* 006FF4 800063F4 11800006 */  beqz  $t4, .L80006410
/* 006FF8 800063F8 00000000 */   nop   
/* 006FFC 800063FC 0C001057 */  jal   func_8000415C
/* 007000 80006400 01A02025 */   move  $a0, $t5
/* 007004 80006404 00408825 */  move  $s1, $v0
/* 007008 80006408 0C0023F0 */  jal   osStartThread
/* 00700C 8000640C 02202025 */   move  $a0, $s1
.L80006410:
/* 007010 80006410 0C001CBC */  jal   func_800072F0
/* 007014 80006414 02002025 */   move  $a0, $s0
/* 007018 80006418 00001025 */  move  $v0, $zero
.L8000641C:
/* 00701C 8000641C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 007020 80006420 8FB00014 */  lw    $s0, 0x14($sp)
/* 007024 80006424 8FB10018 */  lw    $s1, 0x18($sp)
/* 007028 80006428 03E00008 */  jr    $ra
/* 00702C 8000642C 27BD0028 */   addiu $sp, $sp, 0x28
