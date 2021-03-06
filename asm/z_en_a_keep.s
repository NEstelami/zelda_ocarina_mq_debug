.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_8001CE60
/* A94000 8001CE60 03E00008 */  jr    $ra
/* A94004 8001CE64 AC850164 */   sw    $a1, 0x164($a0)

/* A94008 8001CE68 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9400C 8001CE6C 3C0140C0 */  li    $at, 0x40C00000 # 0.000000
/* A94010 8001CE70 44812000 */  mtc1  $at, $f4
/* A94014 8001CE74 AFBF001C */  sw    $ra, 0x1c($sp)
/* A94018 8001CE78 AFB00018 */  sw    $s0, 0x18($sp)
/* A9401C 8001CE7C AFA5003C */  sw    $a1, 0x3c($sp)
/* A94020 8001CE80 AFA00034 */  sw    $zero, 0x34($sp)
/* A94024 8001CE84 E7A40028 */  swc1  $f4, 0x28($sp)
/* A94028 8001CE88 8486001C */  lh    $a2, 0x1c($a0)
/* A9402C 8001CE8C 00808025 */  move  $s0, $a0
/* A94030 8001CE90 30D800FF */  andi  $t8, $a2, 0xff
/* A94034 8001CE94 3319FFFF */  andi  $t9, $t8, 0xffff
/* A94038 8001CE98 00067203 */  sra   $t6, $a2, 8
/* A9403C 8001CE9C 31CF00FF */  andi  $t7, $t6, 0xff
/* A94040 8001CEA0 2F210007 */  sltiu $at, $t9, 7
/* A94044 8001CEA4 A48F016C */  sh    $t7, 0x16c($a0)
/* A94048 8001CEA8 1020001F */  beqz  $at, .L8001CF28
/* A9404C 8001CEAC A498001C */   sh    $t8, 0x1c($a0)
/* A94050 8001CEB0 0019C880 */  sll   $t9, $t9, 2
/* A94054 8001CEB4 3C018013 */  lui   $at, 0x8013
/* A94058 8001CEB8 00390821 */  addu  $at, $at, $t9
/* A9405C 8001CEBC 8C394D6C */  lw    $t9, 0x4d6c($at)
/* A94060 8001CEC0 03200008 */  jr    $t9
/* A94064 8001CEC4 00000000 */   nop   
/* A94068 8001CEC8 3C053CCC */  lui   $a1, (0x3CCCCCCD >> 16) # lui $a1, 0x3ccc
/* A9406C 8001CECC 34A5CCCD */  ori   $a1, (0x3CCCCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* A94070 8001CED0 0C00B58B */  jal   set_actor_size
/* A94074 8001CED4 02002025 */   move  $a0, $s0
/* A94078 8001CED8 10000018 */  b     .L8001CF3C
/* A9407C 8001CEDC 8608001C */   lh    $t0, 0x1c($s0)
/* A94080 8001CEE0 3C053D4C */  lui   $a1, (0x3D4CCCCD >> 16) # lui $a1, 0x3d4c
/* A94084 8001CEE4 34A5CCCD */  ori   $a1, (0x3D4CCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* A94088 8001CEE8 0C00B58B */  jal   set_actor_size
/* A9408C 8001CEEC 02002025 */   move  $a0, $s0
/* A94090 8001CEF0 10000012 */  b     .L8001CF3C
/* A94094 8001CEF4 8608001C */   lh    $t0, 0x1c($s0)
/* A94098 8001CEF8 3C053DCC */  lui   $a1, (0x3DCCCCCD >> 16) # lui $a1, 0x3dcc
/* A9409C 8001CEFC 34A5CCCD */  ori   $a1, (0x3DCCCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* A940A0 8001CF00 0C00B58B */  jal   set_actor_size
/* A940A4 8001CF04 02002025 */   move  $a0, $s0
/* A940A8 8001CF08 1000000C */  b     .L8001CF3C
/* A940AC 8001CF0C 8608001C */   lh    $t0, 0x1c($s0)
/* A940B0 8001CF10 3C053BA3 */  lui   $a1, (0x3BA3D70A >> 16) # lui $a1, 0x3ba3
/* A940B4 8001CF14 34A5D70A */  ori   $a1, (0x3BA3D70A & 0xFFFF) # ori $a1, $a1, 0xd70a
/* A940B8 8001CF18 0C00B58B */  jal   set_actor_size
/* A940BC 8001CF1C 02002025 */   move  $a0, $s0
/* A940C0 8001CF20 10000006 */  b     .L8001CF3C
/* A940C4 8001CF24 8608001C */   lh    $t0, 0x1c($s0)
.L8001CF28:
/* A940C8 8001CF28 3C053C23 */  lui   $a1, (0x3C23D70A >> 16) # lui $a1, 0x3c23
/* A940CC 8001CF2C 34A5D70A */  ori   $a1, (0x3C23D70A & 0xFFFF) # ori $a1, $a1, 0xd70a
/* A940D0 8001CF30 0C00B58B */  jal   set_actor_size
/* A940D4 8001CF34 02002025 */   move  $a0, $s0
/* A940D8 8001CF38 8608001C */  lh    $t0, 0x1c($s0)
.L8001CF3C:
/* A940DC 8001CF3C 260400B4 */  addiu $a0, $s0, 0xb4
/* A940E0 8001CF40 24050000 */  li    $a1, 0
/* A940E4 8001CF44 29010009 */  slti  $at, $t0, 9
/* A940E8 8001CF48 14200005 */  bnez  $at, .L8001CF60
/* A940EC 8001CF4C 3C068003 */   lui   $a2, %hi(func_8002B5EC) # $a2, 0x8003
/* A940F0 8001CF50 3C014140 */  li    $at, 0x41400000 # 0.000000
/* A940F4 8001CF54 44813000 */  mtc1  $at, $f6
/* A940F8 8001CF58 00000000 */  nop   
/* A940FC 8001CF5C E7A60028 */  swc1  $f6, 0x28($sp)
.L8001CF60:
/* A94100 8001CF60 24C6B5EC */  addiu $a2, %lo(func_8002B5EC) # addiu $a2, $a2, -0x4a14
/* A94104 8001CF64 0C00AC78 */  jal   func_8002B1E0
/* A94108 8001CF68 8FA70028 */   lw    $a3, 0x28($sp)
/* A9410C 8001CF6C 8E0A0024 */  lw    $t2, 0x24($s0)
/* A94110 8001CF70 3C014496 */  li    $at, 0x44960000 # 0.000000
/* A94114 8001CF74 44814000 */  mtc1  $at, $f8
/* A94118 8001CF78 8606001C */  lh    $a2, 0x1c($s0)
/* A9411C 8001CF7C 3C014348 */  li    $at, 0x43480000 # 0.000000
/* A94120 8001CF80 44815000 */  mtc1  $at, $f10
/* A94124 8001CF84 AE0A0038 */  sw    $t2, 0x38($s0)
/* A94128 8001CF88 8E0A002C */  lw    $t2, 0x2c($s0)
/* A9412C 8001CF8C 8E090028 */  lw    $t1, 0x28($s0)
/* A94130 8001CF90 24CCFFFF */  addiu $t4, $a2, -1
/* A94134 8001CF94 240BFFFF */  li    $t3, -1
/* A94138 8001CF98 2D81000B */  sltiu $at, $t4, 0xb
/* A9413C 8001CF9C AE0B014C */  sw    $t3, 0x14c($s0)
/* A94140 8001CFA0 A2000160 */  sb    $zero, 0x160($s0)
/* A94144 8001CFA4 AE00015C */  sw    $zero, 0x15c($s0)
/* A94148 8001CFA8 E60800FC */  swc1  $f8, 0xfc($s0)
/* A9414C 8001CFAC E60A00F8 */  swc1  $f10, 0xf8($s0)
/* A94150 8001CFB0 AE0A0040 */  sw    $t2, 0x40($s0)
/* A94154 8001CFB4 1020005C */  beqz  $at, .L8001D128
/* A94158 8001CFB8 AE09003C */   sw    $t1, 0x3c($s0)
/* A9415C 8001CFBC 000C6080 */  sll   $t4, $t4, 2
/* A94160 8001CFC0 3C018013 */  lui   $at, 0x8013
/* A94164 8001CFC4 002C0821 */  addu  $at, $at, $t4
/* A94168 8001CFC8 8C2C4D88 */  lw    $t4, 0x4d88($at)
/* A9416C 8001CFCC 01800008 */  jr    $t4
/* A94170 8001CFD0 00000000 */   nop   
/* A94174 8001CFD4 8FA4003C */  lw    $a0, 0x3c($sp)
/* A94178 8001CFD8 240D0001 */  li    $t5, 1
/* A9417C 8001CFDC AE0D014C */  sw    $t5, 0x14c($s0)
/* A94180 8001CFE0 02003025 */  move  $a2, $s0
/* A94184 8001CFE4 24070001 */  li    $a3, 1
/* A94188 8001CFE8 0C00CDD2 */  jal   func_80033748
/* A9418C 8001CFEC 24851C24 */   addiu $a1, $a0, 0x1c24
/* A94190 8001CFF0 02002025 */  move  $a0, $s0
/* A94194 8001CFF4 0C007572 */  jal   func_8001D5C8
/* A94198 8001CFF8 8605001C */   lh    $a1, 0x1c($s0)
/* A9419C 8001CFFC 10000052 */  b     .L8001D148
/* A941A0 8001D000 860F001C */   lh    $t7, 0x1c($s0)
/* A941A4 8001D004 240E0003 */  li    $t6, 3
/* A941A8 8001D008 AE0E014C */  sw    $t6, 0x14c($s0)
/* A941AC 8001D00C 8FA4003C */  lw    $a0, 0x3c($sp)
/* A941B0 8001D010 02003025 */  move  $a2, $s0
/* A941B4 8001D014 24070001 */  li    $a3, 1
/* A941B8 8001D018 0C00CDD2 */  jal   func_80033748
/* A941BC 8001D01C 24851C24 */   addiu $a1, $a0, 0x1c24
/* A941C0 8001D020 02002025 */  move  $a0, $s0
/* A941C4 8001D024 0C0074C4 */  jal   func_8001D310
/* A941C8 8001D028 8605001C */   lh    $a1, 0x1c($s0)
/* A941CC 8001D02C 10000046 */  b     .L8001D148
/* A941D0 8001D030 860F001C */   lh    $t7, 0x1c($s0)
/* A941D4 8001D034 3C014120 */  li    $at, 0x41200000 # 0.000000
/* A941D8 8001D038 44818000 */  mtc1  $at, $f16
/* A941DC 8001D03C 8E180004 */  lw    $t8, 4($s0)
/* A941E0 8001D040 3C01C000 */  li    $at, 0xC0000000 # 0.000000
/* A941E4 8001D044 44819000 */  mtc1  $at, $f18
/* A941E8 8001D048 24080005 */  li    $t0, 5
/* A941EC 8001D04C 37190001 */  ori   $t9, $t8, 1
/* A941F0 8001D050 AE190004 */  sw    $t9, 4($s0)
/* A941F4 8001D054 AE08014C */  sw    $t0, 0x14c($s0)
/* A941F8 8001D058 02002025 */  move  $a0, $s0
/* A941FC 8001D05C 8605001C */  lh    $a1, 0x1c($s0)
/* A94200 8001D060 E6100178 */  swc1  $f16, 0x178($s0)
/* A94204 8001D064 0C00748D */  jal   func_8001D234
/* A94208 8001D068 E612006C */   swc1  $f18, 0x6c($s0)
/* A9420C 8001D06C 10000036 */  b     .L8001D148
/* A94210 8001D070 860F001C */   lh    $t7, 0x1c($s0)
/* A94214 8001D074 AE00014C */  sw    $zero, 0x14c($s0)
/* A94218 8001D078 02002025 */  move  $a0, $s0
/* A9421C 8001D07C 0C00748D */  jal   func_8001D234
/* A94220 8001D080 8605001C */   lh    $a1, 0x1c($s0)
/* A94224 8001D084 10000030 */  b     .L8001D148
/* A94228 8001D088 860F001C */   lh    $t7, 0x1c($s0)
/* A9422C 8001D08C 8609016C */  lh    $t1, 0x16c($s0)
/* A94230 8001D090 3C0143FA */  li    $at, 0x43FA0000 # 0.000000
/* A94234 8001D094 44812000 */  mtc1  $at, $f4
/* A94238 8001D098 8E0C0004 */  lw    $t4, 4($s0)
/* A9423C 8001D09C 3C014234 */  li    $at, 0x42340000 # 0.000000
/* A94240 8001D0A0 44813000 */  mtc1  $at, $f6
/* A94244 8001D0A4 312A00FF */  andi  $t2, $t1, 0xff
/* A94248 8001D0A8 354B0300 */  ori   $t3, $t2, 0x300
/* A9424C 8001D0AC 358D0009 */  ori   $t5, $t4, 9
/* A94250 8001D0B0 A60B010E */  sh    $t3, 0x10e($s0)
/* A94254 8001D0B4 AE0D0004 */  sw    $t5, 4($s0)
/* A94258 8001D0B8 02002025 */  move  $a0, $s0
/* A9425C 8001D0BC 8605001C */  lh    $a1, 0x1c($s0)
/* A94260 8001D0C0 E604004C */  swc1  $f4, 0x4c($s0)
/* A94264 8001D0C4 0C00748D */  jal   func_8001D234
/* A94268 8001D0C8 E6060178 */   swc1  $f6, 0x178($s0)
/* A9426C 8001D0CC 2605017C */  addiu $a1, $s0, 0x17c
/* A94270 8001D0D0 AFA50024 */  sw    $a1, 0x24($sp)
/* A94274 8001D0D4 0C0170D9 */  jal   func_8005C364
/* A94278 8001D0D8 8FA4003C */   lw    $a0, 0x3c($sp)
/* A9427C 8001D0DC 3C078011 */  lui   $a3, %hi(D_80115440) # $a3, 0x8011
/* A94280 8001D0E0 8FA50024 */  lw    $a1, 0x24($sp)
/* A94284 8001D0E4 24E75440 */  addiu $a3, %lo(D_80115440) # addiu $a3, $a3, 0x5440
/* A94288 8001D0E8 8FA4003C */  lw    $a0, 0x3c($sp)
/* A9428C 8001D0EC 0C01712B */  jal   func_8005C4AC
/* A94290 8001D0F0 02003025 */   move  $a2, $s0
/* A94294 8001D0F4 240E00FF */  li    $t6, 255
/* A94298 8001D0F8 A20E00AE */  sb    $t6, 0xae($s0)
/* A9429C 8001D0FC 10000011 */  b     .L8001D144
/* A942A0 8001D100 A200001F */   sb    $zero, 0x1f($s0)
/* A942A4 8001D104 3C01BFC0 */  li    $at, 0xBFC00000 # 0.000000
/* A942A8 8001D108 44814000 */  mtc1  $at, $f8
/* A942AC 8001D10C 00062C00 */  sll   $a1, $a2, 0x10
/* A942B0 8001D110 00052C03 */  sra   $a1, $a1, 0x10
/* A942B4 8001D114 02002025 */  move  $a0, $s0
/* A942B8 8001D118 0C007520 */  jal   func_8001D480
/* A942BC 8001D11C E608006C */   swc1  $f8, 0x6c($s0)
/* A942C0 8001D120 10000009 */  b     .L8001D148
/* A942C4 8001D124 860F001C */   lh    $t7, 0x1c($s0)
.L8001D128:
/* A942C8 8001D128 3C01C000 */  li    $at, 0xC0000000 # 0.000000
/* A942CC 8001D12C 44815000 */  mtc1  $at, $f10
/* A942D0 8001D130 00062C00 */  sll   $a1, $a2, 0x10
/* A942D4 8001D134 00052C03 */  sra   $a1, $a1, 0x10
/* A942D8 8001D138 02002025 */  move  $a0, $s0
/* A942DC 8001D13C 0C00748D */  jal   func_8001D234
/* A942E0 8001D140 E60A006C */   swc1  $f10, 0x6c($s0)
.L8001D144:
/* A942E4 8001D144 860F001C */  lh    $t7, 0x1c($s0)
.L8001D148:
/* A942E8 8001D148 241800FF */  li    $t8, 255
/* A942EC 8001D14C 3C048011 */  lui   $a0, 0x8011
/* A942F0 8001D150 29E10005 */  slti  $at, $t7, 5
/* A942F4 8001D154 10200002 */  beqz  $at, .L8001D160
/* A942F8 8001D158 27A50034 */   addiu $a1, $sp, 0x34
/* A942FC 8001D15C A21800AE */  sb    $t8, 0xae($s0)
.L8001D160:
/* A94300 8001D160 8E02014C */  lw    $v0, 0x14c($s0)
/* A94304 8001D164 2401FFFF */  li    $at, -1
/* A94308 8001D168 1041000A */  beq   $v0, $at, .L8001D194
/* A9430C 8001D16C 0002C880 */   sll   $t9, $v0, 2
/* A94310 8001D170 00992021 */  addu  $a0, $a0, $t9
/* A94314 8001D174 0C010620 */  jal   func_80041880
/* A94318 8001D178 8C84546C */   lw    $a0, 0x546c($a0)
/* A9431C 8001D17C 8FA4003C */  lw    $a0, 0x3c($sp)
/* A94320 8001D180 02003025 */  move  $a2, $s0
/* A94324 8001D184 8FA70034 */  lw    $a3, 0x34($sp)
/* A94328 8001D188 0C00FA9D */  jal   func_8003EA74
/* A9432C 8001D18C 24850810 */   addiu $a1, $a0, 0x810
/* A94330 8001D190 AE02014C */  sw    $v0, 0x14c($s0)
.L8001D194:
/* A94334 8001D194 8FBF001C */  lw    $ra, 0x1c($sp)
/* A94338 8001D198 8FB00018 */  lw    $s0, 0x18($sp)
/* A9433C 8001D19C 27BD0038 */  addiu $sp, $sp, 0x38
/* A94340 8001D1A0 03E00008 */  jr    $ra
/* A94344 8001D1A4 00000000 */   nop   

/* A94348 8001D1A8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* A9434C 8001D1AC 00803825 */  move  $a3, $a0
/* A94350 8001D1B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* A94354 8001D1B4 AFA5001C */  sw    $a1, 0x1c($sp)
/* A94358 8001D1B8 8CE6014C */  lw    $a2, 0x14c($a3)
/* A9435C 8001D1BC 00A02025 */  move  $a0, $a1
/* A94360 8001D1C0 24A50810 */  addiu $a1, $a1, 0x810
/* A94364 8001D1C4 0C00FB56 */  jal   func_8003ED58
/* A94368 8001D1C8 AFA70018 */   sw    $a3, 0x18($sp)
/* A9436C 8001D1CC 8FA70018 */  lw    $a3, 0x18($sp)
/* A94370 8001D1D0 24010009 */  li    $at, 9
/* A94374 8001D1D4 8FA4001C */  lw    $a0, 0x1c($sp)
/* A94378 8001D1D8 84E2001C */  lh    $v0, 0x1c($a3)
/* A9437C 8001D1DC 10410003 */  beq   $v0, $at, .L8001D1EC
/* A94380 8001D1E0 2401000A */   li    $at, 10
/* A94384 8001D1E4 54410004 */  bnel  $v0, $at, .L8001D1F8
/* A94388 8001D1E8 8FBF0014 */   lw    $ra, 0x14($sp)
.L8001D1EC:
/* A9438C 8001D1EC 0C0170EB */  jal   func_8005C3AC
/* A94390 8001D1F0 24E5017C */   addiu $a1, $a3, 0x17c
/* A94394 8001D1F4 8FBF0014 */  lw    $ra, 0x14($sp)
.L8001D1F8:
/* A94398 8001D1F8 27BD0018 */  addiu $sp, $sp, 0x18
/* A9439C 8001D1FC 03E00008 */  jr    $ra
/* A943A0 8001D200 00000000 */   nop   

func_8001D204:
/* A943A4 8001D204 27BDFFE8 */  addiu $sp, $sp, -0x18
/* A943A8 8001D208 AFBF0014 */  sw    $ra, 0x14($sp)
/* A943AC 8001D20C 0C00BCCD */  jal   func_8002F334
/* A943B0 8001D210 AFA40018 */   sw    $a0, 0x18($sp)
/* A943B4 8001D214 10400003 */  beqz  $v0, .L8001D224
/* A943B8 8001D218 8FA40018 */   lw    $a0, 0x18($sp)
/* A943BC 8001D21C 0C00748D */  jal   func_8001D234
/* A943C0 8001D220 8485001C */   lh    $a1, 0x1c($a0)
.L8001D224:
/* A943C4 8001D224 8FBF0014 */  lw    $ra, 0x14($sp)
/* A943C8 8001D228 27BD0018 */  addiu $sp, $sp, 0x18
/* A943CC 8001D22C 03E00008 */  jr    $ra
/* A943D0 8001D230 00000000 */   nop   

glabel func_8001D234
/* A943D4 8001D234 27BDFFE8 */  addiu $sp, $sp, -0x18
/* A943D8 8001D238 AFA5001C */  sw    $a1, 0x1c($sp)
/* A943DC 8001D23C AFBF0014 */  sw    $ra, 0x14($sp)
/* A943E0 8001D240 3C058002 */  lui   $a1, %hi(func_8001D25C) # $a1, 0x8002
/* A943E4 8001D244 0C007398 */  jal   func_8001CE60
/* A943E8 8001D248 24A5D25C */   addiu $a1, %lo(func_8001D25C) # addiu $a1, $a1, -0x2da4
/* A943EC 8001D24C 8FBF0014 */  lw    $ra, 0x14($sp)
/* A943F0 8001D250 27BD0018 */  addiu $sp, $sp, 0x18
/* A943F4 8001D254 03E00008 */  jr    $ra
/* A943F8 8001D258 00000000 */   nop   

func_8001D25C:
/* A943FC 8001D25C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* A94400 8001D260 AFBF0014 */  sw    $ra, 0x14($sp)
/* A94404 8001D264 AFA5001C */  sw    $a1, 0x1c($sp)
/* A94408 8001D268 948E010E */  lhu   $t6, 0x10e($a0)
/* A9440C 8001D26C 51C00025 */  beql  $t6, $zero, .L8001D304
/* A94410 8001D270 8FBF0014 */   lw    $ra, 0x14($sp)
/* A94414 8001D274 848F008A */  lh    $t7, 0x8a($a0)
/* A94418 8001D278 849800B6 */  lh    $t8, 0xb6($a0)
/* A9441C 8001D27C 8FA5001C */  lw    $a1, 0x1c($sp)
/* A94420 8001D280 01F81023 */  subu  $v0, $t7, $t8
/* A94424 8001D284 00021400 */  sll   $v0, $v0, 0x10
/* A94428 8001D288 00021403 */  sra   $v0, $v0, 0x10
/* A9442C 8001D28C 04400003 */  bltz  $v0, .L8001D29C
/* A94430 8001D290 00021823 */   negu  $v1, $v0
/* A94434 8001D294 10000001 */  b     .L8001D29C
/* A94438 8001D298 00401825 */   move  $v1, $v0
.L8001D29C:
/* A9443C 8001D29C 28612800 */  slti  $at, $v1, 0x2800
/* A94440 8001D2A0 1420000C */  bnez  $at, .L8001D2D4
/* A94444 8001D2A4 00000000 */   nop   
/* A94448 8001D2A8 8499001C */  lh    $t9, 0x1c($a0)
/* A9444C 8001D2AC 2401000A */  li    $at, 10
/* A94450 8001D2B0 57210014 */  bnel  $t9, $at, .L8001D304
/* A94454 8001D2B4 8FBF0014 */   lw    $ra, 0x14($sp)
/* A94458 8001D2B8 04400003 */  bltz  $v0, .L8001D2C8
/* A9445C 8001D2BC 00021823 */   negu  $v1, $v0
/* A94460 8001D2C0 10000001 */  b     .L8001D2C8
/* A94464 8001D2C4 00401825 */   move  $v1, $v0
.L8001D2C8:
/* A94468 8001D2C8 28615801 */  slti  $at, $v1, 0x5801
/* A9446C 8001D2CC 5420000D */  bnezl $at, .L8001D304
/* A94470 8001D2D0 8FBF0014 */   lw    $ra, 0x14($sp)
.L8001D2D4:
/* A94474 8001D2D4 0C00BC65 */  jal   func_8002F194
/* A94478 8001D2D8 AFA40018 */   sw    $a0, 0x18($sp)
/* A9447C 8001D2DC 10400006 */  beqz  $v0, .L8001D2F8
/* A94480 8001D2E0 8FA40018 */   lw    $a0, 0x18($sp)
/* A94484 8001D2E4 3C058002 */  lui   $a1, %hi(func_8001D204) # $a1, 0x8002
/* A94488 8001D2E8 0C007398 */  jal   func_8001CE60
/* A9448C 8001D2EC 24A5D204 */   addiu $a1, %lo(func_8001D204) # addiu $a1, $a1, -0x2dfc
/* A94490 8001D2F0 10000004 */  b     .L8001D304
/* A94494 8001D2F4 8FBF0014 */   lw    $ra, 0x14($sp)
.L8001D2F8:
/* A94498 8001D2F8 0C00BCBD */  jal   func_8002F2F4
/* A9449C 8001D2FC 8FA5001C */   lw    $a1, 0x1c($sp)
/* A944A0 8001D300 8FBF0014 */  lw    $ra, 0x14($sp)
.L8001D304:
/* A944A4 8001D304 27BD0018 */  addiu $sp, $sp, 0x18
/* A944A8 8001D308 03E00008 */  jr    $ra
/* A944AC 8001D30C 00000000 */   nop   

glabel func_8001D310
/* A944B0 8001D310 27BDFFE8 */  addiu $sp, $sp, -0x18
/* A944B4 8001D314 AFBF0014 */  sw    $ra, 0x14($sp)
/* A944B8 8001D318 AFA5001C */  sw    $a1, 0x1c($sp)
/* A944BC 8001D31C A4800032 */  sh    $zero, 0x32($a0)
/* A944C0 8001D320 88980030 */  lwl   $t8, 0x30($a0)
/* A944C4 8001D324 98980033 */  lwr   $t8, 0x33($a0)
/* A944C8 8001D328 240E000A */  li    $t6, 10
/* A944CC 8001D32C 3C058002 */  lui   $a1, %hi(func_8001D360) # $a1, 0x8002
/* A944D0 8001D330 A89800B4 */  swl   $t8, 0xb4($a0)
/* A944D4 8001D334 B89800B7 */  swr   $t8, 0xb7($a0)
/* A944D8 8001D338 94980034 */  lhu   $t8, 0x34($a0)
/* A944DC 8001D33C A480016E */  sh    $zero, 0x16e($a0)
/* A944E0 8001D340 AC8E0168 */  sw    $t6, 0x168($a0)
/* A944E4 8001D344 24A5D360 */  addiu $a1, %lo(func_8001D360) # addiu $a1, $a1, -0x2ca0
/* A944E8 8001D348 0C007398 */  jal   func_8001CE60
/* A944EC 8001D34C A49800B8 */   sh    $t8, 0xb8($a0)
/* A944F0 8001D350 8FBF0014 */  lw    $ra, 0x14($sp)
/* A944F4 8001D354 27BD0018 */  addiu $sp, $sp, 0x18
/* A944F8 8001D358 03E00008 */  jr    $ra
/* A944FC 8001D35C 00000000 */   nop   

func_8001D360:
/* A94500 8001D360 AFA50004 */  sw    $a1, 4($sp)
/* A94504 8001D364 8482016E */  lh    $v0, 0x16e($a0)
/* A94508 8001D368 5440001D */  bnezl $v0, .L8001D3E0
/* A9450C 8001D36C 8C820168 */   lw    $v0, 0x168($a0)
/* A94510 8001D370 908E0160 */  lbu   $t6, 0x160($a0)
/* A94514 8001D374 244F0001 */  addiu $t7, $v0, 1
/* A94518 8001D378 11C0003F */  beqz  $t6, .L8001D478
/* A9451C 8001D37C 00000000 */   nop   
/* A94520 8001D380 8499008A */  lh    $t9, 0x8a($a0)
/* A94524 8001D384 24180014 */  li    $t8, 20
/* A94528 8001D388 A48F016E */  sh    $t7, 0x16e($a0)
/* A9452C 8001D38C 27284000 */  addiu $t0, $t9, 0x4000
/* A94530 8001D390 00084C00 */  sll   $t1, $t0, 0x10
/* A94534 8001D394 00095403 */  sra   $t2, $t1, 0x10
/* A94538 8001D398 05410004 */  bgez  $t2, .L8001D3AC
/* A9453C 8001D39C A4980170 */   sh    $t8, 0x170($a0)
/* A94540 8001D3A0 240BFC18 */  li    $t3, -1000
/* A94544 8001D3A4 10000003 */  b     .L8001D3B4
/* A94548 8001D3A8 A48B0174 */   sh    $t3, 0x174($a0)
.L8001D3AC:
/* A9454C 8001D3AC 240C03E8 */  li    $t4, 1000
/* A94550 8001D3B0 A48C0174 */  sh    $t4, 0x174($a0)
.L8001D3B4:
/* A94554 8001D3B4 848D008A */  lh    $t5, 0x8a($a0)
/* A94558 8001D3B8 05A30006 */  bgezl $t5, .L8001D3D4
/* A9455C 8001D3BC 84980174 */   lh    $t8, 0x174($a0)
/* A94560 8001D3C0 848E0174 */  lh    $t6, 0x174($a0)
/* A94564 8001D3C4 000E7823 */  negu  $t7, $t6
/* A94568 8001D3C8 03E00008 */  jr    $ra
/* A9456C 8001D3CC A48F0172 */   sh    $t7, 0x172($a0)

/* A94570 8001D3D0 84980174 */  lh    $t8, 0x174($a0)
.L8001D3D4:
/* A94574 8001D3D4 03E00008 */  jr    $ra
/* A94578 8001D3D8 A4980172 */   sh    $t8, 0x172($a0)

/* A9457C 8001D3DC 8C820168 */  lw    $v0, 0x168($a0)
.L8001D3E0:
/* A94580 8001D3E0 3C01BF80 */  lui   $at, 0xbf80
/* A94584 8001D3E4 10400003 */  beqz  $v0, .L8001D3F4
/* A94588 8001D3E8 2459FFFF */   addiu $t9, $v0, -1
/* A9458C 8001D3EC 03E00008 */  jr    $ra
/* A94590 8001D3F0 AC990168 */   sw    $t9, 0x168($a0)

.L8001D3F4:
/* A94594 8001D3F4 848E0170 */  lh    $t6, 0x170($a0)
/* A94598 8001D3F8 848800B6 */  lh    $t0, 0xb6($a0)
/* A9459C 8001D3FC 84890172 */  lh    $t1, 0x172($a0)
/* A945A0 8001D400 25CFFFFF */  addiu $t7, $t6, -1
/* A945A4 8001D404 848B00B4 */  lh    $t3, 0xb4($a0)
/* A945A8 8001D408 848C0174 */  lh    $t4, 0x174($a0)
/* A945AC 8001D40C A48F0170 */  sh    $t7, 0x170($a0)
/* A945B0 8001D410 84980170 */  lh    $t8, 0x170($a0)
/* A945B4 8001D414 44812000 */  mtc1  $at, $f4
/* A945B8 8001D418 01095021 */  addu  $t2, $t0, $t1
/* A945BC 8001D41C 016C6821 */  addu  $t5, $t3, $t4
/* A945C0 8001D420 A48A00B6 */  sh    $t2, 0xb6($a0)
/* A945C4 8001D424 A48D00B4 */  sh    $t5, 0xb4($a0)
/* A945C8 8001D428 17000013 */  bnez  $t8, .L8001D478
/* A945CC 8001D42C E484006C */   swc1  $f4, 0x6c($a0)
/* A945D0 8001D430 888B0030 */  lwl   $t3, 0x30($a0)
/* A945D4 8001D434 988B0033 */  lwr   $t3, 0x33($a0)
/* A945D8 8001D438 8C880008 */  lw    $t0, 8($a0)
/* A945DC 8001D43C 44800000 */  mtc1  $zero, $f0
/* A945E0 8001D440 A88B00B4 */  swl   $t3, 0xb4($a0)
/* A945E4 8001D444 B88B00B7 */  swr   $t3, 0xb7($a0)
/* A945E8 8001D448 AC880024 */  sw    $t0, 0x24($a0)
/* A945EC 8001D44C 8C880010 */  lw    $t0, 0x10($a0)
/* A945F0 8001D450 8C99000C */  lw    $t9, 0xc($a0)
/* A945F4 8001D454 948B0034 */  lhu   $t3, 0x34($a0)
/* A945F8 8001D458 2409000A */  li    $t1, 10
/* A945FC 8001D45C A480016E */  sh    $zero, 0x16e($a0)
/* A94600 8001D460 AC890168 */  sw    $t1, 0x168($a0)
/* A94604 8001D464 E4800060 */  swc1  $f0, 0x60($a0)
/* A94608 8001D468 E480006C */  swc1  $f0, 0x6c($a0)
/* A9460C 8001D46C AC88002C */  sw    $t0, 0x2c($a0)
/* A94610 8001D470 AC990028 */  sw    $t9, 0x28($a0)
/* A94614 8001D474 A48B00B8 */  sh    $t3, 0xb8($a0)
.L8001D478:
/* A94618 8001D478 03E00008 */  jr    $ra
/* A9461C 8001D47C 00000000 */   nop   

glabel func_8001D480
/* A94620 8001D480 27BDFFE8 */  addiu $sp, $sp, -0x18
/* A94624 8001D484 AFA5001C */  sw    $a1, 0x1c($sp)
/* A94628 8001D488 AFBF0014 */  sw    $ra, 0x14($sp)
/* A9462C 8001D48C 3C058002 */  lui   $a1, %hi(func_8001D4A8) # $a1, 0x8002
/* A94630 8001D490 0C007398 */  jal   func_8001CE60
/* A94634 8001D494 24A5D4A8 */   addiu $a1, %lo(func_8001D4A8) # addiu $a1, $a1, -0x2b58
/* A94638 8001D498 8FBF0014 */  lw    $ra, 0x14($sp)
/* A9463C 8001D49C 27BD0018 */  addiu $sp, $sp, 0x18
/* A94640 8001D4A0 03E00008 */  jr    $ra
/* A94644 8001D4A4 00000000 */   nop   

func_8001D4A8:
/* A94648 8001D4A8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* A9464C 8001D4AC 44810000 */  mtc1  $at, $f0
/* A94650 8001D4B0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* A94654 8001D4B4 44802000 */  mtc1  $zero, $f4
/* A94658 8001D4B8 AFB00020 */  sw    $s0, 0x20($sp)
/* A9465C 8001D4BC AFA5002C */  sw    $a1, 0x2c($sp)
/* A94660 8001D4C0 00808025 */  move  $s0, $a0
/* A94664 8001D4C4 AFBF0024 */  sw    $ra, 0x24($sp)
/* A94668 8001D4C8 44050000 */  mfc1  $a1, $f0
/* A9466C 8001D4CC 44060000 */  mfc1  $a2, $f0
/* A94670 8001D4D0 24840068 */  addiu $a0, $a0, 0x68
/* A94674 8001D4D4 3C073F00 */  li    $a3, 0x3F000000 # 0.000000
/* A94678 8001D4D8 0C01E0C4 */  jal   func_80078310
/* A9467C 8001D4DC E7A40010 */   swc1  $f4, 0x10($sp)
/* A94680 8001D4E0 44803000 */  mtc1  $zero, $f6
/* A94684 8001D4E4 C6080068 */  lwc1  $f8, 0x68($s0)
/* A94688 8001D4E8 860F0030 */  lh    $t7, 0x30($s0)
/* A9468C 8001D4EC 86090034 */  lh    $t1, 0x34($s0)
/* A94690 8001D4F0 46083032 */  c.eq.s $f6, $f8
/* A94694 8001D4F4 860E00B4 */  lh    $t6, 0xb4($s0)
/* A94698 8001D4F8 860800B8 */  lh    $t0, 0xb8($s0)
/* A9469C 8001D4FC 000FC043 */  sra   $t8, $t7, 1
/* A946A0 8001D500 00095043 */  sra   $t2, $t1, 1
/* A946A4 8001D504 01D8C821 */  addu  $t9, $t6, $t8
/* A946A8 8001D508 010A5821 */  addu  $t3, $t0, $t2
/* A946AC 8001D50C A61900B4 */  sh    $t9, 0xb4($s0)
/* A946B0 8001D510 4501000F */  bc1t  .L8001D550
/* A946B4 8001D514 A60B00B8 */   sh    $t3, 0xb8($s0)
/* A946B8 8001D518 960C0088 */  lhu   $t4, 0x88($s0)
/* A946BC 8001D51C 318D0008 */  andi  $t5, $t4, 8
/* A946C0 8001D520 51A0000C */  beql  $t5, $zero, .L8001D554
/* A946C4 8001D524 96020088 */   lhu   $v0, 0x88($s0)
/* A946C8 8001D528 8602007E */  lh    $v0, 0x7e($s0)
/* A946CC 8001D52C 860F0032 */  lh    $t7, 0x32($s0)
/* A946D0 8001D530 96090088 */  lhu   $t1, 0x88($s0)
/* A946D4 8001D534 24018000 */  li    $at, -32768
/* A946D8 8001D538 004F7023 */  subu  $t6, $v0, $t7
/* A946DC 8001D53C 01C2C021 */  addu  $t8, $t6, $v0
/* A946E0 8001D540 0301C821 */  addu  $t9, $t8, $at
/* A946E4 8001D544 3128FFF7 */  andi  $t0, $t1, 0xfff7
/* A946E8 8001D548 A6190032 */  sh    $t9, 0x32($s0)
/* A946EC 8001D54C A6080088 */  sh    $t0, 0x88($s0)
.L8001D550:
/* A946F0 8001D550 96020088 */  lhu   $v0, 0x88($s0)
.L8001D554:
/* A946F4 8001D554 3C01C100 */  li    $at, 0xC1000000 # 0.000000
/* A946F8 8001D558 304A0002 */  andi  $t2, $v0, 2
/* A946FC 8001D55C 51400016 */  beql  $t2, $zero, .L8001D5B8
/* A94700 8001D560 8FBF0024 */   lw    $ra, 0x24($sp)
/* A94704 8001D564 C6000060 */  lwc1  $f0, 0x60($s0)
/* A94708 8001D568 44815000 */  mtc1  $at, $f10
/* A9470C 8001D56C 3C018013 */  lui   $at, 0x8013
/* A94710 8001D570 460A003C */  c.lt.s $f0, $f10
/* A94714 8001D574 00000000 */  nop   
/* A94718 8001D578 4500000C */  bc1f  .L8001D5AC
/* A9471C 8001D57C 00000000 */   nop   
/* A94720 8001D580 C4304DB4 */  lwc1  $f16, 0x4db4($at)
/* A94724 8001D584 3C018013 */  lui   $at, 0x8013
/* A94728 8001D588 C6040068 */  lwc1  $f4, 0x68($s0)
/* A9472C 8001D58C 46100482 */  mul.s $f18, $f0, $f16
/* A94730 8001D590 304BFFFC */  andi  $t3, $v0, 0xfffc
/* A94734 8001D594 E6120060 */  swc1  $f18, 0x60($s0)
/* A94738 8001D598 C4264DB8 */  lwc1  $f6, 0x4db8($at)
/* A9473C 8001D59C A60B0088 */  sh    $t3, 0x88($s0)
/* A94740 8001D5A0 46062202 */  mul.s $f8, $f4, $f6
/* A94744 8001D5A4 10000003 */  b     .L8001D5B4
/* A94748 8001D5A8 E6080068 */   swc1  $f8, 0x68($s0)
.L8001D5AC:
/* A9474C 8001D5AC 0C00B55C */  jal   func_8002D570
/* A94750 8001D5B0 02002025 */   move  $a0, $s0
.L8001D5B4:
/* A94754 8001D5B4 8FBF0024 */  lw    $ra, 0x24($sp)
.L8001D5B8:
/* A94758 8001D5B8 8FB00020 */  lw    $s0, 0x20($sp)
/* A9475C 8001D5BC 27BD0028 */  addiu $sp, $sp, 0x28
/* A94760 8001D5C0 03E00008 */  jr    $ra
/* A94764 8001D5C4 00000000 */   nop   

glabel func_8001D5C8
/* A94768 8001D5C8 3C014496 */  li    $at, 0x44960000 # 0.000000
/* A9476C 8001D5CC 44812000 */  mtc1  $at, $f4
/* A94770 8001D5D0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* A94774 8001D5D4 3C014434 */  li    $at, 0x44340000 # 0.000000
/* A94778 8001D5D8 44813000 */  mtc1  $at, $f6
/* A9477C 8001D5DC AFBF0014 */  sw    $ra, 0x14($sp)
/* A94780 8001D5E0 AFA5001C */  sw    $a1, 0x1c($sp)
/* A94784 8001D5E4 3C058002 */  lui   $a1, %hi(func_8001D608) # $a1, 0x8002
/* A94788 8001D5E8 24A5D608 */  addiu $a1, %lo(func_8001D608) # addiu $a1, $a1, -0x29f8
/* A9478C 8001D5EC E48400FC */  swc1  $f4, 0xfc($a0)
/* A94790 8001D5F0 0C007398 */  jal   func_8001CE60
/* A94794 8001D5F4 E48600F8 */   swc1  $f6, 0xf8($a0)
/* A94798 8001D5F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* A9479C 8001D5FC 27BD0018 */  addiu $sp, $sp, 0x18
/* A947A0 8001D600 03E00008 */  jr    $ra
/* A947A4 8001D604 00000000 */   nop   

func_8001D608:
/* A947A8 8001D608 27BDFFD8 */  addiu $sp, $sp, -0x28
/* A947AC 8001D60C AFBF0024 */  sw    $ra, 0x24($sp)
/* A947B0 8001D610 AFB00020 */  sw    $s0, 0x20($sp)
/* A947B4 8001D614 AFA5002C */  sw    $a1, 0x2c($sp)
/* A947B8 8001D618 C4840068 */  lwc1  $f4, 0x68($a0)
/* A947BC 8001D61C C4860150 */  lwc1  $f6, 0x150($a0)
/* A947C0 8001D620 3C01C020 */  li    $at, 0xC0200000 # 0.000000
/* A947C4 8001D624 44811000 */  mtc1  $at, $f2
/* A947C8 8001D628 46062200 */  add.s $f8, $f4, $f6
/* A947CC 8001D62C 848E0158 */  lh    $t6, 0x158($a0)
/* A947D0 8001D630 00808025 */  move  $s0, $a0
/* A947D4 8001D634 3C014020 */  li    $at, 0x40200000 # 0.000000
/* A947D8 8001D638 E4880068 */  swc1  $f8, 0x68($a0)
/* A947DC 8001D63C C4800068 */  lwc1  $f0, 0x68($a0)
/* A947E0 8001D640 A48E0032 */  sh    $t6, 0x32($a0)
/* A947E4 8001D644 4602003C */  c.lt.s $f0, $f2
/* A947E8 8001D648 00000000 */  nop   
/* A947EC 8001D64C 45020004 */  bc1fl .L8001D660
/* A947F0 8001D650 44816000 */   mtc1  $at, $f12
/* A947F4 8001D654 1000000B */  b     .L8001D684
/* A947F8 8001D658 E4820068 */   swc1  $f2, 0x68($a0)
/* A947FC 8001D65C 44816000 */  mtc1  $at, $f12
.L8001D660:
/* A94800 8001D660 00000000 */  nop   
/* A94804 8001D664 4600603C */  c.lt.s $f12, $f0
/* A94808 8001D668 00000000 */  nop   
/* A9480C 8001D66C 45020004 */  bc1fl .L8001D680
/* A94810 8001D670 46000086 */   mov.s $f2, $f0
/* A94814 8001D674 10000002 */  b     .L8001D680
/* A94818 8001D678 46006086 */   mov.s $f2, $f12
/* A9481C 8001D67C 46000086 */  mov.s $f2, $f0
.L8001D680:
/* A94820 8001D680 E6020068 */  swc1  $f2, 0x68($s0)
.L8001D684:
/* A94824 8001D684 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* A94828 8001D688 44811000 */  mtc1  $at, $f2
/* A9482C 8001D68C 44800000 */  mtc1  $zero, $f0
/* A94830 8001D690 26040068 */  addiu $a0, $s0, 0x68
/* A94834 8001D694 44061000 */  mfc1  $a2, $f2
/* A94838 8001D698 44071000 */  mfc1  $a3, $f2
/* A9483C 8001D69C 44050000 */  mfc1  $a1, $f0
/* A94840 8001D6A0 0C01E0C4 */  jal   func_80078310
/* A94844 8001D6A4 E7A00010 */   swc1  $f0, 0x10($sp)
/* A94848 8001D6A8 44800000 */  mtc1  $zero, $f0
/* A9484C 8001D6AC C60A0068 */  lwc1  $f10, 0x68($s0)
/* A94850 8001D6B0 02002025 */  move  $a0, $s0
/* A94854 8001D6B4 460A0032 */  c.eq.s $f0, $f10
/* A94858 8001D6B8 00000000 */  nop   
/* A9485C 8001D6BC 45030006 */  bc1tl .L8001D6D8
/* A94860 8001D6C0 E6000154 */   swc1  $f0, 0x154($s0)
/* A94864 8001D6C4 0C00BE0A */  jal   func_8002F828
/* A94868 8001D6C8 2405200A */   li    $a1, 8202
/* A9486C 8001D6CC 44800000 */  mtc1  $zero, $f0
/* A94870 8001D6D0 00000000 */  nop   
/* A94874 8001D6D4 E6000154 */  swc1  $f0, 0x154($s0)
.L8001D6D8:
/* A94878 8001D6D8 E6000150 */  swc1  $f0, 0x150($s0)
/* A9487C 8001D6DC 8FBF0024 */  lw    $ra, 0x24($sp)
/* A94880 8001D6E0 8FB00020 */  lw    $s0, 0x20($sp)
/* A94884 8001D6E4 27BD0028 */  addiu $sp, $sp, 0x28
/* A94888 8001D6E8 03E00008 */  jr    $ra
/* A9488C 8001D6EC 00000000 */   nop   

/* A94890 8001D6F0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A94894 8001D6F4 AFB0001C */  sw    $s0, 0x1c($sp)
/* A94898 8001D6F8 00808025 */  move  $s0, $a0
/* A9489C 8001D6FC AFBF0024 */  sw    $ra, 0x24($sp)
/* A948A0 8001D700 AFB10020 */  sw    $s1, 0x20($sp)
/* A948A4 8001D704 8E190164 */  lw    $t9, 0x164($s0)
/* A948A8 8001D708 00A08825 */  move  $s1, $a1
/* A948AC 8001D70C 0320F809 */  jalr  $t9
/* A948B0 8001D710 00000000 */  nop   
/* A948B4 8001D714 0C00B638 */  jal   func_8002D8E0
/* A948B8 8001D718 02002025 */   move  $a0, $s0
/* A948BC 8001D71C 44800000 */  mtc1  $zero, $f0
/* A948C0 8001D720 C604006C */  lwc1  $f4, 0x6c($s0)
/* A948C4 8001D724 46040032 */  c.eq.s $f0, $f4
/* A948C8 8001D728 00000000 */  nop   
/* A948CC 8001D72C 45030017 */  bc1tl .L8001D78C
/* A948D0 8001D730 8E080028 */   lw    $t0, 0x28($s0)
/* A948D4 8001D734 860E001C */  lh    $t6, 0x1c($s0)
/* A948D8 8001D738 2401000B */  li    $at, 11
/* A948DC 8001D73C 02202025 */  move  $a0, $s1
/* A948E0 8001D740 11C1000B */  beq   $t6, $at, .L8001D770
/* A948E4 8001D744 02002825 */   move  $a1, $s0
/* A948E8 8001D748 240F001D */  li    $t7, 29
/* A948EC 8001D74C AFAF0014 */  sw    $t7, 0x14($sp)
/* A948F0 8001D750 02202025 */  move  $a0, $s1
/* A948F4 8001D754 02002825 */  move  $a1, $s0
/* A948F8 8001D758 3C0640A0 */  lui   $a2, 0x40a0
/* A948FC 8001D75C 3C074220 */  lui   $a3, 0x4220
/* A94900 8001D760 0C00B92D */  jal   func_8002E4B4
/* A94904 8001D764 E7A00010 */   swc1  $f0, 0x10($sp)
/* A94908 8001D768 10000008 */  b     .L8001D78C
/* A9490C 8001D76C 8E080028 */   lw    $t0, 0x28($s0)
.L8001D770:
/* A94910 8001D770 2418001D */  li    $t8, 29
/* A94914 8001D774 AFB80014 */  sw    $t8, 0x14($sp)
/* A94918 8001D778 3C0640A0 */  lui   $a2, 0x40a0
/* A9491C 8001D77C 3C0741A0 */  lui   $a3, 0x41a0
/* A94920 8001D780 0C00B92D */  jal   func_8002E4B4
/* A94924 8001D784 E7A00010 */   swc1  $f0, 0x10($sp)
/* A94928 8001D788 8E080028 */  lw    $t0, 0x28($s0)
.L8001D78C:
/* A9492C 8001D78C 8E090024 */  lw    $t1, 0x24($s0)
/* A94930 8001D790 C6120178 */  lwc1  $f18, 0x178($s0)
/* A94934 8001D794 8602001C */  lh    $v0, 0x1c($s0)
/* A94938 8001D798 AE08003C */  sw    $t0, 0x3c($s0)
/* A9493C 8001D79C C610003C */  lwc1  $f16, 0x3c($s0)
/* A94940 8001D7A0 AE090038 */  sw    $t1, 0x38($s0)
/* A94944 8001D7A4 8E09002C */  lw    $t1, 0x2c($s0)
/* A94948 8001D7A8 46128480 */  add.s $f18, $f16, $f18
/* A9494C 8001D7AC 24010009 */  li    $at, 9
/* A94950 8001D7B0 AE090040 */  sw    $t1, 0x40($s0)
/* A94954 8001D7B4 10410003 */  beq   $v0, $at, .L8001D7C4
/* A94958 8001D7B8 E612003C */   swc1  $f18, 0x3c($s0)
/* A9495C 8001D7BC 2401000A */  li    $at, 10
/* A94960 8001D7C0 1441000B */  bne   $v0, $at, .L8001D7F0
.L8001D7C4:
/* A94964 8001D7C4 2606017C */   addiu $a2, $s0, 0x17c
/* A94968 8001D7C8 00C02825 */  move  $a1, $a2
/* A9496C 8001D7CC AFA6002C */  sw    $a2, 0x2c($sp)
/* A94970 8001D7D0 0C0189B7 */  jal   func_800626DC
/* A94974 8001D7D4 02002025 */   move  $a0, $s0
/* A94978 8001D7D8 3C010001 */  lui   $at, (0x00011E60 >> 16) # lui $at, 1
/* A9497C 8001D7DC 34211E60 */  ori   $at, (0x00011E60 & 0xFFFF) # ori $at, $at, 0x1e60
/* A94980 8001D7E0 8FA6002C */  lw    $a2, 0x2c($sp)
/* A94984 8001D7E4 02212821 */  addu  $a1, $s1, $at
/* A94988 8001D7E8 0C017713 */  jal   func_8005DC4C
/* A9498C 8001D7EC 02202025 */   move  $a0, $s1
.L8001D7F0:
/* A94990 8001D7F0 8FBF0024 */  lw    $ra, 0x24($sp)
/* A94994 8001D7F4 8FB0001C */  lw    $s0, 0x1c($sp)
/* A94998 8001D7F8 8FB10020 */  lw    $s1, 0x20($sp)
/* A9499C 8001D7FC 03E00008 */  jr    $ra
/* A949A0 8001D800 27BD0038 */   addiu $sp, $sp, 0x38

/* A949A4 8001D804 27BDFFB8 */  addiu $sp, $sp, -0x48
/* A949A8 8001D808 AFBF001C */  sw    $ra, 0x1c($sp)
/* A949AC 8001D80C AFB00018 */  sw    $s0, 0x18($sp)
/* A949B0 8001D810 AFA40048 */  sw    $a0, 0x48($sp)
/* A949B4 8001D814 AFA5004C */  sw    $a1, 0x4c($sp)
/* A949B8 8001D818 848F001C */  lh    $t7, 0x1c($a0)
/* A949BC 8001D81C 3C068013 */  lui   $a2, %hi(D_80134D30) # $a2, 0x8013
/* A949C0 8001D820 24C64D30 */  addiu $a2, %lo(D_80134D30) # addiu $a2, $a2, 0x4d30
/* A949C4 8001D824 AFAF0044 */  sw    $t7, 0x44($sp)
/* A949C8 8001D828 8CA50000 */  lw    $a1, ($a1)
/* A949CC 8001D82C 27A40030 */  addiu $a0, $sp, 0x30
/* A949D0 8001D830 240702BD */  li    $a3, 701
/* A949D4 8001D834 0C031AB1 */  jal   func_800C6AC4
/* A949D8 8001D838 00A08025 */   move  $s0, $a1
/* A949DC 8001D83C 8FB9004C */  lw    $t9, 0x4c($sp)
/* A949E0 8001D840 0C024F46 */  jal   func_80093D18
/* A949E4 8001D844 8F240000 */   lw    $a0, ($t9)
/* A949E8 8001D848 8FA80044 */  lw    $t0, 0x44($sp)
/* A949EC 8001D84C 2409000B */  li    $t1, 11
/* A949F0 8001D850 3C0DFA00 */  lui   $t5, (0xFA000001 >> 16) # lui $t5, 0xfa00
/* A949F4 8001D854 2901000C */  slti  $at, $t0, 0xc
/* A949F8 8001D858 14200002 */  bnez  $at, .L8001D864
/* A949FC 8001D85C 3C18DA38 */   lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* A94A00 8001D860 AFA90044 */  sw    $t1, 0x44($sp)
.L8001D864:
/* A94A04 8001D864 8FAA0048 */  lw    $t2, 0x48($sp)
/* A94A08 8001D868 2401000B */  li    $at, 11
/* A94A0C 8001D86C 35AD0001 */  ori   $t5, (0xFA000001 & 0xFFFF) # ori $t5, $t5, 1
/* A94A10 8001D870 854B001C */  lh    $t3, 0x1c($t2)
/* A94A14 8001D874 55610009 */  bnel  $t3, $at, .L8001D89C
/* A94A18 8001D878 8E0202C0 */   lw    $v0, 0x2c0($s0)
/* A94A1C 8001D87C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* A94A20 8001D880 3C0E3C3C */  lui   $t6, (0x3C3C3C32 >> 16) # lui $t6, 0x3c3c
/* A94A24 8001D884 35CE3C32 */  ori   $t6, (0x3C3C3C32 & 0xFFFF) # ori $t6, $t6, 0x3c32
/* A94A28 8001D888 244C0008 */  addiu $t4, $v0, 8
/* A94A2C 8001D88C AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* A94A30 8001D890 AC4E0004 */  sw    $t6, 4($v0)
/* A94A34 8001D894 AC4D0000 */  sw    $t5, ($v0)
/* A94A38 8001D898 8E0202C0 */  lw    $v0, 0x2c0($s0)
.L8001D89C:
/* A94A3C 8001D89C 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* A94A40 8001D8A0 3C058013 */  lui   $a1, %hi(D_80134D44) # $a1, 0x8013
/* A94A44 8001D8A4 244F0008 */  addiu $t7, $v0, 8
/* A94A48 8001D8A8 AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* A94A4C 8001D8AC AC580000 */  sw    $t8, ($v0)
/* A94A50 8001D8B0 8FB9004C */  lw    $t9, 0x4c($sp)
/* A94A54 8001D8B4 24A54D44 */  addiu $a1, %lo(D_80134D44) # addiu $a1, $a1, 0x4d44
/* A94A58 8001D8B8 240602C8 */  li    $a2, 712
/* A94A5C 8001D8BC 8F240000 */  lw    $a0, ($t9)
/* A94A60 8001D8C0 0C0346A2 */  jal   func_800D1A88
/* A94A64 8001D8C4 AFA20028 */   sw    $v0, 0x28($sp)
/* A94A68 8001D8C8 8FA30028 */  lw    $v1, 0x28($sp)
/* A94A6C 8001D8CC 3C09DE00 */  lui   $t1, 0xde00
/* A94A70 8001D8D0 3C0C8011 */  lui   $t4, 0x8011
/* A94A74 8001D8D4 AC620004 */  sw    $v0, 4($v1)
/* A94A78 8001D8D8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* A94A7C 8001D8DC 3C068013 */  lui   $a2, %hi(D_80134D58) # $a2, 0x8013
/* A94A80 8001D8E0 24C64D58 */  addiu $a2, %lo(D_80134D58) # addiu $a2, $a2, 0x4d58
/* A94A84 8001D8E4 24480008 */  addiu $t0, $v0, 8
/* A94A88 8001D8E8 AE0802C0 */  sw    $t0, 0x2c0($s0)
/* A94A8C 8001D8EC AC490000 */  sw    $t1, ($v0)
/* A94A90 8001D8F0 8FAA0044 */  lw    $t2, 0x44($sp)
/* A94A94 8001D8F4 27A40030 */  addiu $a0, $sp, 0x30
/* A94A98 8001D8F8 240702CB */  li    $a3, 715
/* A94A9C 8001D8FC 000A5880 */  sll   $t3, $t2, 2
/* A94AA0 8001D900 018B6021 */  addu  $t4, $t4, $t3
/* A94AA4 8001D904 8D8C5484 */  lw    $t4, 0x5484($t4)
/* A94AA8 8001D908 AC4C0004 */  sw    $t4, 4($v0)
/* A94AAC 8001D90C 8FAD004C */  lw    $t5, 0x4c($sp)
/* A94AB0 8001D910 0C031AD5 */  jal   func_800C6B54
/* A94AB4 8001D914 8DA50000 */   lw    $a1, ($t5)
/* A94AB8 8001D918 8FBF001C */  lw    $ra, 0x1c($sp)
/* A94ABC 8001D91C 8FB00018 */  lw    $s0, 0x18($sp)
/* A94AC0 8001D920 27BD0048 */  addiu $sp, $sp, 0x48
/* A94AC4 8001D924 03E00008 */  jr    $ra
/* A94AC8 8001D928 00000000 */   nop   
