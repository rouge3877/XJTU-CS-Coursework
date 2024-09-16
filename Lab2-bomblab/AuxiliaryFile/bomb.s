
bomb:     file format elf64-x86-64

Contents of the .eh_frame section (loaded from bomb):


00000000 0000000000000014 00000000 CIE
  Version:               1
  Augmentation:          "zR"
  Code alignment factor: 1
  Data alignment factor: -8
  Return address column: 16
  Augmentation data:     1b
  DW_CFA_def_cfa: r7 (rsp) ofs 8
  DW_CFA_offset: r16 (rip) at cfa-8
  DW_CFA_nop
  DW_CFA_nop

00000018 0000000000000014 0000001c FDE cie=00000000 pc=00000000000013a0..00000000000013c6
  DW_CFA_advance_loc: 4 to 00000000000013a4
  DW_CFA_undefined: r16 (rip)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000030 0000000000000024 00000034 FDE cie=00000000 pc=0000000000001020..00000000000011e0
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 6 to 0000000000001026
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 10 to 0000000000001030
  DW_CFA_def_cfa_expression (DW_OP_breg7 (rsp): 8; DW_OP_breg16 (rip): 0; DW_OP_lit15; DW_OP_and; DW_OP_lit10; DW_OP_ge; DW_OP_lit3; DW_OP_shl; DW_OP_plus)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000058 0000000000000014 0000005c FDE cie=00000000 pc=00000000000011e0..00000000000011f0
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000070 0000000000000014 00000074 FDE cie=00000000 pc=00000000000011f0..00000000000013a0
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000088 000000000000001c 0000008c FDE cie=00000000 pc=0000000000001489..00000000000015ab
  DW_CFA_advance_loc: 5 to 000000000000148e
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r3 (rbx) at cfa-16
  DW_CFA_advance_loc1: 196 to 0000000000001552
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 0000000000001553
  DW_CFA_restore_state
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000000a8 0000000000000018 000000ac FDE cie=00000000 pc=00000000000015ab..00000000000015cf
  DW_CFA_advance_loc: 8 to 00000000000015b3
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 20 to 00000000000015c7
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 00000000000015c8
  DW_CFA_restore_state
  DW_CFA_nop
  DW_CFA_nop

000000c4 0000000000000028 000000c8 FDE cie=00000000 pc=00000000000015cf..0000000000001643
  DW_CFA_advance_loc: 5 to 00000000000015d4
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r6 (rbp) at cfa-16
  DW_CFA_advance_loc: 1 to 00000000000015d5
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r3 (rbx) at cfa-24
  DW_CFA_advance_loc: 4 to 00000000000015d9
  DW_CFA_def_cfa_offset: 64
  DW_CFA_advance_loc1: 98 to 000000000000163b
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 1 to 000000000000163c
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 1 to 000000000000163d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 000000000000163e
  DW_CFA_restore_state
  DW_CFA_nop

000000f0 0000000000000018 000000f4 FDE cie=00000000 pc=0000000000001643..00000000000017c4
  DW_CFA_advance_loc: 8 to 000000000000164b
  DW_CFA_def_cfa_offset: 48
  DW_CFA_advance_loc2: 364 to 00000000000017b7
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 00000000000017b8
  DW_CFA_restore_state

0000010c 0000000000000018 00000110 FDE cie=00000000 pc=00000000000017c4..0000000000001805
  DW_CFA_advance_loc: 8 to 00000000000017cc
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 30 to 00000000000017ea
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 00000000000017eb
  DW_CFA_restore_state
  DW_CFA_nop
  DW_CFA_nop

00000128 0000000000000018 0000012c FDE cie=00000000 pc=0000000000001805..000000000000187e
  DW_CFA_advance_loc: 8 to 000000000000180d
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc1: 107 to 0000000000001878
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 0000000000001879
  DW_CFA_restore_state
  DW_CFA_nop

00000144 0000000000000018 00000148 FDE cie=00000000 pc=000000000000187e..00000000000018ca
  DW_CFA_advance_loc: 5 to 0000000000001883
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r3 (rbx) at cfa-16
  DW_CFA_advance_loc: 56 to 00000000000018bb
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 00000000000018bc
  DW_CFA_restore_state

00000160 000000000000004c 00000164 FDE cie=00000000 pc=00000000000018ca..0000000000001a37
  DW_CFA_advance_loc: 6 to 00000000000018d0
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r15 (r15) at cfa-16
  DW_CFA_advance_loc: 2 to 00000000000018d2
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r14 (r14) at cfa-24
  DW_CFA_advance_loc: 2 to 00000000000018d4
  DW_CFA_def_cfa_offset: 32
  DW_CFA_offset: r13 (r13) at cfa-32
  DW_CFA_advance_loc: 2 to 00000000000018d6
  DW_CFA_def_cfa_offset: 40
  DW_CFA_offset: r12 (r12) at cfa-40
  DW_CFA_advance_loc: 1 to 00000000000018d7
  DW_CFA_def_cfa_offset: 48
  DW_CFA_offset: r6 (rbp) at cfa-48
  DW_CFA_advance_loc: 1 to 00000000000018d8
  DW_CFA_def_cfa_offset: 56
  DW_CFA_offset: r3 (rbx) at cfa-56
  DW_CFA_advance_loc: 4 to 00000000000018dc
  DW_CFA_def_cfa_offset: 176
  DW_CFA_advance_loc2: 331 to 0000000000001a27
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 56
  DW_CFA_advance_loc: 1 to 0000000000001a28
  DW_CFA_def_cfa_offset: 48
  DW_CFA_advance_loc: 1 to 0000000000001a29
  DW_CFA_def_cfa_offset: 40
  DW_CFA_advance_loc: 2 to 0000000000001a2b
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc: 2 to 0000000000001a2d
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 2 to 0000000000001a2f
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 2 to 0000000000001a31
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 0000000000001a32
  DW_CFA_restore_state
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000001b0 000000000000001c 000001b4 FDE cie=00000000 pc=0000000000001a37..0000000000001a78
  DW_CFA_advance_loc: 13 to 0000000000001a44
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 17 to 0000000000001a55
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 0000000000001a56
  DW_CFA_restore_state
  DW_CFA_advance_loc: 28 to 0000000000001a72
  DW_CFA_def_cfa_offset: 8
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000001d0 000000000000001c 000001d4 FDE cie=00000000 pc=0000000000001a78..0000000000001ad4
  DW_CFA_advance_loc: 5 to 0000000000001a7d
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r3 (rbx) at cfa-16
  DW_CFA_advance_loc1: 72 to 0000000000001ac5
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 0000000000001ac6
  DW_CFA_restore_state
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000001f0 0000000000000018 000001f4 FDE cie=00000000 pc=0000000000001ad4..0000000000001b36
  DW_CFA_advance_loc: 5 to 0000000000001ad9
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 1 to 0000000000001ada
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 4 to 0000000000001ade
  DW_CFA_def_cfa_offset: 16
  DW_CFA_nop
  DW_CFA_nop

0000020c 0000000000000018 00000210 FDE cie=00000000 pc=0000000000001b36..0000000000001b63
  DW_CFA_advance_loc: 5 to 0000000000001b3b
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 1 to 0000000000001b3c
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 4 to 0000000000001b40
  DW_CFA_def_cfa_offset: 16
  DW_CFA_nop
  DW_CFA_nop

00000228 0000000000000010 0000022c FDE cie=00000000 pc=0000000000001b63..0000000000001b84
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

0000023c 0000000000000028 00000240 FDE cie=00000000 pc=0000000000001b84..0000000000001be4
  DW_CFA_advance_loc: 6 to 0000000000001b8a
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r12 (r12) at cfa-16
  DW_CFA_advance_loc: 1 to 0000000000001b8b
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r6 (rbp) at cfa-24
  DW_CFA_advance_loc: 1 to 0000000000001b8c
  DW_CFA_def_cfa_offset: 32
  DW_CFA_offset: r3 (rbx) at cfa-32
  DW_CFA_advance_loc1: 84 to 0000000000001be0
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 1 to 0000000000001be1
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 2 to 0000000000001be3
  DW_CFA_def_cfa_offset: 8
  DW_CFA_nop
  DW_CFA_nop

00000268 0000000000000014 0000026c FDE cie=00000000 pc=0000000000001be4..0000000000001c02
  DW_CFA_advance_loc: 8 to 0000000000001bec
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 21 to 0000000000001c01
  DW_CFA_def_cfa_offset: 8
  DW_CFA_nop

00000280 0000000000000010 00000284 FDE cie=00000000 pc=0000000000001c02..0000000000001c07
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000294 0000000000000024 00000298 FDE cie=00000000 pc=0000000000001c07..0000000000001c46
  DW_CFA_advance_loc: 5 to 0000000000001c0c
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r6 (rbp) at cfa-16
  DW_CFA_advance_loc: 1 to 0000000000001c0d
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r3 (rbx) at cfa-24
  DW_CFA_advance_loc: 4 to 0000000000001c11
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc: 50 to 0000000000001c43
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 1 to 0000000000001c44
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 1 to 0000000000001c45
  DW_CFA_def_cfa_offset: 8
  DW_CFA_nop

000002bc 0000000000000024 000002c0 FDE cie=00000000 pc=0000000000001c46..0000000000001c98
  DW_CFA_advance_loc: 5 to 0000000000001c4b
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r6 (rbp) at cfa-16
  DW_CFA_advance_loc: 1 to 0000000000001c4c
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r3 (rbx) at cfa-24
  DW_CFA_advance_loc: 4 to 0000000000001c50
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc1: 69 to 0000000000001c95
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 1 to 0000000000001c96
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 1 to 0000000000001c97
  DW_CFA_def_cfa_offset: 8

000002e4 0000000000000018 000002e8 FDE cie=00000000 pc=0000000000001c98..0000000000001cf0
  DW_CFA_advance_loc: 5 to 0000000000001c9d
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 1 to 0000000000001c9e
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 4 to 0000000000001ca2
  DW_CFA_def_cfa_offset: 16
  DW_CFA_nop
  DW_CFA_nop

00000300 0000000000000020 00000304 FDE cie=00000000 pc=0000000000001cf0..0000000000001d35
  DW_CFA_advance_loc: 8 to 0000000000001cf8
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 12 to 0000000000001d04
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 5 to 0000000000001d09
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc: 29 to 0000000000001d26
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 9 to 0000000000001d2f
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 0000000000001d30
  DW_CFA_restore_state
  DW_CFA_nop

00000324 0000000000000028 00000328 FDE cie=00000000 pc=0000000000001d35..0000000000001e89
  DW_CFA_advance_loc: 5 to 0000000000001d3a
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r6 (rbp) at cfa-16
  DW_CFA_advance_loc: 1 to 0000000000001d3b
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r3 (rbx) at cfa-24
  DW_CFA_advance_loc: 4 to 0000000000001d3f
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc1: 105 to 0000000000001da8
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 1 to 0000000000001da9
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 1 to 0000000000001daa
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 0000000000001dab
  DW_CFA_restore_state
  DW_CFA_nop

00000350 000000000000001c 00000354 FDE cie=00000000 pc=0000000000001e89..0000000000001fa5
  DW_CFA_advance_loc: 8 to 0000000000001e91
  DW_CFA_def_cfa_offset: 128
  DW_CFA_advance_loc1: 117 to 0000000000001f06
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 0000000000001f07
  DW_CFA_restore_state
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000370 0000000000000018 00000374 FDE cie=00000000 pc=0000000000001fa5..0000000000001fdb
  DW_CFA_advance_loc: 5 to 0000000000001faa
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 1 to 0000000000001fab
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 4 to 0000000000001faf
  DW_CFA_def_cfa_offset: 16
  DW_CFA_nop
  DW_CFA_nop

0000038c 000000000000003c 00000390 FDE cie=00000000 pc=0000000000001fdb..00000000000020a7
  DW_CFA_advance_loc: 2 to 0000000000001fdd
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r14 (r14) at cfa-16
  DW_CFA_advance_loc: 2 to 0000000000001fdf
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r13 (r13) at cfa-24
  DW_CFA_advance_loc: 2 to 0000000000001fe1
  DW_CFA_def_cfa_offset: 32
  DW_CFA_offset: r12 (r12) at cfa-32
  DW_CFA_advance_loc: 1 to 0000000000001fe2
  DW_CFA_def_cfa_offset: 40
  DW_CFA_offset: r6 (rbp) at cfa-40
  DW_CFA_advance_loc: 1 to 0000000000001fe3
  DW_CFA_def_cfa_offset: 48
  DW_CFA_offset: r3 (rbx) at cfa-48
  DW_CFA_advance_loc1: 179 to 0000000000002096
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 40
  DW_CFA_advance_loc: 1 to 0000000000002097
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc: 2 to 0000000000002099
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 2 to 000000000000209b
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 2 to 000000000000209d
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 000000000000209e
  DW_CFA_restore_state
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000003cc 0000000000000070 000003d0 FDE cie=00000000 pc=00000000000020a7..00000000000028ab
  DW_CFA_advance_loc: 6 to 00000000000020ad
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r15 (r15) at cfa-16
  DW_CFA_advance_loc: 2 to 00000000000020af
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r14 (r14) at cfa-24
  DW_CFA_advance_loc: 2 to 00000000000020b1
  DW_CFA_def_cfa_offset: 32
  DW_CFA_offset: r13 (r13) at cfa-32
  DW_CFA_advance_loc: 2 to 00000000000020b3
  DW_CFA_def_cfa_offset: 40
  DW_CFA_offset: r12 (r12) at cfa-40
  DW_CFA_advance_loc: 1 to 00000000000020b4
  DW_CFA_def_cfa_offset: 48
  DW_CFA_offset: r6 (rbp) at cfa-48
  DW_CFA_advance_loc: 1 to 00000000000020b5
  DW_CFA_def_cfa_offset: 56
  DW_CFA_offset: r3 (rbx) at cfa-56
  DW_CFA_advance_loc: 8 to 00000000000020bd
  DW_CFA_def_cfa: r11 (r11) ofs 41016
  DW_CFA_advance_loc: 17 to 00000000000020ce
  DW_CFA_def_cfa_register: r7 (rsp)
  DW_CFA_advance_loc: 4 to 00000000000020d2
  DW_CFA_def_cfa_offset: 41136
  DW_CFA_advance_loc2: 1251 to 00000000000025b5
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 56
  DW_CFA_advance_loc: 1 to 00000000000025b6
  DW_CFA_def_cfa_offset: 48
  DW_CFA_advance_loc: 1 to 00000000000025b7
  DW_CFA_def_cfa_offset: 40
  DW_CFA_advance_loc: 2 to 00000000000025b9
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc: 2 to 00000000000025bb
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 2 to 00000000000025bd
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 2 to 00000000000025bf
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 00000000000025c0
  DW_CFA_restore_state
  DW_CFA_advance_loc2: 363 to 000000000000272b
  DW_CFA_def_cfa_offset: 41144
  DW_CFA_advance_loc: 9 to 0000000000002734
  DW_CFA_def_cfa_offset: 41152
  DW_CFA_advance_loc: 4 to 0000000000002738
  DW_CFA_def_cfa_offset: 41160
  DW_CFA_advance_loc: 4 to 000000000000273c
  DW_CFA_def_cfa_offset: 41168
  DW_CFA_advance_loc: 44 to 0000000000002768
  DW_CFA_def_cfa_offset: 41136
  DW_CFA_nop
  DW_CFA_nop

00000440 0000000000000018 00000444 FDE cie=00000000 pc=00000000000028ab..00000000000028db
  DW_CFA_advance_loc: 10 to 00000000000028b5
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r3 (rbx) at cfa-16
  DW_CFA_advance_loc: 37 to 00000000000028da
  DW_CFA_def_cfa_offset: 8
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

0000045c 0000000000000030 00000460 FDE cie=00000000 pc=00000000000028db..0000000000002ad0
  DW_CFA_advance_loc: 6 to 00000000000028e1
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r12 (r12) at cfa-16
  DW_CFA_advance_loc: 1 to 00000000000028e2
  DW_CFA_def_cfa_offset: 24
  DW_CFA_offset: r6 (rbp) at cfa-24
  DW_CFA_advance_loc: 1 to 00000000000028e3
  DW_CFA_def_cfa_offset: 32
  DW_CFA_offset: r3 (rbx) at cfa-32
  DW_CFA_advance_loc: 4 to 00000000000028e7
  DW_CFA_def_cfa_offset: 64
  DW_CFA_advance_loc1: 243 to 00000000000029da
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc: 1 to 00000000000029db
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 1 to 00000000000029dc
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 2 to 00000000000029de
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 00000000000029df
  DW_CFA_restore_state
  DW_CFA_nop

00000490 0000000000000024 00000494 FDE cie=00000000 pc=0000000000002ad0..0000000000002b47
  DW_CFA_advance_loc: 5 to 0000000000002ad5
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r3 (rbx) at cfa-16
  DW_CFA_advance_loc: 29 to 0000000000002af2
  DW_CFA_remember_state
  DW_CFA_def_cfa_offset: 8
  DW_CFA_advance_loc: 1 to 0000000000002af3
  DW_CFA_restore_state
  DW_CFA_advance_loc: 40 to 0000000000002b1b
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 1 to 0000000000002b1c
  DW_CFA_def_cfa_offset: 32
  DW_CFA_advance_loc: 41 to 0000000000002b45
  DW_CFA_def_cfa_offset: 16
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

000004b8 ZERO terminator


Contents of the .debug_aranges section (loaded from bomb):

  Length:                   44
  Version:                  2
  Offset into .debug_info:  0x0
  Pointer Size:             8
  Segment Size:             0

    Address            Length
    0000000000001489 0000000000000122 
    0000000000000000 0000000000000000 

Contents of the .debug_info section (loaded from bomb):

  Compilation Unit @ offset 0x0:
   Length:        0x6db (32-bit)
   Version:       5
   Unit Type:     DW_UT_compile (1)
   Abbrev Offset: 0x0
   Pointer Size:  8
 <0><c>: Abbrev Number: 20 (DW_TAG_compile_unit)
    <d>   DW_AT_producer    : (indirect string, offset: 0x58): GNU C17 11.4.0 -mtune=generic -march=x86-64 -ggdb -O1 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
    <11>   DW_AT_language    : 29	(C11)
    <12>   DW_AT_name        : (indirect line string, offset: 0x2a): bomb.c
    <16>   DW_AT_comp_dir    : (indirect line string, offset: 0x0): /home/ygli/xjtu-ics-2023/lab2/bomblab/src
    <1a>   DW_AT_low_pc      : 0x1489
    <22>   DW_AT_high_pc     : 0x122
    <2a>   DW_AT_stmt_list   : 0x0
 <1><2e>: Abbrev Number: 9 (DW_TAG_typedef)
    <2f>   DW_AT_name        : (indirect string, offset: 0x23): size_t
    <33>   DW_AT_decl_file   : 3
    <34>   DW_AT_decl_line   : 209
    <35>   DW_AT_decl_column : 23
    <36>   DW_AT_type        : <0x3a>
 <1><3a>: Abbrev Number: 4 (DW_TAG_base_type)
    <3b>   DW_AT_byte_size   : 8
    <3c>   DW_AT_encoding    : 7	(unsigned)
    <3d>   DW_AT_name        : (indirect string, offset: 0x46): long unsigned int
 <1><41>: Abbrev Number: 4 (DW_TAG_base_type)
    <42>   DW_AT_byte_size   : 4
    <43>   DW_AT_encoding    : 7	(unsigned)
    <44>   DW_AT_name        : (indirect string, offset: 0x4b): unsigned int
 <1><48>: Abbrev Number: 21 (DW_TAG_pointer_type)
    <49>   DW_AT_byte_size   : 8
 <1><4a>: Abbrev Number: 4 (DW_TAG_base_type)
    <4b>   DW_AT_byte_size   : 1
    <4c>   DW_AT_encoding    : 8	(unsigned char)
    <4d>   DW_AT_name        : (indirect string, offset: 0x224): unsigned char
 <1><51>: Abbrev Number: 4 (DW_TAG_base_type)
    <52>   DW_AT_byte_size   : 2
    <53>   DW_AT_encoding    : 7	(unsigned)
    <54>   DW_AT_name        : (indirect string, offset: 0x1af): short unsigned int
 <1><58>: Abbrev Number: 4 (DW_TAG_base_type)
    <59>   DW_AT_byte_size   : 1
    <5a>   DW_AT_encoding    : 6	(signed char)
    <5b>   DW_AT_name        : (indirect string, offset: 0x226): signed char
 <1><5f>: Abbrev Number: 4 (DW_TAG_base_type)
    <60>   DW_AT_byte_size   : 2
    <61>   DW_AT_encoding    : 5	(signed)
    <62>   DW_AT_name        : (indirect string, offset: 0x232): short int
 <1><66>: Abbrev Number: 22 (DW_TAG_base_type)
    <67>   DW_AT_byte_size   : 4
    <68>   DW_AT_encoding    : 5	(signed)
    <69>   DW_AT_name        : int
 <1><6d>: Abbrev Number: 4 (DW_TAG_base_type)
    <6e>   DW_AT_byte_size   : 8
    <6f>   DW_AT_encoding    : 5	(signed)
    <70>   DW_AT_name        : (indirect string, offset: 0xfc): long int
 <1><74>: Abbrev Number: 9 (DW_TAG_typedef)
    <75>   DW_AT_name        : (indirect string, offset: 0x7): __off_t
    <79>   DW_AT_decl_file   : 4
    <7a>   DW_AT_decl_line   : 152
    <7b>   DW_AT_decl_column : 25
    <7c>   DW_AT_type        : <0x6d>
 <1><80>: Abbrev Number: 9 (DW_TAG_typedef)
    <81>   DW_AT_name        : (indirect string, offset: 0x264): __off64_t
    <85>   DW_AT_decl_file   : 4
    <86>   DW_AT_decl_line   : 153
    <87>   DW_AT_decl_column : 27
    <88>   DW_AT_type        : <0x6d>
 <1><8c>: Abbrev Number: 5 (DW_TAG_pointer_type)
    <8d>   DW_AT_byte_size   : 8
    <8d>   DW_AT_type        : <0x91>
 <1><91>: Abbrev Number: 4 (DW_TAG_base_type)
    <92>   DW_AT_byte_size   : 1
    <93>   DW_AT_encoding    : 6	(signed char)
    <94>   DW_AT_name        : (indirect string, offset: 0x22d): char
 <1><98>: Abbrev Number: 23 (DW_TAG_const_type)
    <99>   DW_AT_type        : <0x91>
 <1><9d>: Abbrev Number: 24 (DW_TAG_structure_type)
    <9e>   DW_AT_name        : (indirect string, offset: 0x20c): _IO_FILE
    <a2>   DW_AT_byte_size   : 216
    <a3>   DW_AT_decl_file   : 5
    <a4>   DW_AT_decl_line   : 49
    <a5>   DW_AT_decl_column : 8
    <a6>   DW_AT_sibling     : <0x207>
 <2><aa>: Abbrev Number: 1 (DW_TAG_member)
    <ab>   DW_AT_name        : (indirect string, offset: 0x128): _flags
    <af>   DW_AT_decl_file   : 5
    <af>   DW_AT_decl_line   : 51
    <b0>   DW_AT_decl_column : 7
    <b1>   DW_AT_type        : <0x66>
    <b5>   DW_AT_data_member_location: 0
 <2><b6>: Abbrev Number: 1 (DW_TAG_member)
    <b7>   DW_AT_name        : (indirect string, offset: 0xf): _IO_read_ptr
    <bb>   DW_AT_decl_file   : 5
    <bb>   DW_AT_decl_line   : 54
    <bc>   DW_AT_decl_column : 9
    <bd>   DW_AT_type        : <0x8c>
    <c1>   DW_AT_data_member_location: 8
 <2><c2>: Abbrev Number: 1 (DW_TAG_member)
    <c3>   DW_AT_name        : (indirect string, offset: 0x11b): _IO_read_end
    <c7>   DW_AT_decl_file   : 5
    <c7>   DW_AT_decl_line   : 55
    <c8>   DW_AT_decl_column : 9
    <c9>   DW_AT_type        : <0x8c>
    <cd>   DW_AT_data_member_location: 16
 <2><ce>: Abbrev Number: 1 (DW_TAG_member)
    <cf>   DW_AT_name        : (indirect string, offset: 0x26e): _IO_read_base
    <d3>   DW_AT_decl_file   : 5
    <d3>   DW_AT_decl_line   : 56
    <d4>   DW_AT_decl_column : 9
    <d5>   DW_AT_type        : <0x8c>
    <d9>   DW_AT_data_member_location: 24
 <2><da>: Abbrev Number: 1 (DW_TAG_member)
    <db>   DW_AT_name        : (indirect string, offset: 0x2fc): _IO_write_base
    <df>   DW_AT_decl_file   : 5
    <df>   DW_AT_decl_line   : 57
    <e0>   DW_AT_decl_column : 9
    <e1>   DW_AT_type        : <0x8c>
    <e5>   DW_AT_data_member_location: 32
 <2><e6>: Abbrev Number: 1 (DW_TAG_member)
    <e7>   DW_AT_name        : (indirect string, offset: 0x1a1): _IO_write_ptr
    <eb>   DW_AT_decl_file   : 5
    <eb>   DW_AT_decl_line   : 58
    <ec>   DW_AT_decl_column : 9
    <ed>   DW_AT_type        : <0x8c>
    <f1>   DW_AT_data_member_location: 40
 <2><f2>: Abbrev Number: 1 (DW_TAG_member)
    <f3>   DW_AT_name        : (indirect string, offset: 0x1f3): _IO_write_end
    <f7>   DW_AT_decl_file   : 5
    <f7>   DW_AT_decl_line   : 59
    <f8>   DW_AT_decl_column : 9
    <f9>   DW_AT_type        : <0x8c>
    <fd>   DW_AT_data_member_location: 48
 <2><fe>: Abbrev Number: 1 (DW_TAG_member)
    <ff>   DW_AT_name        : (indirect string, offset: 0x34): _IO_buf_base
    <103>   DW_AT_decl_file   : 5
    <103>   DW_AT_decl_line   : 60
    <104>   DW_AT_decl_column : 9
    <105>   DW_AT_type        : <0x8c>
    <109>   DW_AT_data_member_location: 56
 <2><10a>: Abbrev Number: 1 (DW_TAG_member)
    <10b>   DW_AT_name        : (indirect string, offset: 0x12f): _IO_buf_end
    <10f>   DW_AT_decl_file   : 5
    <10f>   DW_AT_decl_line   : 61
    <110>   DW_AT_decl_column : 9
    <111>   DW_AT_type        : <0x8c>
    <115>   DW_AT_data_member_location: 64
 <2><116>: Abbrev Number: 1 (DW_TAG_member)
    <117>   DW_AT_name        : (indirect string, offset: 0x1c2): _IO_save_base
    <11b>   DW_AT_decl_file   : 5
    <11b>   DW_AT_decl_line   : 64
    <11c>   DW_AT_decl_column : 9
    <11d>   DW_AT_type        : <0x8c>
    <121>   DW_AT_data_member_location: 72
 <2><122>: Abbrev Number: 1 (DW_TAG_member)
    <123>   DW_AT_name        : (indirect string, offset: 0x2d4): _IO_backup_base
    <127>   DW_AT_decl_file   : 5
    <127>   DW_AT_decl_line   : 65
    <128>   DW_AT_decl_column : 9
    <129>   DW_AT_type        : <0x8c>
    <12d>   DW_AT_data_member_location: 80
 <2><12e>: Abbrev Number: 1 (DW_TAG_member)
    <12f>   DW_AT_name        : (indirect string, offset: 0x27c): _IO_save_end
    <133>   DW_AT_decl_file   : 5
    <133>   DW_AT_decl_line   : 66
    <134>   DW_AT_decl_column : 9
    <135>   DW_AT_type        : <0x8c>
    <139>   DW_AT_data_member_location: 88
 <2><13a>: Abbrev Number: 1 (DW_TAG_member)
    <13b>   DW_AT_name        : (indirect string, offset: 0x21b): _markers
    <13f>   DW_AT_decl_file   : 5
    <13f>   DW_AT_decl_line   : 68
    <140>   DW_AT_decl_column : 22
    <141>   DW_AT_type        : <0x220>
    <145>   DW_AT_data_member_location: 96
 <2><146>: Abbrev Number: 1 (DW_TAG_member)
    <147>   DW_AT_name        : (indirect string, offset: 0x1c): _chain
    <14b>   DW_AT_decl_file   : 5
    <14b>   DW_AT_decl_line   : 70
    <14c>   DW_AT_decl_column : 20
    <14d>   DW_AT_type        : <0x225>
    <151>   DW_AT_data_member_location: 104
 <2><152>: Abbrev Number: 1 (DW_TAG_member)
    <153>   DW_AT_name        : (indirect string, offset: 0x113): _fileno
    <157>   DW_AT_decl_file   : 5
    <157>   DW_AT_decl_line   : 72
    <158>   DW_AT_decl_column : 7
    <159>   DW_AT_type        : <0x66>
    <15d>   DW_AT_data_member_location: 112
 <2><15e>: Abbrev Number: 1 (DW_TAG_member)
    <15f>   DW_AT_name        : (indirect string, offset: 0x1d6): _flags2
    <163>   DW_AT_decl_file   : 5
    <163>   DW_AT_decl_line   : 73
    <164>   DW_AT_decl_column : 7
    <165>   DW_AT_type        : <0x66>
    <169>   DW_AT_data_member_location: 116
 <2><16a>: Abbrev Number: 1 (DW_TAG_member)
    <16b>   DW_AT_name        : (indirect string, offset: 0x160): _old_offset
    <16f>   DW_AT_decl_file   : 5
    <16f>   DW_AT_decl_line   : 74
    <170>   DW_AT_decl_column : 11
    <171>   DW_AT_type        : <0x74>
    <175>   DW_AT_data_member_location: 120
 <2><176>: Abbrev Number: 1 (DW_TAG_member)
    <177>   DW_AT_name        : (indirect string, offset: 0x13b): _cur_column
    <17b>   DW_AT_decl_file   : 5
    <17b>   DW_AT_decl_line   : 77
    <17c>   DW_AT_decl_column : 18
    <17d>   DW_AT_type        : <0x51>
    <181>   DW_AT_data_member_location: 128
 <2><182>: Abbrev Number: 1 (DW_TAG_member)
    <183>   DW_AT_name        : (indirect string, offset: 0x24a): _vtable_offset
    <187>   DW_AT_decl_file   : 5
    <187>   DW_AT_decl_line   : 78
    <188>   DW_AT_decl_column : 15
    <189>   DW_AT_type        : <0x58>
    <18d>   DW_AT_data_member_location: 130
 <2><18e>: Abbrev Number: 1 (DW_TAG_member)
    <18f>   DW_AT_name        : (indirect string, offset: 0x2a): _shortbuf
    <193>   DW_AT_decl_file   : 5
    <193>   DW_AT_decl_line   : 79
    <194>   DW_AT_decl_column : 8
    <195>   DW_AT_type        : <0x22a>
    <199>   DW_AT_data_member_location: 131
 <2><19a>: Abbrev Number: 1 (DW_TAG_member)
    <19b>   DW_AT_name        : (indirect string, offset: 0x1d0): _lock
    <19f>   DW_AT_decl_file   : 5
    <19f>   DW_AT_decl_line   : 81
    <1a0>   DW_AT_decl_column : 15
    <1a1>   DW_AT_type        : <0x23a>
    <1a5>   DW_AT_data_member_location: 136
 <2><1a6>: Abbrev Number: 1 (DW_TAG_member)
    <1a7>   DW_AT_name        : (indirect string, offset: 0x164): _offset
    <1ab>   DW_AT_decl_file   : 5
    <1ab>   DW_AT_decl_line   : 89
    <1ac>   DW_AT_decl_column : 13
    <1ad>   DW_AT_type        : <0x80>
    <1b1>   DW_AT_data_member_location: 144
 <2><1b2>: Abbrev Number: 1 (DW_TAG_member)
    <1b3>   DW_AT_name        : (indirect string, offset: 0x14a): _codecvt
    <1b7>   DW_AT_decl_file   : 5
    <1b7>   DW_AT_decl_line   : 91
    <1b8>   DW_AT_decl_column : 23
    <1b9>   DW_AT_type        : <0x244>
    <1bd>   DW_AT_data_member_location: 152
 <2><1be>: Abbrev Number: 1 (DW_TAG_member)
    <1bf>   DW_AT_name        : (indirect string, offset: 0x23f): _wide_data
    <1c3>   DW_AT_decl_file   : 5
    <1c3>   DW_AT_decl_line   : 92
    <1c4>   DW_AT_decl_column : 25
    <1c5>   DW_AT_type        : <0x24e>
    <1c9>   DW_AT_data_member_location: 160
 <2><1ca>: Abbrev Number: 1 (DW_TAG_member)
    <1cb>   DW_AT_name        : (indirect string, offset: 0x2e9): _freeres_list
    <1cf>   DW_AT_decl_file   : 5
    <1cf>   DW_AT_decl_line   : 93
    <1d0>   DW_AT_decl_column : 20
    <1d1>   DW_AT_type        : <0x225>
    <1d5>   DW_AT_data_member_location: 168
 <2><1d6>: Abbrev Number: 1 (DW_TAG_member)
    <1d7>   DW_AT_name        : (indirect string, offset: 0x194): _freeres_buf
    <1db>   DW_AT_decl_file   : 5
    <1db>   DW_AT_decl_line   : 94
    <1dc>   DW_AT_decl_column : 9
    <1dd>   DW_AT_type        : <0x48>
    <1e1>   DW_AT_data_member_location: 176
 <2><1e2>: Abbrev Number: 1 (DW_TAG_member)
    <1e3>   DW_AT_name        : (indirect string, offset: 0x28f): __pad5
    <1e7>   DW_AT_decl_file   : 5
    <1e7>   DW_AT_decl_line   : 95
    <1e8>   DW_AT_decl_column : 10
    <1e9>   DW_AT_type        : <0x2e>
    <1ed>   DW_AT_data_member_location: 184
 <2><1ee>: Abbrev Number: 1 (DW_TAG_member)
    <1ef>   DW_AT_name        : (indirect string, offset: 0x1de): _mode
    <1f3>   DW_AT_decl_file   : 5
    <1f3>   DW_AT_decl_line   : 96
    <1f4>   DW_AT_decl_column : 7
    <1f5>   DW_AT_type        : <0x66>
    <1f9>   DW_AT_data_member_location: 192
 <2><1fa>: Abbrev Number: 1 (DW_TAG_member)
    <1fb>   DW_AT_name        : (indirect string, offset: 0x296): _unused2
    <1ff>   DW_AT_decl_file   : 5
    <1ff>   DW_AT_decl_line   : 98
    <200>   DW_AT_decl_column : 8
    <201>   DW_AT_type        : <0x253>
    <205>   DW_AT_data_member_location: 196
 <2><206>: Abbrev Number: 0
 <1><207>: Abbrev Number: 9 (DW_TAG_typedef)
    <208>   DW_AT_name        : (indirect string, offset: 0x210): FILE
    <20c>   DW_AT_decl_file   : 6
    <20d>   DW_AT_decl_line   : 7
    <20e>   DW_AT_decl_column : 25
    <20f>   DW_AT_type        : <0x9d>
 <1><213>: Abbrev Number: 25 (DW_TAG_typedef)
    <214>   DW_AT_name        : (indirect string, offset: 0x201): _IO_lock_t
    <218>   DW_AT_decl_file   : 5
    <219>   DW_AT_decl_line   : 43
    <21a>   DW_AT_decl_column : 14
 <1><21b>: Abbrev Number: 12 (DW_TAG_structure_type)
    <21c>   DW_AT_name        : (indirect string, offset: 0x183): _IO_marker
    <220>   DW_AT_declaration : 1
 <1><220>: Abbrev Number: 5 (DW_TAG_pointer_type)
    <221>   DW_AT_byte_size   : 8
    <221>   DW_AT_type        : <0x21b>
 <1><225>: Abbrev Number: 5 (DW_TAG_pointer_type)
    <226>   DW_AT_byte_size   : 8
    <226>   DW_AT_type        : <0x9d>
 <1><22a>: Abbrev Number: 13 (DW_TAG_array_type)
    <22b>   DW_AT_type        : <0x91>
    <22f>   DW_AT_sibling     : <0x23a>
 <2><233>: Abbrev Number: 14 (DW_TAG_subrange_type)
    <234>   DW_AT_type        : <0x3a>
    <238>   DW_AT_upper_bound : 0
 <2><239>: Abbrev Number: 0
 <1><23a>: Abbrev Number: 5 (DW_TAG_pointer_type)
    <23b>   DW_AT_byte_size   : 8
    <23b>   DW_AT_type        : <0x213>
 <1><23f>: Abbrev Number: 12 (DW_TAG_structure_type)
    <240>   DW_AT_name        : (indirect string, offset: 0x147): _IO_codecvt
    <244>   DW_AT_declaration : 1
 <1><244>: Abbrev Number: 5 (DW_TAG_pointer_type)
    <245>   DW_AT_byte_size   : 8
    <245>   DW_AT_type        : <0x23f>
 <1><249>: Abbrev Number: 12 (DW_TAG_structure_type)
    <24a>   DW_AT_name        : (indirect string, offset: 0x23c): _IO_wide_data
    <24e>   DW_AT_declaration : 1
 <1><24e>: Abbrev Number: 5 (DW_TAG_pointer_type)
    <24f>   DW_AT_byte_size   : 8
    <24f>   DW_AT_type        : <0x249>
 <1><253>: Abbrev Number: 13 (DW_TAG_array_type)
    <254>   DW_AT_type        : <0x91>
    <258>   DW_AT_sibling     : <0x263>
 <2><25c>: Abbrev Number: 14 (DW_TAG_subrange_type)
    <25d>   DW_AT_type        : <0x3a>
    <261>   DW_AT_upper_bound : 19
 <2><262>: Abbrev Number: 0
 <1><263>: Abbrev Number: 26 (DW_TAG_variable)
    <264>   DW_AT_name        : (indirect string, offset: 0x18e): stdin
    <268>   DW_AT_decl_file   : 7
    <269>   DW_AT_decl_line   : 143
    <26a>   DW_AT_decl_column : 14
    <26b>   DW_AT_type        : <0x26f>
    <26f>   DW_AT_external    : 1
    <26f>   DW_AT_declaration : 1
 <1><26f>: Abbrev Number: 5 (DW_TAG_pointer_type)
    <270>   DW_AT_byte_size   : 8
    <270>   DW_AT_type        : <0x207>
 <1><274>: Abbrev Number: 4 (DW_TAG_base_type)
    <275>   DW_AT_byte_size   : 8
    <276>   DW_AT_encoding    : 5	(signed)
    <277>   DW_AT_name        : (indirect string, offset: 0xf7): long long int
 <1><27b>: Abbrev Number: 4 (DW_TAG_base_type)
    <27c>   DW_AT_byte_size   : 8
    <27d>   DW_AT_encoding    : 7	(unsigned)
    <27e>   DW_AT_name        : (indirect string, offset: 0x41): long long unsigned int
 <1><282>: Abbrev Number: 27 (DW_TAG_variable)
    <283>   DW_AT_name        : (indirect string, offset: 0x16c): infile
    <287>   DW_AT_decl_file   : 1
    <288>   DW_AT_decl_line   : 34
    <289>   DW_AT_decl_column : 7
    <28a>   DW_AT_type        : <0x26f>
    <28e>   DW_AT_external    : 1
    <28e>   DW_AT_location    : 9 byte block: 3 90 56 0 0 0 0 0 0 	(DW_OP_addr: 5690)
 <1><298>: Abbrev Number: 28 (DW_TAG_subprogram)
    <299>   DW_AT_external    : 1
    <299>   DW_AT_name        : (indirect string, offset: 0x153): __printf_chk
    <29d>   DW_AT_decl_file   : 2
    <29e>   DW_AT_decl_line   : 95
    <29f>   DW_AT_decl_column : 12
    <2a0>   DW_AT_prototyped  : 1
    <2a0>   DW_AT_type        : <0x66>
    <2a4>   DW_AT_declaration : 1
    <2a4>   DW_AT_sibling     : <0x2b4>
 <2><2a8>: Abbrev Number: 3 (DW_TAG_formal_parameter)
    <2a9>   DW_AT_type        : <0x66>
 <2><2ad>: Abbrev Number: 3 (DW_TAG_formal_parameter)
    <2ae>   DW_AT_type        : <0x2b4>
 <2><2b2>: Abbrev Number: 15 (DW_TAG_unspecified_parameters)
 <2><2b3>: Abbrev Number: 0
 <1><2b4>: Abbrev Number: 5 (DW_TAG_pointer_type)
    <2b5>   DW_AT_byte_size   : 8
    <2b5>   DW_AT_type        : <0x98>
 <1><2b9>: Abbrev Number: 29 (DW_TAG_restrict_type)
    <2ba>   DW_AT_type        : <0x2b4>
 <1><2be>: Abbrev Number: 7 (DW_TAG_subprogram)
    <2bf>   DW_AT_external    : 1
    <2bf>   DW_AT_name        : (indirect string, offset: 0x2cc): phase_6
    <2c3>   DW_AT_decl_file   : 8
    <2c3>   DW_AT_decl_line   : 9
    <2c4>   DW_AT_decl_column : 13
    <2c4>   DW_AT_prototyped  : 1
    <2c4>   DW_AT_declaration : 1
    <2c4>   DW_AT_sibling     : <0x2ce>
 <2><2c8>: Abbrev Number: 3 (DW_TAG_formal_parameter)
    <2c9>   DW_AT_type        : <0x8c>
 <2><2cd>: Abbrev Number: 0
 <1><2ce>: Abbrev Number: 7 (DW_TAG_subprogram)
    <2cf>   DW_AT_external    : 1
    <2cf>   DW_AT_name        : (indirect string, offset: 0x2c4): phase_5
    <2d3>   DW_AT_decl_file   : 8
    <2d3>   DW_AT_decl_line   : 8
    <2d4>   DW_AT_decl_column : 13
    <2d4>   DW_AT_prototyped  : 1
    <2d4>   DW_AT_declaration : 1
    <2d4>   DW_AT_sibling     : <0x2de>
 <2><2d8>: Abbrev Number: 3 (DW_TAG_formal_parameter)
    <2d9>   DW_AT_type        : <0x8c>
 <2><2dd>: Abbrev Number: 0
 <1><2de>: Abbrev Number: 7 (DW_TAG_subprogram)
    <2df>   DW_AT_external    : 1
    <2df>   DW_AT_name        : (indirect string, offset: 0x2bc): phase_4
    <2e3>   DW_AT_decl_file   : 8
    <2e3>   DW_AT_decl_line   : 7
    <2e4>   DW_AT_decl_column : 13
    <2e4>   DW_AT_prototyped  : 1
    <2e4>   DW_AT_declaration : 1
    <2e4>   DW_AT_sibling     : <0x2ee>
 <2><2e8>: Abbrev Number: 3 (DW_TAG_formal_parameter)
    <2e9>   DW_AT_type        : <0x8c>
 <2><2ed>: Abbrev Number: 0
 <1><2ee>: Abbrev Number: 7 (DW_TAG_subprogram)
    <2ef>   DW_AT_external    : 1
    <2ef>   DW_AT_name        : (indirect string, offset: 0x2b4): phase_3
    <2f3>   DW_AT_decl_file   : 8
    <2f3>   DW_AT_decl_line   : 6
    <2f4>   DW_AT_decl_column : 13
    <2f4>   DW_AT_prototyped  : 1
    <2f4>   DW_AT_declaration : 1
    <2f4>   DW_AT_sibling     : <0x2fe>
 <2><2f8>: Abbrev Number: 3 (DW_TAG_formal_parameter)
    <2f9>   DW_AT_type        : <0x8c>
 <2><2fd>: Abbrev Number: 0
 <1><2fe>: Abbrev Number: 7 (DW_TAG_subprogram)
    <2ff>   DW_AT_external    : 1
    <2ff>   DW_AT_name        : (indirect string, offset: 0x2ac): phase_2
    <303>   DW_AT_decl_file   : 8
    <303>   DW_AT_decl_line   : 5
    <304>   DW_AT_decl_column : 13
    <304>   DW_AT_prototyped  : 1
    <304>   DW_AT_declaration : 1
    <304>   DW_AT_sibling     : <0x30e>
 <2><308>: Abbrev Number: 3 (DW_TAG_formal_parameter)
    <309>   DW_AT_type        : <0x8c>
 <2><30d>: Abbrev Number: 0
 <1><30e>: Abbrev Number: 16 (DW_TAG_subprogram)
    <30f>   DW_AT_external    : 1
    <30f>   DW_AT_name        : (indirect string, offset: 0x105): phase_defused
    <313>   DW_AT_decl_file   : 9
    <313>   DW_AT_decl_line   : 12
    <314>   DW_AT_decl_column : 6
    <314>   DW_AT_prototyped  : 1
    <314>   DW_AT_declaration : 1
 <1><314>: Abbrev Number: 7 (DW_TAG_subprogram)
    <315>   DW_AT_external    : 1
    <315>   DW_AT_name        : (indirect string, offset: 0x2a4): phase_1
    <319>   DW_AT_decl_file   : 8
    <319>   DW_AT_decl_line   : 4
    <31a>   DW_AT_decl_column : 13
    <31a>   DW_AT_prototyped  : 1
    <31a>   DW_AT_declaration : 1
    <31a>   DW_AT_sibling     : <0x324>
 <2><31e>: Abbrev Number: 3 (DW_TAG_formal_parameter)
    <31f>   DW_AT_type        : <0x8c>
 <2><323>: Abbrev Number: 0
 <1><324>: Abbrev Number: 30 (DW_TAG_subprogram)
    <325>   DW_AT_external    : 1
    <325>   DW_AT_name        : (indirect string, offset: 0xed): read_line
    <329>   DW_AT_decl_file   : 9
    <32a>   DW_AT_decl_line   : 8
    <32b>   DW_AT_decl_column : 7
    <32c>   DW_AT_prototyped  : 1
    <32c>   DW_AT_type        : <0x8c>
    <330>   DW_AT_declaration : 1
 <1><330>: Abbrev Number: 16 (DW_TAG_subprogram)
    <331>   DW_AT_external    : 1
    <331>   DW_AT_name        : (indirect string, offset: 0x173): initialize_bomb
    <335>   DW_AT_decl_file   : 9
    <335>   DW_AT_decl_line   : 9
    <336>   DW_AT_decl_column : 6
    <336>   DW_AT_prototyped  : 1
    <336>   DW_AT_declaration : 1
 <1><336>: Abbrev Number: 31 (DW_TAG_subprogram)
    <337>   DW_AT_external    : 1
    <337>   DW_AT_name        : (indirect string, offset: 0x259): exit
    <33b>   DW_AT_decl_file   : 10
    <33c>   DW_AT_decl_line   : 624
    <33e>   DW_AT_decl_column : 13
    <33f>   DW_AT_prototyped  : 1
    <33f>   DW_AT_noreturn    : 1
    <33f>   DW_AT_declaration : 1
    <33f>   DW_AT_sibling     : <0x349>
 <2><343>: Abbrev Number: 3 (DW_TAG_formal_parameter)
    <344>   DW_AT_type        : <0x66>
 <2><348>: Abbrev Number: 0
 <1><349>: Abbrev Number: 32 (DW_TAG_subprogram)
    <34a>   DW_AT_external    : 1
    <34a>   DW_AT_name        : (indirect string, offset: 0x215): fopen
    <34e>   DW_AT_decl_file   : 7
    <34f>   DW_AT_decl_line   : 258
    <351>   DW_AT_decl_column : 14
    <352>   DW_AT_prototyped  : 1
    <352>   DW_AT_type        : <0x26f>
    <356>   DW_AT_declaration : 1
    <356>   DW_AT_sibling     : <0x365>
 <2><35a>: Abbrev Number: 3 (DW_TAG_formal_parameter)
    <35b>   DW_AT_type        : <0x2b9>
 <2><35f>: Abbrev Number: 3 (DW_TAG_formal_parameter)
    <360>   DW_AT_type        : <0x2b9>
 <2><364>: Abbrev Number: 0
 <1><365>: Abbrev Number: 33 (DW_TAG_subprogram)
    <366>   DW_AT_external    : 1
    <366>   DW_AT_name        : (indirect string, offset: 0x2f7): main
    <36a>   DW_AT_decl_file   : 1
    <36b>   DW_AT_decl_line   : 36
    <36c>   DW_AT_decl_column : 5
    <36d>   DW_AT_prototyped  : 1
    <36d>   DW_AT_type        : <0x66>
    <371>   DW_AT_low_pc      : 0x1489
    <379>   DW_AT_high_pc     : 0x122
    <381>   DW_AT_frame_base  : 1 byte block: 9c 	(DW_OP_call_frame_cfa)
    <383>   DW_AT_call_all_calls: 1
    <383>   DW_AT_sibling     : <0x63e>
 <2><387>: Abbrev Number: 17 (DW_TAG_formal_parameter)
    <388>   DW_AT_name        : (indirect string, offset: 0x2e4): argc
    <38c>   DW_AT_decl_file   : 1
    <38c>   DW_AT_decl_line   : 36
    <38c>   DW_AT_decl_column : 14
    <38d>   DW_AT_type        : <0x66>
    <391>   DW_AT_location    : 0x18 (location list)
    <395>   DW_AT_GNU_locviews: 0xc
 <2><399>: Abbrev Number: 17 (DW_TAG_formal_parameter)
    <39a>   DW_AT_name        : (indirect string, offset: 0x29f): argv
    <39e>   DW_AT_decl_file   : 1
    <39e>   DW_AT_decl_line   : 36
    <39e>   DW_AT_decl_column : 26
    <39f>   DW_AT_type        : <0x63e>
    <3a3>   DW_AT_location    : 0x53 (location list)
    <3a7>   DW_AT_GNU_locviews: 0x49
 <2><3ab>: Abbrev Number: 34 (DW_TAG_variable)
    <3ac>   DW_AT_name        : (indirect string, offset: 0x25e): input
    <3b0>   DW_AT_decl_file   : 1
    <3b1>   DW_AT_decl_line   : 38
    <3b2>   DW_AT_decl_column : 11
    <3b3>   DW_AT_type        : <0x8c>
    <3b7>   DW_AT_location    : 0x81 (location list)
    <3bb>   DW_AT_GNU_locviews: 0x75
 <2><3bf>: Abbrev Number: 10 (DW_TAG_inlined_subroutine)
    <3c0>   DW_AT_abstract_origin: <0x643>
    <3c4>   DW_AT_entry_pc    : 0x14c8
    <3cc>   DW_AT_GNU_entry_view: 1
    <3cd>   DW_AT_low_pc      : 0x14c8
    <3d5>   DW_AT_high_pc     : 0xc
    <3dd>   DW_AT_call_file   : 1
    <3dd>   DW_AT_call_line   : 69
    <3de>   DW_AT_call_column : 5
    <3df>   DW_AT_sibling     : <0x40c>
 <3><3e3>: Abbrev Number: 11 (DW_TAG_formal_parameter)
    <3e4>   DW_AT_abstract_origin: <0x654>
    <3e8>   DW_AT_location    : 0xaa (location list)
    <3ec>   DW_AT_GNU_locviews: 0xa8
 <3><3f0>: Abbrev Number: 8 (DW_TAG_call_site)
    <3f1>   DW_AT_call_return_pc: 0x14d4
    <3f9>   DW_AT_call_origin : <0x6a2>
 <4><3fd>: Abbrev Number: 6 (DW_TAG_call_site_parameter)
    <3fe>   DW_AT_location    : 1 byte block: 55 	(DW_OP_reg5 (rdi))
    <400>   DW_AT_call_value  : 9 byte block: 3 40 30 0 0 0 0 0 0 	(DW_OP_addr: 3040)
 <4><40a>: Abbrev Number: 0
 <3><40b>: Abbrev Number: 0
 <2><40c>: Abbrev Number: 10 (DW_TAG_inlined_subroutine)
    <40d>   DW_AT_abstract_origin: <0x643>
    <411>   DW_AT_entry_pc    : 0x14d4
    <419>   DW_AT_GNU_entry_view: 2
    <41a>   DW_AT_low_pc      : 0x14d4
    <422>   DW_AT_high_pc     : 0xc
    <42a>   DW_AT_call_file   : 1
    <42a>   DW_AT_call_line   : 70
    <42b>   DW_AT_call_column : 5
    <42c>   DW_AT_sibling     : <0x459>
 <3><430>: Abbrev Number: 11 (DW_TAG_formal_parameter)
    <431>   DW_AT_abstract_origin: <0x654>
    <435>   DW_AT_location    : 0xb7 (location list)
    <439>   DW_AT_GNU_locviews: 0xb5
 <3><43d>: Abbrev Number: 8 (DW_TAG_call_site)
    <43e>   DW_AT_call_return_pc: 0x14e0
    <446>   DW_AT_call_origin : <0x6a2>
 <4><44a>: Abbrev Number: 6 (DW_TAG_call_site_parameter)
    <44b>   DW_AT_location    : 1 byte block: 55 	(DW_OP_reg5 (rdi))
    <44d>   DW_AT_call_value  : 9 byte block: 3 80 30 0 0 0 0 0 0 	(DW_OP_addr: 3080)
 <4><457>: Abbrev Number: 0
 <3><458>: Abbrev Number: 0
 <2><459>: Abbrev Number: 10 (DW_TAG_inlined_subroutine)
    <45a>   DW_AT_abstract_origin: <0x643>
    <45e>   DW_AT_entry_pc    : 0x1566
    <466>   DW_AT_GNU_entry_view: 1
    <467>   DW_AT_low_pc      : 0x1566
    <46f>   DW_AT_high_pc     : 0x18
    <477>   DW_AT_call_file   : 1
    <477>   DW_AT_call_line   : 55
    <478>   DW_AT_call_column : 6
    <479>   DW_AT_sibling     : <0x4ab>
 <3><47d>: Abbrev Number: 11 (DW_TAG_formal_parameter)
    <47e>   DW_AT_abstract_origin: <0x654>
    <482>   DW_AT_location    : 0xc4 (location list)
    <486>   DW_AT_GNU_locviews: 0xc2
 <3><48a>: Abbrev Number: 8 (DW_TAG_call_site)
    <48b>   DW_AT_call_return_pc: 0x157e
    <493>   DW_AT_call_origin : <0x298>
 <4><497>: Abbrev Number: 6 (DW_TAG_call_site_parameter)
    <498>   DW_AT_location    : 1 byte block: 55 	(DW_OP_reg5 (rdi))
    <49a>   DW_AT_call_value  : 1 byte block: 31 	(DW_OP_lit1)
 <4><49c>: Abbrev Number: 6 (DW_TAG_call_site_parameter)
    <49d>   DW_AT_location    : 1 byte block: 54 	(DW_OP_reg4 (rsi))
    <49f>   DW_AT_call_value  : 9 byte block: 3 6 30 0 0 0 0 0 0 	(DW_OP_addr: 3006)
 <4><4a9>: Abbrev Number: 0
 <3><4aa>: Abbrev Number: 0
 <2><4ab>: Abbrev Number: 10 (DW_TAG_inlined_subroutine)
    <4ac>   DW_AT_abstract_origin: <0x643>
    <4b0>   DW_AT_entry_pc    : 0x1588
    <4b8>   DW_AT_GNU_entry_view: 1
    <4b9>   DW_AT_low_pc      : 0x1588
    <4c1>   DW_AT_high_pc     : 0x19
    <4c9>   DW_AT_call_file   : 1
    <4c9>   DW_AT_call_line   : 62
    <4ca>   DW_AT_call_column : 2
    <4cb>   DW_AT_sibling     : <0x4fd>
 <3><4cf>: Abbrev Number: 11 (DW_TAG_formal_parameter)
    <4d0>   DW_AT_abstract_origin: <0x654>
    <4d4>   DW_AT_location    : 0xd7 (location list)
    <4d8>   DW_AT_GNU_locviews: 0xd5
 <3><4dc>: Abbrev Number: 8 (DW_TAG_call_site)
    <4dd>   DW_AT_call_return_pc: 0x15a1
    <4e5>   DW_AT_call_origin : <0x298>
 <4><4e9>: Abbrev Number: 6 (DW_TAG_call_site_parameter)
    <4ea>   DW_AT_location    : 1 byte block: 55 	(DW_OP_reg5 (rdi))
    <4ec>   DW_AT_call_value  : 1 byte block: 31 	(DW_OP_lit1)
 <4><4ee>: Abbrev Number: 6 (DW_TAG_call_site_parameter)
    <4ef>   DW_AT_location    : 1 byte block: 54 	(DW_OP_reg4 (rsi))
    <4f1>   DW_AT_call_value  : 9 byte block: 3 23 30 0 0 0 0 0 0 	(DW_OP_addr: 3023)
 <4><4fb>: Abbrev Number: 0
 <3><4fc>: Abbrev Number: 0
 <2><4fd>: Abbrev Number: 18 (DW_TAG_call_site)
    <4fe>   DW_AT_call_return_pc: 0x14b3
    <506>   DW_AT_call_origin : <0x349>
    <50a>   DW_AT_sibling     : <0x51c>
 <3><50e>: Abbrev Number: 6 (DW_TAG_call_site_parameter)
    <50f>   DW_AT_location    : 1 byte block: 54 	(DW_OP_reg4 (rsi))
    <511>   DW_AT_call_value  : 9 byte block: 3 4 30 0 0 0 0 0 0 	(DW_OP_addr: 3004)
 <3><51b>: Abbrev Number: 0
 <2><51c>: Abbrev Number: 2 (DW_TAG_call_site)
    <51d>   DW_AT_call_return_pc: 0x14c8
    <525>   DW_AT_call_origin : <0x330>
 <2><529>: Abbrev Number: 2 (DW_TAG_call_site)
    <52a>   DW_AT_call_return_pc: 0x14e5
    <532>   DW_AT_call_origin : <0x324>
 <2><536>: Abbrev Number: 2 (DW_TAG_call_site)
    <537>   DW_AT_call_return_pc: 0x14ed
    <53f>   DW_AT_call_origin : <0x314>
 <2><543>: Abbrev Number: 2 (DW_TAG_call_site)
    <544>   DW_AT_call_return_pc: 0x14f2
    <54c>   DW_AT_call_origin : <0x30e>
 <2><550>: Abbrev Number: 2 (DW_TAG_call_site)
    <551>   DW_AT_call_return_pc: 0x14f7
    <559>   DW_AT_call_origin : <0x324>
 <2><55d>: Abbrev Number: 2 (DW_TAG_call_site)
    <55e>   DW_AT_call_return_pc: 0x14ff
    <566>   DW_AT_call_origin : <0x2fe>
 <2><56a>: Abbrev Number: 2 (DW_TAG_call_site)
    <56b>   DW_AT_call_return_pc: 0x1504
    <573>   DW_AT_call_origin : <0x30e>
 <2><577>: Abbrev Number: 2 (DW_TAG_call_site)
    <578>   DW_AT_call_return_pc: 0x1509
    <580>   DW_AT_call_origin : <0x324>
 <2><584>: Abbrev Number: 2 (DW_TAG_call_site)
    <585>   DW_AT_call_return_pc: 0x1511
    <58d>   DW_AT_call_origin : <0x2ee>
 <2><591>: Abbrev Number: 2 (DW_TAG_call_site)
    <592>   DW_AT_call_return_pc: 0x1516
    <59a>   DW_AT_call_origin : <0x30e>
 <2><59e>: Abbrev Number: 2 (DW_TAG_call_site)
    <59f>   DW_AT_call_return_pc: 0x151b
    <5a7>   DW_AT_call_origin : <0x324>
 <2><5ab>: Abbrev Number: 2 (DW_TAG_call_site)
    <5ac>   DW_AT_call_return_pc: 0x1523
    <5b4>   DW_AT_call_origin : <0x2de>
 <2><5b8>: Abbrev Number: 2 (DW_TAG_call_site)
    <5b9>   DW_AT_call_return_pc: 0x1528
    <5c1>   DW_AT_call_origin : <0x30e>
 <2><5c5>: Abbrev Number: 2 (DW_TAG_call_site)
    <5c6>   DW_AT_call_return_pc: 0x152d
    <5ce>   DW_AT_call_origin : <0x324>
 <2><5d2>: Abbrev Number: 2 (DW_TAG_call_site)
    <5d3>   DW_AT_call_return_pc: 0x1535
    <5db>   DW_AT_call_origin : <0x2ce>
 <2><5df>: Abbrev Number: 2 (DW_TAG_call_site)
    <5e0>   DW_AT_call_return_pc: 0x153a
    <5e8>   DW_AT_call_origin : <0x30e>
 <2><5ec>: Abbrev Number: 2 (DW_TAG_call_site)
    <5ed>   DW_AT_call_return_pc: 0x153f
    <5f5>   DW_AT_call_origin : <0x324>
 <2><5f9>: Abbrev Number: 2 (DW_TAG_call_site)
    <5fa>   DW_AT_call_return_pc: 0x1547
    <602>   DW_AT_call_origin : <0x2be>
 <2><606>: Abbrev Number: 2 (DW_TAG_call_site)
    <607>   DW_AT_call_return_pc: 0x154c
    <60f>   DW_AT_call_origin : <0x30e>
 <2><613>: Abbrev Number: 18 (DW_TAG_call_site)
    <614>   DW_AT_call_return_pc: 0x1588
    <61c>   DW_AT_call_origin : <0x336>
    <620>   DW_AT_sibling     : <0x62a>
 <3><624>: Abbrev Number: 6 (DW_TAG_call_site_parameter)
    <625>   DW_AT_location    : 1 byte block: 55 	(DW_OP_reg5 (rdi))
    <627>   DW_AT_call_value  : 1 byte block: 38 	(DW_OP_lit8)
 <3><629>: Abbrev Number: 0
 <2><62a>: Abbrev Number: 8 (DW_TAG_call_site)
    <62b>   DW_AT_call_return_pc: 0x15ab
    <633>   DW_AT_call_origin : <0x336>
 <3><637>: Abbrev Number: 6 (DW_TAG_call_site_parameter)
    <638>   DW_AT_location    : 1 byte block: 55 	(DW_OP_reg5 (rdi))
    <63a>   DW_AT_call_value  : 1 byte block: 38 	(DW_OP_lit8)
 <3><63c>: Abbrev Number: 0
 <2><63d>: Abbrev Number: 0
 <1><63e>: Abbrev Number: 5 (DW_TAG_pointer_type)
    <63f>   DW_AT_byte_size   : 8
    <63f>   DW_AT_type        : <0x8c>
 <1><643>: Abbrev Number: 35 (DW_TAG_subprogram)
    <644>   DW_AT_external    : 1
    <644>   DW_AT_name        : (indirect string, offset: 0x0): printf
    <648>   DW_AT_decl_file   : 2
    <649>   DW_AT_decl_line   : 110
    <64a>   DW_AT_decl_column : 1
    <64b>   DW_AT_prototyped  : 1
    <64b>   DW_AT_type        : <0x66>
    <64f>   DW_AT_inline      : 3	(declared as inline and inlined)
    <650>   DW_AT_artificial  : 1
    <650>   DW_AT_sibling     : <0x662>
 <2><654>: Abbrev Number: 36 (DW_TAG_formal_parameter)
    <655>   DW_AT_name        : (indirect string, offset: 0x289): __fmt
    <659>   DW_AT_decl_file   : 2
    <65a>   DW_AT_decl_line   : 110
    <65b>   DW_AT_decl_column : 32
    <65c>   DW_AT_type        : <0x2b9>
 <2><660>: Abbrev Number: 15 (DW_TAG_unspecified_parameters)
 <2><661>: Abbrev Number: 0
 <1><662>: Abbrev Number: 19 (DW_TAG_dwarf_procedure)
    <663>   DW_AT_location    : 62 byte block: 9e 3c 57 65 6c 63 6f 6d 65 20 74 6f 20 6d 79 20 66 69 65 6e 64 69 73 68 20 6c 69 74 74 6c 65 20 62 6f 6d 62 2e 20 59 6f 75 20 68 61 76 65 20 36 20 70 68 61 73 65 73 20 77 69 74 68 a 0 	(DW_OP_implicit_value 60 byte block: 57 65 6c 63 6f 6d 65 20 74 6f 20 6d 79 20 66 69 65 6e 64 69 73 68 20 6c 69 74 74 6c 65 20 62 6f 6d 62 2e 20 59 6f 75 20 68 61 76 65 20 36 20 70 68 61 73 65 73 20 77 69 74 68 a 0 )
 <1><6a2>: Abbrev Number: 37 (DW_TAG_subprogram)
    <6a3>   DW_AT_external    : 1
    <6a3>   DW_AT_declaration : 1
    <6a3>   DW_AT_linkage_name: (indirect string, offset: 0x1ee): puts
    <6a7>   DW_AT_name        : (indirect string, offset: 0x1e4): __builtin_puts
    <6ab>   DW_AT_decl_file   : 11
    <6ac>   DW_AT_decl_line   : 0
 <1><6ad>: Abbrev Number: 19 (DW_TAG_dwarf_procedure)
    <6ae>   DW_AT_location    : 47 byte block: 9e 2d 77 68 69 63 68 20 74 6f 20 62 6c 6f 77 20 79 6f 75 72 73 65 6c 66 20 75 70 2e 20 48 61 76 65 20 61 20 6e 69 63 65 20 64 61 79 21 a 0 	(DW_OP_implicit_value 45 byte block: 77 68 69 63 68 20 74 6f 20 62 6c 6f 77 20 79 6f 75 72 73 65 6c 66 20 75 70 2e 20 48 61 76 65 20 61 20 6e 69 63 65 20 64 61 79 21 a 0 )
 <1><6de>: Abbrev Number: 0

Contents of the .debug_abbrev section (loaded from bomb):

  Number TAG (0x0)
   1      DW_TAG_member    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_implicit_const: 5
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_data_member_location DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   2      DW_TAG_call_site    [no children]
    DW_AT_call_return_pc DW_FORM_addr
    DW_AT_call_origin  DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   3      DW_TAG_formal_parameter    [no children]
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   4      DW_TAG_base_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_encoding     DW_FORM_data1
    DW_AT_name         DW_FORM_strp
    DW_AT value: 0     DW_FORM value: 0
   5      DW_TAG_pointer_type    [no children]
    DW_AT_byte_size    DW_FORM_implicit_const: 8
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   6      DW_TAG_call_site_parameter    [no children]
    DW_AT_location     DW_FORM_exprloc
    DW_AT_call_value   DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0
   7      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_implicit_const: 8
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_implicit_const: 13
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   8      DW_TAG_call_site    [has children]
    DW_AT_call_return_pc DW_FORM_addr
    DW_AT_call_origin  DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   9      DW_TAG_typedef    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   10      DW_TAG_inlined_subroutine    [has children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_entry_pc     DW_FORM_addr
    DW_AT_GNU_entry_view DW_FORM_data1
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data8
    DW_AT_call_file    DW_FORM_implicit_const: 1
    DW_AT_call_line    DW_FORM_data1
    DW_AT_call_column  DW_FORM_data1
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   11      DW_TAG_formal_parameter    [no children]
    DW_AT_abstract_origin DW_FORM_ref4
    DW_AT_location     DW_FORM_sec_offset
    DW_AT_GNU_locviews DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   12      DW_TAG_structure_type    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT value: 0     DW_FORM value: 0
   13      DW_TAG_array_type    [has children]
    DW_AT_type         DW_FORM_ref4
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   14      DW_TAG_subrange_type    [no children]
    DW_AT_type         DW_FORM_ref4
    DW_AT_upper_bound  DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   15      DW_TAG_unspecified_parameters    [no children]
    DW_AT value: 0     DW_FORM value: 0
   16      DW_TAG_subprogram    [no children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_implicit_const: 9
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_implicit_const: 6
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT value: 0     DW_FORM value: 0
   17      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_implicit_const: 1
    DW_AT_decl_line    DW_FORM_implicit_const: 36
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_location     DW_FORM_sec_offset
    DW_AT_GNU_locviews DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   18      DW_TAG_call_site    [has children]
    DW_AT_call_return_pc DW_FORM_addr
    DW_AT_call_origin  DW_FORM_ref4
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   19      DW_TAG_dwarf_procedure    [no children]
    DW_AT_location     DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0
   20      DW_TAG_compile_unit    [has children]
    DW_AT_producer     DW_FORM_strp
    DW_AT_language     DW_FORM_data1
    DW_AT_name         DW_FORM_line_strp
    DW_AT_comp_dir     DW_FORM_line_strp
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data8
    DW_AT_stmt_list    DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   21      DW_TAG_pointer_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   22      DW_TAG_base_type    [no children]
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_encoding     DW_FORM_data1
    DW_AT_name         DW_FORM_string
    DW_AT value: 0     DW_FORM value: 0
   23      DW_TAG_const_type    [no children]
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   24      DW_TAG_structure_type    [has children]
    DW_AT_name         DW_FORM_strp
    DW_AT_byte_size    DW_FORM_data1
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   25      DW_TAG_typedef    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0
   26      DW_TAG_variable    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_external     DW_FORM_flag_present
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT value: 0     DW_FORM value: 0
   27      DW_TAG_variable    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_external     DW_FORM_flag_present
    DW_AT_location     DW_FORM_exprloc
    DW_AT value: 0     DW_FORM value: 0
   28      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   29      DW_TAG_restrict_type    [no children]
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   30      DW_TAG_subprogram    [no children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT value: 0     DW_FORM value: 0
   31      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data2
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_noreturn     DW_FORM_flag_present
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   32      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data2
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   33      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_low_pc       DW_FORM_addr
    DW_AT_high_pc      DW_FORM_data8
    DW_AT_frame_base   DW_FORM_exprloc
    DW_AT_call_all_calls DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   34      DW_TAG_variable    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT_location     DW_FORM_sec_offset
    DW_AT_GNU_locviews DW_FORM_sec_offset
    DW_AT value: 0     DW_FORM value: 0
   35      DW_TAG_subprogram    [has children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_prototyped   DW_FORM_flag_present
    DW_AT_type         DW_FORM_ref4
    DW_AT_inline       DW_FORM_data1
    DW_AT_artificial   DW_FORM_flag_present
    DW_AT_sibling      DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   36      DW_TAG_formal_parameter    [no children]
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT_decl_column  DW_FORM_data1
    DW_AT_type         DW_FORM_ref4
    DW_AT value: 0     DW_FORM value: 0
   37      DW_TAG_subprogram    [no children]
    DW_AT_external     DW_FORM_flag_present
    DW_AT_declaration  DW_FORM_flag_present
    DW_AT_linkage_name DW_FORM_strp
    DW_AT_name         DW_FORM_strp
    DW_AT_decl_file    DW_FORM_data1
    DW_AT_decl_line    DW_FORM_data1
    DW_AT value: 0     DW_FORM value: 0

Raw dump of debug contents of section .debug_line (loaded from bomb):

  Offset:                      0x0
  Length:                      355
  DWARF Version:               5
  Address size (bytes):        8
  Segment selector (bytes):    0
  Prologue Length:             108
  Minimum Instruction Length:  1
  Maximum Ops per Instruction: 1
  Initial value of 'is_stmt':  1
  Line Base:                   -5
  Line Range:                  14
  Opcode Base:                 13

 Opcodes:
  Opcode 1 has 0 args
  Opcode 2 has 1 arg
  Opcode 3 has 1 arg
  Opcode 4 has 1 arg
  Opcode 5 has 1 arg
  Opcode 6 has 0 args
  Opcode 7 has 0 args
  Opcode 8 has 0 args
  Opcode 9 has 1 arg
  Opcode 10 has 0 args
  Opcode 11 has 0 args
  Opcode 12 has 1 arg

 The Directory Table (offset 0x22, lines 5, columns 1):
  Entry	Name
  0	(indirect line string, offset: 0x0): /home/ygli/xjtu-ics-2023/lab2/bomblab/src
  1	(indirect line string, offset: 0x31): /usr/include/x86_64-linux-gnu/bits
  2	(indirect line string, offset: 0x54): /usr/lib/gcc/x86_64-linux-gnu/11/include
  3	(indirect line string, offset: 0x7d): /usr/include/x86_64-linux-gnu/bits/types
  4	(indirect line string, offset: 0xa6): /usr/include

 The File Name Table (offset 0x3c, lines 12, columns 2):
  Entry	Dir	Name
  0	0	(indirect line string, offset: 0x2a): bomb.c
  1	0	(indirect line string, offset: 0x2a): bomb.c
  2	1	(indirect line string, offset: 0xb3): stdio2.h
  3	2	(indirect line string, offset: 0xbc): stddef.h
  4	1	(indirect line string, offset: 0xc5): types.h
  5	3	(indirect line string, offset: 0xcd): struct_FILE.h
  6	3	(indirect line string, offset: 0xd4): FILE.h
  7	4	(indirect line string, offset: 0xdb): stdio.h
  8	0	(indirect line string, offset: 0xe3): phases.h
  9	0	(indirect line string, offset: 0xec): support.h
  10	4	(indirect line string, offset: 0xf6): stdlib.h
  11	0	(indirect line string, offset: 0xff): <built-in>

 Line Number Statements:
  [0x00000078]  Set column to 1
  [0x0000007a]  Extended opcode 2: set Address to 0x1489
  [0x00000085]  Advance Line by 36 to 37
  [0x00000087]  Copy
  [0x00000088]  Set is_stmt to 0
  [0x00000089]  Copy (view 1)
  [0x0000008a]  Set column to 5
  [0x0000008c]  Set is_stmt to 1
  [0x0000008d]  Special opcode 76: advance Address by 5 to 0x148e and Line by 1 to 38
  [0x0000008e]  Special opcode 12: advance Address by 0 to 0x148e and Line by 7 to 45 (view 1)
  [0x0000008f]  Set column to 8
  [0x00000091]  Set is_stmt to 0
  [0x00000092]  Copy (view 2)
  [0x00000093]  Set column to 10
  [0x00000095]  Set is_stmt to 1
  [0x00000096]  Special opcode 181: advance Address by 12 to 0x149a and Line by 8 to 53
  [0x00000097]  Set column to 13
  [0x00000099]  Set is_stmt to 0
  [0x0000009a]  Copy (view 1)
  [0x0000009b]  Set column to 2
  [0x0000009d]  Set is_stmt to 1
  [0x0000009e]  Special opcode 132: advance Address by 9 to 0x14a3 and Line by 1 to 54
  [0x0000009f]  Set column to 17
  [0x000000a1]  Set is_stmt to 0
  [0x000000a2]  Copy (view 1)
  [0x000000a3]  Special opcode 61: advance Address by 4 to 0x14a7 and Line by 0 to 54
  [0x000000a4]  Special opcode 103: advance Address by 7 to 0x14ae and Line by 0 to 54
  [0x000000a5]  Set column to 15
  [0x000000a7]  Special opcode 75: advance Address by 5 to 0x14b3 and Line by 0 to 54
  [0x000000a8]  Set column to 5
  [0x000000aa]  Special opcode 103: advance Address by 7 to 0x14ba and Line by 0 to 54
  [0x000000ab]  Set is_stmt to 1
  [0x000000ac]  Advance Line by 13 to 67
  [0x000000ae]  Special opcode 131: advance Address by 9 to 0x14c3 and Line by 0 to 67
  [0x000000af]  Special opcode 77: advance Address by 5 to 0x14c8 and Line by 2 to 69
  [0x000000b0]  Set File Name to entry 2 in the File Name Table
  [0x000000b2]  Set column to 1
  [0x000000b4]  Advance Line by 41 to 110
  [0x000000b6]  Copy (view 1)
  [0x000000b7]  Set column to 3
  [0x000000b9]  Special opcode 7: advance Address by 0 to 0x14c8 and Line by 2 to 112 (view 2)
  [0x000000ba]  Set column to 10
  [0x000000bc]  Set is_stmt to 0
  [0x000000bd]  Copy (view 3)
  [0x000000be]  Special opcode 173: advance Address by 12 to 0x14d4 and Line by 0 to 112
  [0x000000bf]  Set File Name to entry 1 in the File Name Table
  [0x000000c1]  Set column to 5
  [0x000000c3]  Set is_stmt to 1
  [0x000000c4]  Advance Line by -42 to 70
  [0x000000c6]  Copy (view 1)
  [0x000000c7]  Set File Name to entry 2 in the File Name Table
  [0x000000c9]  Set column to 1
  [0x000000cb]  Advance Line by 40 to 110
  [0x000000cd]  Copy (view 2)
  [0x000000ce]  Set column to 3
  [0x000000d0]  Special opcode 7: advance Address by 0 to 0x14d4 and Line by 2 to 112 (view 3)
  [0x000000d1]  Set column to 10
  [0x000000d3]  Set is_stmt to 0
  [0x000000d4]  Copy (view 4)
  [0x000000d5]  Special opcode 173: advance Address by 12 to 0x14e0 and Line by 0 to 112
  [0x000000d6]  Set File Name to entry 1 in the File Name Table
  [0x000000d8]  Set column to 5
  [0x000000da]  Set is_stmt to 1
  [0x000000db]  Advance Line by -39 to 73
  [0x000000dd]  Copy (view 1)
  [0x000000de]  Set column to 13
  [0x000000e0]  Set is_stmt to 0
  [0x000000e1]  Copy (view 2)
  [0x000000e2]  Set column to 5
  [0x000000e4]  Set is_stmt to 1
  [0x000000e5]  Special opcode 118: advance Address by 8 to 0x14e8 and Line by 1 to 74
  [0x000000e6]  Special opcode 76: advance Address by 5 to 0x14ed and Line by 1 to 75
  [0x000000e7]  Special opcode 80: advance Address by 5 to 0x14f2 and Line by 5 to 80
  [0x000000e8]  Set column to 13
  [0x000000ea]  Set is_stmt to 0
  [0x000000eb]  Copy (view 1)
  [0x000000ec]  Set column to 5
  [0x000000ee]  Set is_stmt to 1
  [0x000000ef]  Special opcode 118: advance Address by 8 to 0x14fa and Line by 1 to 81
  [0x000000f0]  Special opcode 76: advance Address by 5 to 0x14ff and Line by 1 to 82
  [0x000000f1]  Special opcode 79: advance Address by 5 to 0x1504 and Line by 4 to 86
  [0x000000f2]  Set column to 13
  [0x000000f4]  Set is_stmt to 0
  [0x000000f5]  Copy (view 1)
  [0x000000f6]  Set column to 5
  [0x000000f8]  Set is_stmt to 1
  [0x000000f9]  Special opcode 118: advance Address by 8 to 0x150c and Line by 1 to 87
  [0x000000fa]  Special opcode 76: advance Address by 5 to 0x1511 and Line by 1 to 88
  [0x000000fb]  Special opcode 78: advance Address by 5 to 0x1516 and Line by 3 to 91
  [0x000000fc]  Set column to 13
  [0x000000fe]  Set is_stmt to 0
  [0x000000ff]  Copy (view 1)
  [0x00000100]  Set column to 5
  [0x00000102]  Set is_stmt to 1
  [0x00000103]  Special opcode 118: advance Address by 8 to 0x151e and Line by 1 to 92
  [0x00000104]  Special opcode 76: advance Address by 5 to 0x1523 and Line by 1 to 93
  [0x00000105]  Special opcode 78: advance Address by 5 to 0x1528 and Line by 3 to 96
  [0x00000106]  Set column to 13
  [0x00000108]  Set is_stmt to 0
  [0x00000109]  Copy (view 1)
  [0x0000010a]  Set column to 5
  [0x0000010c]  Set is_stmt to 1
  [0x0000010d]  Special opcode 118: advance Address by 8 to 0x1530 and Line by 1 to 97
  [0x0000010e]  Special opcode 76: advance Address by 5 to 0x1535 and Line by 1 to 98
  [0x0000010f]  Special opcode 79: advance Address by 5 to 0x153a and Line by 4 to 102
  [0x00000110]  Set column to 13
  [0x00000112]  Set is_stmt to 0
  [0x00000113]  Copy (view 1)
  [0x00000114]  Set column to 5
  [0x00000116]  Set is_stmt to 1
  [0x00000117]  Special opcode 118: advance Address by 8 to 0x1542 and Line by 1 to 103
  [0x00000118]  Special opcode 76: advance Address by 5 to 0x1547 and Line by 1 to 104
  [0x00000119]  Special opcode 80: advance Address by 5 to 0x154c and Line by 5 to 109
  [0x0000011a]  Set column to 1
  [0x0000011c]  Set is_stmt to 0
  [0x0000011d]  Special opcode 6: advance Address by 0 to 0x154c and Line by 1 to 110 (view 1)
  [0x0000011e]  Set column to 2
  [0x00000120]  Set is_stmt to 1
  [0x00000121]  Advance Line by -64 to 46
  [0x00000123]  Special opcode 103: advance Address by 7 to 0x1553 and Line by 0 to 46
  [0x00000124]  Set column to 9
  [0x00000126]  Set is_stmt to 0
  [0x00000127]  Copy (view 1)
  [0x00000128]  Set column to 6
  [0x0000012a]  Set is_stmt to 1
  [0x0000012b]  Advance Line by 9 to 55
  [0x0000012d]  Advance PC by constant 17 to 0x1564
  [0x0000012e]  Special opcode 33: advance Address by 2 to 0x1566 and Line by 0 to 55
  [0x0000012f]  Set File Name to entry 2 in the File Name Table
  [0x00000131]  Set column to 1
  [0x00000133]  Advance Line by 55 to 110
  [0x00000135]  Copy (view 1)
  [0x00000136]  Set column to 3
  [0x00000138]  Special opcode 7: advance Address by 0 to 0x1566 and Line by 2 to 112 (view 2)
  [0x00000139]  Set column to 10
  [0x0000013b]  Set is_stmt to 0
  [0x0000013c]  Copy (view 3)
  [0x0000013d]  Advance PC by constant 17 to 0x1577
  [0x0000013e]  Special opcode 103: advance Address by 7 to 0x157e and Line by 0 to 112
  [0x0000013f]  Set File Name to entry 1 in the File Name Table
  [0x00000141]  Set column to 6
  [0x00000143]  Set is_stmt to 1
  [0x00000144]  Advance Line by -56 to 56
  [0x00000146]  Copy (view 1)
  [0x00000147]  Set column to 2
  [0x00000149]  Special opcode 151: advance Address by 10 to 0x1588 and Line by 6 to 62
  [0x0000014a]  Set File Name to entry 2 in the File Name Table
  [0x0000014c]  Set column to 1
  [0x0000014e]  Advance Line by 48 to 110
  [0x00000150]  Copy (view 1)
  [0x00000151]  Set column to 3
  [0x00000153]  Special opcode 7: advance Address by 0 to 0x1588 and Line by 2 to 112 (view 2)
  [0x00000154]  Set column to 10
  [0x00000156]  Set is_stmt to 0
  [0x00000157]  Copy (view 3)
  [0x00000158]  Special opcode 215: advance Address by 15 to 0x1597 and Line by 0 to 112
  [0x00000159]  Special opcode 145: advance Address by 10 to 0x15a1 and Line by 0 to 112
  [0x0000015a]  Set File Name to entry 1 in the File Name Table
  [0x0000015c]  Set column to 2
  [0x0000015e]  Set is_stmt to 1
  [0x0000015f]  Advance Line by -49 to 63
  [0x00000161]  Copy (view 1)
  [0x00000162]  Advance PC by 10 to 0x15ab
  [0x00000164]  Extended opcode 1: End of Sequence


Contents of the .debug_str section (loaded from bomb):

  0x00000000 7072696e 7466005f 5f6f6666 5f74005f printf.__off_t._
  0x00000010 494f5f72 6561645f 70747200 5f636861 IO_read_ptr._cha
  0x00000020 696e0073 697a655f 74005f73 686f7274 in.size_t._short
  0x00000030 62756600 5f494f5f 6275665f 62617365 buf._IO_buf_base
  0x00000040 006c6f6e 67206c6f 6e672075 6e736967 .long long unsig
  0x00000050 6e656420 696e7400 474e5520 43313720 ned int.GNU C17 
  0x00000060 31312e34 2e30202d 6d74756e 653d6765 11.4.0 -mtune=ge
  0x00000070 6e657269 63202d6d 61726368 3d783836 neric -march=x86
  0x00000080 2d363420 2d676764 62202d4f 31202d66 -64 -ggdb -O1 -f
  0x00000090 6173796e 6368726f 6e6f7573 2d756e77 asynchronous-unw
  0x000000a0 696e642d 7461626c 6573202d 66737461 ind-tables -fsta
  0x000000b0 636b2d70 726f7465 63746f72 2d737472 ck-protector-str
  0x000000c0 6f6e6720 2d667374 61636b2d 636c6173 ong -fstack-clas
  0x000000d0 682d7072 6f746563 74696f6e 202d6663 h-protection -fc
  0x000000e0 662d7072 6f746563 74696f6e 00726561 f-protection.rea
  0x000000f0 645f6c69 6e65006c 6f6e6720 6c6f6e67 d_line.long long
  0x00000100 20696e74 00706861 73655f64 65667573  int.phase_defus
  0x00000110 6564005f 66696c65 6e6f005f 494f5f72 ed._fileno._IO_r
  0x00000120 6561645f 656e6400 5f666c61 6773005f ead_end._flags._
  0x00000130 494f5f62 75665f65 6e64005f 6375725f IO_buf_end._cur_
  0x00000140 636f6c75 6d6e005f 494f5f63 6f646563 column._IO_codec
  0x00000150 7674005f 5f707269 6e74665f 63686b00 vt.__printf_chk.
  0x00000160 5f6f6c64 5f6f6666 73657400 696e6669 _old_offset.infi
  0x00000170 6c650069 6e697469 616c697a 655f626f le.initialize_bo
  0x00000180 6d62005f 494f5f6d 61726b65 72007374 mb._IO_marker.st
  0x00000190 64696e00 5f667265 65726573 5f627566 din._freeres_buf
  0x000001a0 005f494f 5f777269 74655f70 74720073 ._IO_write_ptr.s
  0x000001b0 686f7274 20756e73 69676e65 6420696e hort unsigned in
  0x000001c0 74005f49 4f5f7361 76655f62 61736500 t._IO_save_base.
  0x000001d0 5f6c6f63 6b005f66 6c616773 32005f6d _lock._flags2._m
  0x000001e0 6f646500 5f5f6275 696c7469 6e5f7075 ode.__builtin_pu
  0x000001f0 7473005f 494f5f77 72697465 5f656e64 ts._IO_write_end
  0x00000200 005f494f 5f6c6f63 6b5f7400 5f494f5f ._IO_lock_t._IO_
  0x00000210 46494c45 00666f70 656e005f 6d61726b FILE.fopen._mark
  0x00000220 65727300 756e7369 676e6564 20636861 ers.unsigned cha
  0x00000230 72007368 6f727420 696e7400 5f494f5f r.short int._IO_
  0x00000240 77696465 5f646174 61005f76 7461626c wide_data._vtabl
  0x00000250 655f6f66 66736574 00657869 7400696e e_offset.exit.in
  0x00000260 70757400 5f5f6f66 6636345f 74005f49 put.__off64_t._I
  0x00000270 4f5f7265 61645f62 61736500 5f494f5f O_read_base._IO_
  0x00000280 73617665 5f656e64 005f5f66 6d74005f save_end.__fmt._
  0x00000290 5f706164 35005f75 6e757365 64320061 _pad5._unused2.a
  0x000002a0 72677600 70686173 655f3100 70686173 rgv.phase_1.phas
  0x000002b0 655f3200 70686173 655f3300 70686173 e_2.phase_3.phas
  0x000002c0 655f3400 70686173 655f3500 70686173 e_4.phase_5.phas
  0x000002d0 655f3600 5f494f5f 6261636b 75705f62 e_6._IO_backup_b
  0x000002e0 61736500 61726763 005f6672 65657265 ase.argc._freere
  0x000002f0 735f6c69 7374006d 61696e00 5f494f5f s_list.main._IO_
  0x00000300 77726974 655f6261 736500            write_base.

Contents of the .debug_line_str section (loaded from bomb):

  0x00000000 2f686f6d 652f7967 6c692f78 6a74752d /home/ygli/xjtu-
  0x00000010 6963732d 32303233 2f6c6162 322f626f ics-2023/lab2/bo
  0x00000020 6d626c61 622f7372 6300626f 6d622e63 mblab/src.bomb.c
  0x00000030 002f7573 722f696e 636c7564 652f7838 ./usr/include/x8
  0x00000040 365f3634 2d6c696e 75782d67 6e752f62 6_64-linux-gnu/b
  0x00000050 69747300 2f757372 2f6c6962 2f676363 its./usr/lib/gcc
  0x00000060 2f783836 5f36342d 6c696e75 782d676e /x86_64-linux-gn
  0x00000070 752f3131 2f696e63 6c756465 002f7573 u/11/include./us
  0x00000080 722f696e 636c7564 652f7838 365f3634 r/include/x86_64
  0x00000090 2d6c696e 75782d67 6e752f62 6974732f -linux-gnu/bits/
  0x000000a0 74797065 73002f75 73722f69 6e636c75 types./usr/inclu
  0x000000b0 64650073 7464696f 322e6800 73746464 de.stdio2.h.stdd
  0x000000c0 65662e68 00747970 65732e68 00737472 ef.h.types.h.str
  0x000000d0 7563745f 46494c45 2e680073 7464696f uct_FILE.h.stdio
  0x000000e0 2e680070 68617365 732e6800 73757070 .h.phases.h.supp
  0x000000f0 6f72742e 68007374 646c6962 2e68003c ort.h.stdlib.h.<
  0x00000100 6275696c 742d696e 3e00              built-in>.

Contents of the .debug_loclists section (loaded from bomb):

    Offset   Begin            End              Expression

    0000000c v000000000000000 v000000000000000 location view pair
    0000000e v000000000000000 v000000000000000 location view pair
    00000010 v000000000000000 v000000000000000 location view pair
    00000012 v000000000000000 v000000000000000 location view pair
    00000014 v000000000000000 v000000000000000 location view pair
    00000016 v000000000000000 v000000000000000 location view pair

    00000018 v000000000000000 v000000000000000 views at 0000000c for:
             0000000000001489 00000000000014a7 (DW_OP_reg5 (rdi))
    0000001d v000000000000000 v000000000000000 views at 0000000e for:
             00000000000014a7 0000000000001553 (DW_OP_entry_value: (DW_OP_reg5 (rdi)); DW_OP_stack_value)
    00000026 v000000000000000 v000000000000000 views at 00000010 for:
             0000000000001553 0000000000001566 (DW_OP_reg5 (rdi))
    0000002d v000000000000000 v000000000000000 views at 00000012 for:
             0000000000001566 0000000000001588 (DW_OP_entry_value: (DW_OP_reg5 (rdi)); DW_OP_stack_value)
    00000037 v000000000000000 v000000000000000 views at 00000014 for:
             0000000000001588 0000000000001597 (DW_OP_reg5 (rdi))
    0000003e v000000000000000 v000000000000000 views at 00000016 for:
             0000000000001597 00000000000015ab (DW_OP_entry_value: (DW_OP_reg5 (rdi)); DW_OP_stack_value)
    00000048 <End of list>

    00000049 v000000000000000 v000000000000000 location view pair
    0000004b v000000000000000 v000000000000000 location view pair
    0000004d v000000000000000 v000000000000000 location view pair
    0000004f v000000000000000 v000000000000000 location view pair
    00000051 v000000000000000 v000000000000000 location view pair

    00000053 v000000000000000 v000000000000000 views at 00000049 for:
             0000000000001489 00000000000014ae (DW_OP_reg4 (rsi))
    00000058 v000000000000000 v000000000000000 views at 0000004b for:
             00000000000014ae 00000000000014c3 (DW_OP_reg3 (rbx))
    0000005d v000000000000000 v000000000000000 views at 0000004d for:
             00000000000014c3 0000000000001553 (DW_OP_entry_value: (DW_OP_reg4 (rsi)); DW_OP_stack_value)
    00000066 v000000000000000 v000000000000000 views at 0000004f for:
             0000000000001553 0000000000001566 (DW_OP_reg4 (rsi))
    0000006d v000000000000000 v000000000000000 views at 00000051 for:
             0000000000001566 00000000000015ab (DW_OP_reg3 (rbx))
    00000074 <End of list>

    00000075 v000000000000000 v000000000000000 location view pair
    00000077 v000000000000000 v000000000000000 location view pair
    00000079 v000000000000000 v000000000000000 location view pair
    0000007b v000000000000000 v000000000000000 location view pair
    0000007d v000000000000000 v000000000000000 location view pair
    0000007f v000000000000000 v000000000000000 location view pair

    00000081 v000000000000000 v000000000000000 views at 00000075 for:
             00000000000014e8 00000000000014ec (DW_OP_reg0 (rax))
    00000086 v000000000000000 v000000000000000 views at 00000077 for:
             00000000000014fa 00000000000014fe (DW_OP_reg0 (rax))
    0000008b v000000000000000 v000000000000000 views at 00000079 for:
             000000000000150c 0000000000001510 (DW_OP_reg0 (rax))
    00000092 v000000000000000 v000000000000000 views at 0000007b for:
             000000000000151e 0000000000001522 (DW_OP_reg0 (rax))
    00000099 v000000000000000 v000000000000000 views at 0000007d for:
             0000000000001530 0000000000001534 (DW_OP_reg0 (rax))
    000000a0 v000000000000000 v000000000000000 views at 0000007f for:
             0000000000001542 0000000000001546 (DW_OP_reg0 (rax))
    000000a7 <End of list>

    000000a8 v000000000000001 v000000000000000 location view pair

    000000aa v000000000000001 v000000000000000 views at 000000a8 for:
             00000000000014c8 00000000000014d4 (DW_OP_implicit_pointer: <0x662> 0)
    000000b4 <End of list>

    000000b5 v000000000000002 v000000000000000 location view pair

    000000b7 v000000000000002 v000000000000000 views at 000000b5 for:
             00000000000014d4 00000000000014e0 (DW_OP_implicit_pointer: <0x6ad> 0)
    000000c1 <End of list>

    000000c2 v000000000000001 v000000000000000 location view pair

    000000c4 v000000000000001 v000000000000000 views at 000000c2 for:
             0000000000001566 000000000000157e (DW_OP_addr: 3006; DW_OP_stack_value)
    000000d4 <End of list>

    000000d5 v000000000000001 v000000000000000 location view pair

    000000d7 v000000000000001 v000000000000000 views at 000000d5 for:
             0000000000001588 00000000000015a1 (DW_OP_addr: 3023; DW_OP_stack_value)
    000000e7 <End of list>


bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ca 3e 00 00    	push   0x3eca(%rip)        # 4ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 cb 3e 00 00 	bnd jmp *0x3ecb(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11df:	90                   	nop

Disassembly of section .plt.got:

00000000000011e0 <__cxa_finalize@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 0d 3e 00 00 	bnd jmp *0x3e0d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011f0 <getenv@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 05 3d 00 00 	bnd jmp *0x3d05(%rip)        # 4f00 <getenv@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <__errno_location@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 fd 3c 00 00 	bnd jmp *0x3cfd(%rip)        # 4f08 <__errno_location@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <strcpy@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 f5 3c 00 00 	bnd jmp *0x3cf5(%rip)        # 4f10 <strcpy@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <puts@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 ed 3c 00 00 	bnd jmp *0x3ced(%rip)        # 4f18 <puts@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <write@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 e5 3c 00 00 	bnd jmp *0x3ce5(%rip)        # 4f20 <write@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <strlen@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 dd 3c 00 00 	bnd jmp *0x3cdd(%rip)        # 4f28 <strlen@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <__stack_chk_fail@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 d5 3c 00 00 	bnd jmp *0x3cd5(%rip)        # 4f30 <__stack_chk_fail@GLIBC_2.4>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <alarm@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 cd 3c 00 00 	bnd jmp *0x3ccd(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <close@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 c5 3c 00 00 	bnd jmp *0x3cc5(%rip)        # 4f40 <close@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <read@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 bd 3c 00 00 	bnd jmp *0x3cbd(%rip)        # 4f48 <read@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <fgets@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 b5 3c 00 00 	bnd jmp *0x3cb5(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <strcmp@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 ad 3c 00 00 	bnd jmp *0x3cad(%rip)        # 4f58 <strcmp@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <signal@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 a5 3c 00 00 	bnd jmp *0x3ca5(%rip)        # 4f60 <signal@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <gethostbyname@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 9d 3c 00 00 	bnd jmp *0x3c9d(%rip)        # 4f68 <gethostbyname@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <__memmove_chk@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 95 3c 00 00 	bnd jmp *0x3c95(%rip)        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <strtol@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 8d 3c 00 00 	bnd jmp *0x3c8d(%rip)        # 4f78 <strtol@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <fflush@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 85 3c 00 00 	bnd jmp *0x3c85(%rip)        # 4f80 <fflush@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__isoc99_sscanf@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 7d 3c 00 00 	bnd jmp *0x3c7d(%rip)        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <__printf_chk@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 75 3c 00 00 	bnd jmp *0x3c75(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <fopen@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 6d 3c 00 00 	bnd jmp *0x3c6d(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <exit@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 65 3c 00 00 	bnd jmp *0x3c65(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <connect@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 5d 3c 00 00 	bnd jmp *0x3c5d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fprintf_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 55 3c 00 00 	bnd jmp *0x3c55(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <sleep@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 4d 3c 00 00 	bnd jmp *0x3c4d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <__ctype_b_loc@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 45 3c 00 00 	bnd jmp *0x3c45(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <__sprintf_chk@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 3d 3c 00 00 	bnd jmp *0x3c3d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <socket@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 35 3c 00 00 	bnd jmp *0x3c35(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013a0 <_start>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	31 ed                	xor    %ebp,%ebp
    13a6:	49 89 d1             	mov    %rdx,%r9
    13a9:	5e                   	pop    %rsi
    13aa:	48 89 e2             	mov    %rsp,%rdx
    13ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13b1:	50                   	push   %rax
    13b2:	54                   	push   %rsp
    13b3:	45 31 c0             	xor    %r8d,%r8d
    13b6:	31 c9                	xor    %ecx,%ecx
    13b8:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1489 <main>
    13bf:	ff 15 13 3c 00 00    	call   *0x3c13(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    13c5:	f4                   	hlt    
    13c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13cd:	00 00 00 

00000000000013d0 <deregister_tm_clones>:
    13d0:	48 8d 3d 89 42 00 00 	lea    0x4289(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    13d7:	48 8d 05 82 42 00 00 	lea    0x4282(%rip),%rax        # 5660 <stdout@GLIBC_2.2.5>
    13de:	48 39 f8             	cmp    %rdi,%rax
    13e1:	74 15                	je     13f8 <deregister_tm_clones+0x28>
    13e3:	48 8b 05 f6 3b 00 00 	mov    0x3bf6(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    13ea:	48 85 c0             	test   %rax,%rax
    13ed:	74 09                	je     13f8 <deregister_tm_clones+0x28>
    13ef:	ff e0                	jmp    *%rax
    13f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13f8:	c3                   	ret    
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <register_tm_clones>:
    1400:	48 8d 3d 59 42 00 00 	lea    0x4259(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    1407:	48 8d 35 52 42 00 00 	lea    0x4252(%rip),%rsi        # 5660 <stdout@GLIBC_2.2.5>
    140e:	48 29 fe             	sub    %rdi,%rsi
    1411:	48 89 f0             	mov    %rsi,%rax
    1414:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1418:	48 c1 f8 03          	sar    $0x3,%rax
    141c:	48 01 c6             	add    %rax,%rsi
    141f:	48 d1 fe             	sar    %rsi
    1422:	74 14                	je     1438 <register_tm_clones+0x38>
    1424:	48 8b 05 c5 3b 00 00 	mov    0x3bc5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    142b:	48 85 c0             	test   %rax,%rax
    142e:	74 08                	je     1438 <register_tm_clones+0x38>
    1430:	ff e0                	jmp    *%rax
    1432:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1438:	c3                   	ret    
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <__do_global_dtors_aux>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	80 3d 3d 42 00 00 00 	cmpb   $0x0,0x423d(%rip)        # 5688 <completed.0>
    144b:	75 2b                	jne    1478 <__do_global_dtors_aux+0x38>
    144d:	55                   	push   %rbp
    144e:	48 83 3d a2 3b 00 00 	cmpq   $0x0,0x3ba2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1455:	00 
    1456:	48 89 e5             	mov    %rsp,%rbp
    1459:	74 0c                	je     1467 <__do_global_dtors_aux+0x27>
    145b:	48 8b 3d a6 3b 00 00 	mov    0x3ba6(%rip),%rdi        # 5008 <__dso_handle>
    1462:	e8 79 fd ff ff       	call   11e0 <__cxa_finalize@plt>
    1467:	e8 64 ff ff ff       	call   13d0 <deregister_tm_clones>
    146c:	c6 05 15 42 00 00 01 	movb   $0x1,0x4215(%rip)        # 5688 <completed.0>
    1473:	5d                   	pop    %rbp
    1474:	c3                   	ret    
    1475:	0f 1f 00             	nopl   (%rax)
    1478:	c3                   	ret    
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <frame_dummy>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	e9 77 ff ff ff       	jmp    1400 <register_tm_clones>

0000000000001489 <main>:
    1489:	f3 0f 1e fa          	endbr64 
    148d:	53                   	push   %rbx
    148e:	83 ff 01             	cmp    $0x1,%edi
    1491:	0f 84 bc 00 00 00    	je     1553 <main+0xca>
    1497:	48 89 f3             	mov    %rsi,%rbx
    149a:	83 ff 02             	cmp    $0x2,%edi
    149d:	0f 85 e5 00 00 00    	jne    1588 <main+0xff>
    14a3:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14a7:	48 8d 35 56 1b 00 00 	lea    0x1b56(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    14ae:	e8 6d fe ff ff       	call   1320 <fopen@plt>
    14b3:	48 89 05 d6 41 00 00 	mov    %rax,0x41d6(%rip)        # 5690 <infile>
    14ba:	48 85 c0             	test   %rax,%rax
    14bd:	0f 84 a3 00 00 00    	je     1566 <main+0xdd>
    14c3:	e8 1c 07 00 00       	call   1be4 <initialize_bomb>
    14c8:	48 8d 3d 71 1b 00 00 	lea    0x1b71(%rip),%rdi        # 3040 <_IO_stdin_used+0x40>
    14cf:	e8 4c fd ff ff       	call   1220 <puts@plt>
    14d4:	48 8d 3d a5 1b 00 00 	lea    0x1ba5(%rip),%rdi        # 3080 <_IO_stdin_used+0x80>
    14db:	e8 40 fd ff ff       	call   1220 <puts@plt>
    14e0:	e8 50 08 00 00       	call   1d35 <read_line>
    14e5:	48 89 c7             	mov    %rax,%rdi
    14e8:	e8 be 00 00 00       	call   15ab <phase_1>
    14ed:	e8 97 09 00 00       	call   1e89 <phase_defused>
    14f2:	e8 3e 08 00 00       	call   1d35 <read_line>
    14f7:	48 89 c7             	mov    %rax,%rdi
    14fa:	e8 d0 00 00 00       	call   15cf <phase_2>
    14ff:	e8 85 09 00 00       	call   1e89 <phase_defused>
    1504:	e8 2c 08 00 00       	call   1d35 <read_line>
    1509:	48 89 c7             	mov    %rax,%rdi
    150c:	e8 32 01 00 00       	call   1643 <phase_3>
    1511:	e8 73 09 00 00       	call   1e89 <phase_defused>
    1516:	e8 1a 08 00 00       	call   1d35 <read_line>
    151b:	48 89 c7             	mov    %rax,%rdi
    151e:	e8 e2 02 00 00       	call   1805 <phase_4>
    1523:	e8 61 09 00 00       	call   1e89 <phase_defused>
    1528:	e8 08 08 00 00       	call   1d35 <read_line>
    152d:	48 89 c7             	mov    %rax,%rdi
    1530:	e8 49 03 00 00       	call   187e <phase_5>
    1535:	e8 4f 09 00 00       	call   1e89 <phase_defused>
    153a:	e8 f6 07 00 00       	call   1d35 <read_line>
    153f:	48 89 c7             	mov    %rax,%rdi
    1542:	e8 83 03 00 00       	call   18ca <phase_6>
    1547:	e8 3d 09 00 00       	call   1e89 <phase_defused>
    154c:	b8 00 00 00 00       	mov    $0x0,%eax
    1551:	5b                   	pop    %rbx
    1552:	c3                   	ret    
    1553:	48 8b 05 16 41 00 00 	mov    0x4116(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    155a:	48 89 05 2f 41 00 00 	mov    %rax,0x412f(%rip)        # 5690 <infile>
    1561:	e9 5d ff ff ff       	jmp    14c3 <main+0x3a>
    1566:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    156a:	48 8b 13             	mov    (%rbx),%rdx
    156d:	48 8d 35 92 1a 00 00 	lea    0x1a92(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    1574:	bf 01 00 00 00       	mov    $0x1,%edi
    1579:	e8 92 fd ff ff       	call   1310 <__printf_chk@plt>
    157e:	bf 08 00 00 00       	mov    $0x8,%edi
    1583:	e8 a8 fd ff ff       	call   1330 <exit@plt>
    1588:	48 8b 16             	mov    (%rsi),%rdx
    158b:	48 8d 35 91 1a 00 00 	lea    0x1a91(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    1592:	bf 01 00 00 00       	mov    $0x1,%edi
    1597:	b8 00 00 00 00       	mov    $0x0,%eax
    159c:	e8 6f fd ff ff       	call   1310 <__printf_chk@plt>
    15a1:	bf 08 00 00 00       	mov    $0x8,%edi
    15a6:	e8 85 fd ff ff       	call   1330 <exit@plt>

00000000000015ab <phase_1>:
    15ab:	f3 0f 1e fa          	endbr64 
    15af:	48 83 ec 08          	sub    $0x8,%rsp
    15b3:	48 8d 35 f2 1a 00 00 	lea    0x1af2(%rip),%rsi        # 30ac <_IO_stdin_used+0xac>
    15ba:	e8 c5 05 00 00       	call   1b84 <strings_not_equal>
    15bf:	85 c0                	test   %eax,%eax
    15c1:	75 05                	jne    15c8 <phase_1+0x1d>
    15c3:	48 83 c4 08          	add    $0x8,%rsp
    15c7:	c3                   	ret    
    15c8:	e8 cb 06 00 00       	call   1c98 <explode_bomb>
    15cd:	eb f4                	jmp    15c3 <phase_1+0x18>

00000000000015cf <phase_2>:
    15cf:	f3 0f 1e fa          	endbr64 
    15d3:	55                   	push   %rbp
    15d4:	53                   	push   %rbx
    15d5:	48 83 ec 28          	sub    $0x28,%rsp
    15d9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    15e0:	00 00 
    15e2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    15e7:	31 c0                	xor    %eax,%eax
    15e9:	48 89 e6             	mov    %rsp,%rsi
    15ec:	e8 ff 06 00 00       	call   1cf0 <read_six_numbers>
    15f1:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    15f5:	75 07                	jne    15fe <phase_2+0x2f>
    15f7:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    15fc:	74 05                	je     1603 <phase_2+0x34>
    15fe:	e8 95 06 00 00       	call   1c98 <explode_bomb>
    1603:	48 89 e3             	mov    %rsp,%rbx
    1606:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    160b:	eb 09                	jmp    1616 <phase_2+0x47>
    160d:	48 83 c3 04          	add    $0x4,%rbx
    1611:	48 39 eb             	cmp    %rbp,%rbx
    1614:	74 11                	je     1627 <phase_2+0x58>
    1616:	8b 43 04             	mov    0x4(%rbx),%eax
    1619:	03 03                	add    (%rbx),%eax
    161b:	39 43 08             	cmp    %eax,0x8(%rbx)
    161e:	74 ed                	je     160d <phase_2+0x3e>
    1620:	e8 73 06 00 00       	call   1c98 <explode_bomb>
    1625:	eb e6                	jmp    160d <phase_2+0x3e>
    1627:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    162c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1633:	00 00 
    1635:	75 07                	jne    163e <phase_2+0x6f>
    1637:	48 83 c4 28          	add    $0x28,%rsp
    163b:	5b                   	pop    %rbx
    163c:	5d                   	pop    %rbp
    163d:	c3                   	ret    
    163e:	e8 0d fc ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001643 <phase_3>:
    1643:	f3 0f 1e fa          	endbr64 
    1647:	48 83 ec 28          	sub    $0x28,%rsp
    164b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1652:	00 00 
    1654:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1659:	31 c0                	xor    %eax,%eax
    165b:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
    1660:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    1665:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    166a:	48 8d 35 59 1a 00 00 	lea    0x1a59(%rip),%rsi        # 30ca <_IO_stdin_used+0xca>
    1671:	e8 8a fc ff ff       	call   1300 <__isoc99_sscanf@plt>
    1676:	83 f8 02             	cmp    $0x2,%eax
    1679:	7e 20                	jle    169b <phase_3+0x58>
    167b:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
    1680:	0f 87 0d 01 00 00    	ja     1793 <phase_3+0x150>
    1686:	8b 44 24 10          	mov    0x10(%rsp),%eax
    168a:	48 8d 15 4f 1a 00 00 	lea    0x1a4f(%rip),%rdx        # 30e0 <_IO_stdin_used+0xe0>
    1691:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1695:	48 01 d0             	add    %rdx,%rax
    1698:	3e ff e0             	notrack jmp *%rax
    169b:	e8 f8 05 00 00       	call   1c98 <explode_bomb>
    16a0:	eb d9                	jmp    167b <phase_3+0x38>
    16a2:	b8 69 00 00 00       	mov    $0x69,%eax
    16a7:	81 7c 24 14 a9 03 00 	cmpl   $0x3a9,0x14(%rsp)
    16ae:	00 
    16af:	0f 84 e8 00 00 00    	je     179d <phase_3+0x15a>
    16b5:	e8 de 05 00 00       	call   1c98 <explode_bomb>
    16ba:	b8 69 00 00 00       	mov    $0x69,%eax
    16bf:	e9 d9 00 00 00       	jmp    179d <phase_3+0x15a>
    16c4:	b8 78 00 00 00       	mov    $0x78,%eax
    16c9:	81 7c 24 14 4d 02 00 	cmpl   $0x24d,0x14(%rsp)
    16d0:	00 
    16d1:	0f 84 c6 00 00 00    	je     179d <phase_3+0x15a>
    16d7:	e8 bc 05 00 00       	call   1c98 <explode_bomb>
    16dc:	b8 78 00 00 00       	mov    $0x78,%eax
    16e1:	e9 b7 00 00 00       	jmp    179d <phase_3+0x15a>
    16e6:	b8 74 00 00 00       	mov    $0x74,%eax
    16eb:	81 7c 24 14 4b 03 00 	cmpl   $0x34b,0x14(%rsp)
    16f2:	00 
    16f3:	0f 84 a4 00 00 00    	je     179d <phase_3+0x15a>
    16f9:	e8 9a 05 00 00       	call   1c98 <explode_bomb>
    16fe:	b8 74 00 00 00       	mov    $0x74,%eax
    1703:	e9 95 00 00 00       	jmp    179d <phase_3+0x15a>
    1708:	b8 6a 00 00 00       	mov    $0x6a,%eax
    170d:	81 7c 24 14 38 03 00 	cmpl   $0x338,0x14(%rsp)
    1714:	00 
    1715:	0f 84 82 00 00 00    	je     179d <phase_3+0x15a>
    171b:	e8 78 05 00 00       	call   1c98 <explode_bomb>
    1720:	b8 6a 00 00 00       	mov    $0x6a,%eax
    1725:	eb 76                	jmp    179d <phase_3+0x15a>
    1727:	b8 76 00 00 00       	mov    $0x76,%eax
    172c:	81 7c 24 14 a8 03 00 	cmpl   $0x3a8,0x14(%rsp)
    1733:	00 
    1734:	74 67                	je     179d <phase_3+0x15a>
    1736:	e8 5d 05 00 00       	call   1c98 <explode_bomb>
    173b:	b8 76 00 00 00       	mov    $0x76,%eax
    1740:	eb 5b                	jmp    179d <phase_3+0x15a>
    1742:	b8 6b 00 00 00       	mov    $0x6b,%eax
    1747:	81 7c 24 14 c9 00 00 	cmpl   $0xc9,0x14(%rsp)
    174e:	00 
    174f:	74 4c                	je     179d <phase_3+0x15a>
    1751:	e8 42 05 00 00       	call   1c98 <explode_bomb>
    1756:	b8 6b 00 00 00       	mov    $0x6b,%eax
    175b:	eb 40                	jmp    179d <phase_3+0x15a>
    175d:	b8 64 00 00 00       	mov    $0x64,%eax
    1762:	81 7c 24 14 86 01 00 	cmpl   $0x186,0x14(%rsp)
    1769:	00 
    176a:	74 31                	je     179d <phase_3+0x15a>
    176c:	e8 27 05 00 00       	call   1c98 <explode_bomb>
    1771:	b8 64 00 00 00       	mov    $0x64,%eax
    1776:	eb 25                	jmp    179d <phase_3+0x15a>
    1778:	b8 72 00 00 00       	mov    $0x72,%eax
    177d:	81 7c 24 14 09 01 00 	cmpl   $0x109,0x14(%rsp)
    1784:	00 
    1785:	74 16                	je     179d <phase_3+0x15a>
    1787:	e8 0c 05 00 00       	call   1c98 <explode_bomb>
    178c:	b8 72 00 00 00       	mov    $0x72,%eax
    1791:	eb 0a                	jmp    179d <phase_3+0x15a>
    1793:	e8 00 05 00 00       	call   1c98 <explode_bomb>
    1798:	b8 76 00 00 00       	mov    $0x76,%eax
    179d:	38 44 24 0f          	cmp    %al,0xf(%rsp)
    17a1:	75 15                	jne    17b8 <phase_3+0x175>
    17a3:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    17a8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    17af:	00 00 
    17b1:	75 0c                	jne    17bf <phase_3+0x17c>
    17b3:	48 83 c4 28          	add    $0x28,%rsp
    17b7:	c3                   	ret    
    17b8:	e8 db 04 00 00       	call   1c98 <explode_bomb>
    17bd:	eb e4                	jmp    17a3 <phase_3+0x160>
    17bf:	e8 8c fa ff ff       	call   1250 <__stack_chk_fail@plt>

00000000000017c4 <func4>:
    17c4:	f3 0f 1e fa          	endbr64 
    17c8:	48 83 ec 08          	sub    $0x8,%rsp
    17cc:	89 d0                	mov    %edx,%eax
    17ce:	29 f0                	sub    %esi,%eax
    17d0:	89 c1                	mov    %eax,%ecx
    17d2:	c1 e9 1f             	shr    $0x1f,%ecx
    17d5:	01 c1                	add    %eax,%ecx
    17d7:	d1 f9                	sar    %ecx
    17d9:	01 f1                	add    %esi,%ecx
    17db:	39 f9                	cmp    %edi,%ecx
    17dd:	7f 0c                	jg     17eb <func4+0x27>
    17df:	b8 00 00 00 00       	mov    $0x0,%eax
    17e4:	7c 11                	jl     17f7 <func4+0x33>
    17e6:	48 83 c4 08          	add    $0x8,%rsp
    17ea:	c3                   	ret    
    17eb:	8d 51 ff             	lea    -0x1(%rcx),%edx
    17ee:	e8 d1 ff ff ff       	call   17c4 <func4>
    17f3:	01 c0                	add    %eax,%eax
    17f5:	eb ef                	jmp    17e6 <func4+0x22>
    17f7:	8d 71 01             	lea    0x1(%rcx),%esi
    17fa:	e8 c5 ff ff ff       	call   17c4 <func4>
    17ff:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1803:	eb e1                	jmp    17e6 <func4+0x22>

0000000000001805 <phase_4>:
    1805:	f3 0f 1e fa          	endbr64 
    1809:	48 83 ec 18          	sub    $0x18,%rsp
    180d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1814:	00 00 
    1816:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    181b:	31 c0                	xor    %eax,%eax
    181d:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1822:	48 89 e2             	mov    %rsp,%rdx
    1825:	48 8d 35 0c 1b 00 00 	lea    0x1b0c(%rip),%rsi        # 3338 <array.0+0x238>
    182c:	e8 cf fa ff ff       	call   1300 <__isoc99_sscanf@plt>
    1831:	83 f8 02             	cmp    $0x2,%eax
    1834:	75 06                	jne    183c <phase_4+0x37>
    1836:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    183a:	76 05                	jbe    1841 <phase_4+0x3c>
    183c:	e8 57 04 00 00       	call   1c98 <explode_bomb>
    1841:	ba 0e 00 00 00       	mov    $0xe,%edx
    1846:	be 00 00 00 00       	mov    $0x0,%esi
    184b:	8b 3c 24             	mov    (%rsp),%edi
    184e:	e8 71 ff ff ff       	call   17c4 <func4>
    1853:	83 f8 01             	cmp    $0x1,%eax
    1856:	75 07                	jne    185f <phase_4+0x5a>
    1858:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    185d:	74 05                	je     1864 <phase_4+0x5f>
    185f:	e8 34 04 00 00       	call   1c98 <explode_bomb>
    1864:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1869:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1870:	00 00 
    1872:	75 05                	jne    1879 <phase_4+0x74>
    1874:	48 83 c4 18          	add    $0x18,%rsp
    1878:	c3                   	ret    
    1879:	e8 d2 f9 ff ff       	call   1250 <__stack_chk_fail@plt>

000000000000187e <phase_5>:
    187e:	f3 0f 1e fa          	endbr64 
    1882:	53                   	push   %rbx
    1883:	48 89 fb             	mov    %rdi,%rbx
    1886:	e8 d8 02 00 00       	call   1b63 <string_length>
    188b:	83 f8 06             	cmp    $0x6,%eax
    188e:	75 2c                	jne    18bc <phase_5+0x3e>
    1890:	48 89 d8             	mov    %rbx,%rax
    1893:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    1897:	b9 00 00 00 00       	mov    $0x0,%ecx
    189c:	48 8d 35 5d 18 00 00 	lea    0x185d(%rip),%rsi        # 3100 <array.0>
    18a3:	0f b6 10             	movzbl (%rax),%edx
    18a6:	83 e2 0f             	and    $0xf,%edx
    18a9:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    18ac:	48 83 c0 01          	add    $0x1,%rax
    18b0:	48 39 f8             	cmp    %rdi,%rax
    18b3:	75 ee                	jne    18a3 <phase_5+0x25>
    18b5:	83 f9 24             	cmp    $0x24,%ecx
    18b8:	75 09                	jne    18c3 <phase_5+0x45>
    18ba:	5b                   	pop    %rbx
    18bb:	c3                   	ret    
    18bc:	e8 d7 03 00 00       	call   1c98 <explode_bomb>
    18c1:	eb cd                	jmp    1890 <phase_5+0x12>
    18c3:	e8 d0 03 00 00       	call   1c98 <explode_bomb>
    18c8:	eb f0                	jmp    18ba <phase_5+0x3c>

00000000000018ca <phase_6>:
    18ca:	f3 0f 1e fa          	endbr64 
    18ce:	41 57                	push   %r15
    18d0:	41 56                	push   %r14
    18d2:	41 55                	push   %r13
    18d4:	41 54                	push   %r12
    18d6:	55                   	push   %rbp
    18d7:	53                   	push   %rbx
    18d8:	48 83 ec 78          	sub    $0x78,%rsp
    18dc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    18e3:	00 00 
    18e5:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    18ea:	31 c0                	xor    %eax,%eax
    18ec:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
    18f1:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
    18f6:	4c 89 f6             	mov    %r14,%rsi
    18f9:	e8 f2 03 00 00       	call   1cf0 <read_six_numbers>
    18fe:	4d 89 f4             	mov    %r14,%r12
    1901:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    1907:	4d 89 f5             	mov    %r14,%r13
    190a:	e9 c6 00 00 00       	jmp    19d5 <phase_6+0x10b>
    190f:	e8 84 03 00 00       	call   1c98 <explode_bomb>
    1914:	e9 ce 00 00 00       	jmp    19e7 <phase_6+0x11d>
    1919:	48 83 c3 01          	add    $0x1,%rbx
    191d:	83 fb 05             	cmp    $0x5,%ebx
    1920:	0f 8f a7 00 00 00    	jg     19cd <phase_6+0x103>
    1926:	41 8b 44 9d 00       	mov    0x0(%r13,%rbx,4),%eax
    192b:	39 45 00             	cmp    %eax,0x0(%rbp)
    192e:	75 e9                	jne    1919 <phase_6+0x4f>
    1930:	e8 63 03 00 00       	call   1c98 <explode_bomb>
    1935:	eb e2                	jmp    1919 <phase_6+0x4f>
    1937:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    193c:	48 83 c2 18          	add    $0x18,%rdx
    1940:	b9 07 00 00 00       	mov    $0x7,%ecx
    1945:	89 c8                	mov    %ecx,%eax
    1947:	41 2b 04 24          	sub    (%r12),%eax
    194b:	41 89 04 24          	mov    %eax,(%r12)
    194f:	49 83 c4 04          	add    $0x4,%r12
    1953:	4c 39 e2             	cmp    %r12,%rdx
    1956:	75 ed                	jne    1945 <phase_6+0x7b>
    1958:	be 00 00 00 00       	mov    $0x0,%esi
    195d:	8b 4c b4 10          	mov    0x10(%rsp,%rsi,4),%ecx
    1961:	b8 01 00 00 00       	mov    $0x1,%eax
    1966:	48 8d 15 a3 38 00 00 	lea    0x38a3(%rip),%rdx        # 5210 <node1>
    196d:	83 f9 01             	cmp    $0x1,%ecx
    1970:	7e 0b                	jle    197d <phase_6+0xb3>
    1972:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1976:	83 c0 01             	add    $0x1,%eax
    1979:	39 c8                	cmp    %ecx,%eax
    197b:	75 f5                	jne    1972 <phase_6+0xa8>
    197d:	48 89 54 f4 30       	mov    %rdx,0x30(%rsp,%rsi,8)
    1982:	48 83 c6 01          	add    $0x1,%rsi
    1986:	48 83 fe 06          	cmp    $0x6,%rsi
    198a:	75 d1                	jne    195d <phase_6+0x93>
    198c:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
    1991:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1996:	48 89 43 08          	mov    %rax,0x8(%rbx)
    199a:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    199f:	48 89 50 08          	mov    %rdx,0x8(%rax)
    19a3:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    19a8:	48 89 42 08          	mov    %rax,0x8(%rdx)
    19ac:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
    19b1:	48 89 50 08          	mov    %rdx,0x8(%rax)
    19b5:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    19ba:	48 89 42 08          	mov    %rax,0x8(%rdx)
    19be:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    19c5:	00 
    19c6:	bd 05 00 00 00       	mov    $0x5,%ebp
    19cb:	eb 35                	jmp    1a02 <phase_6+0x138>
    19cd:	49 83 c7 01          	add    $0x1,%r15
    19d1:	49 83 c6 04          	add    $0x4,%r14
    19d5:	4c 89 f5             	mov    %r14,%rbp
    19d8:	41 8b 06             	mov    (%r14),%eax
    19db:	83 e8 01             	sub    $0x1,%eax
    19de:	83 f8 05             	cmp    $0x5,%eax
    19e1:	0f 87 28 ff ff ff    	ja     190f <phase_6+0x45>
    19e7:	41 83 ff 05          	cmp    $0x5,%r15d
    19eb:	0f 8f 46 ff ff ff    	jg     1937 <phase_6+0x6d>
    19f1:	4c 89 fb             	mov    %r15,%rbx
    19f4:	e9 2d ff ff ff       	jmp    1926 <phase_6+0x5c>
    19f9:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    19fd:	83 ed 01             	sub    $0x1,%ebp
    1a00:	74 11                	je     1a13 <phase_6+0x149>
    1a02:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1a06:	8b 00                	mov    (%rax),%eax
    1a08:	39 03                	cmp    %eax,(%rbx)
    1a0a:	7d ed                	jge    19f9 <phase_6+0x12f>
    1a0c:	e8 87 02 00 00       	call   1c98 <explode_bomb>
    1a11:	eb e6                	jmp    19f9 <phase_6+0x12f>
    1a13:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1a18:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1a1f:	00 00 
    1a21:	75 0f                	jne    1a32 <phase_6+0x168>
    1a23:	48 83 c4 78          	add    $0x78,%rsp
    1a27:	5b                   	pop    %rbx
    1a28:	5d                   	pop    %rbp
    1a29:	41 5c                	pop    %r12
    1a2b:	41 5d                	pop    %r13
    1a2d:	41 5e                	pop    %r14
    1a2f:	41 5f                	pop    %r15
    1a31:	c3                   	ret    
    1a32:	e8 19 f8 ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001a37 <fun7>:
    1a37:	f3 0f 1e fa          	endbr64 
    1a3b:	48 85 ff             	test   %rdi,%rdi
    1a3e:	74 32                	je     1a72 <fun7+0x3b>
    1a40:	48 83 ec 08          	sub    $0x8,%rsp
    1a44:	8b 17                	mov    (%rdi),%edx
    1a46:	39 f2                	cmp    %esi,%edx
    1a48:	7f 0c                	jg     1a56 <fun7+0x1f>
    1a4a:	b8 00 00 00 00       	mov    $0x0,%eax
    1a4f:	75 12                	jne    1a63 <fun7+0x2c>
    1a51:	48 83 c4 08          	add    $0x8,%rsp
    1a55:	c3                   	ret    
    1a56:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1a5a:	e8 d8 ff ff ff       	call   1a37 <fun7>
    1a5f:	01 c0                	add    %eax,%eax
    1a61:	eb ee                	jmp    1a51 <fun7+0x1a>
    1a63:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1a67:	e8 cb ff ff ff       	call   1a37 <fun7>
    1a6c:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1a70:	eb df                	jmp    1a51 <fun7+0x1a>
    1a72:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1a77:	c3                   	ret    

0000000000001a78 <secret_phase>:
    1a78:	f3 0f 1e fa          	endbr64 
    1a7c:	53                   	push   %rbx
    1a7d:	e8 b3 02 00 00       	call   1d35 <read_line>
    1a82:	48 89 c7             	mov    %rax,%rdi
    1a85:	ba 0a 00 00 00       	mov    $0xa,%edx
    1a8a:	be 00 00 00 00       	mov    $0x0,%esi
    1a8f:	e8 4c f8 ff ff       	call   12e0 <strtol@plt>
    1a94:	89 c3                	mov    %eax,%ebx
    1a96:	83 e8 01             	sub    $0x1,%eax
    1a99:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1a9e:	77 26                	ja     1ac6 <secret_phase+0x4e>
    1aa0:	89 de                	mov    %ebx,%esi
    1aa2:	48 8d 3d 87 36 00 00 	lea    0x3687(%rip),%rdi        # 5130 <n1>
    1aa9:	e8 89 ff ff ff       	call   1a37 <fun7>
    1aae:	83 f8 03             	cmp    $0x3,%eax
    1ab1:	75 1a                	jne    1acd <secret_phase+0x55>
    1ab3:	48 8d 3d 86 16 00 00 	lea    0x1686(%rip),%rdi        # 3140 <array.0+0x40>
    1aba:	e8 61 f7 ff ff       	call   1220 <puts@plt>
    1abf:	e8 c5 03 00 00       	call   1e89 <phase_defused>
    1ac4:	5b                   	pop    %rbx
    1ac5:	c3                   	ret    
    1ac6:	e8 cd 01 00 00       	call   1c98 <explode_bomb>
    1acb:	eb d3                	jmp    1aa0 <secret_phase+0x28>
    1acd:	e8 c6 01 00 00       	call   1c98 <explode_bomb>
    1ad2:	eb df                	jmp    1ab3 <secret_phase+0x3b>

0000000000001ad4 <sig_handler>:
    1ad4:	f3 0f 1e fa          	endbr64 
    1ad8:	50                   	push   %rax
    1ad9:	58                   	pop    %rax
    1ada:	48 83 ec 08          	sub    $0x8,%rsp
    1ade:	48 8d 3d 83 16 00 00 	lea    0x1683(%rip),%rdi        # 3168 <array.0+0x68>
    1ae5:	e8 36 f7 ff ff       	call   1220 <puts@plt>
    1aea:	bf 03 00 00 00       	mov    $0x3,%edi
    1aef:	e8 6c f8 ff ff       	call   1360 <sleep@plt>
    1af4:	48 8d 35 07 18 00 00 	lea    0x1807(%rip),%rsi        # 3302 <array.0+0x202>
    1afb:	bf 01 00 00 00       	mov    $0x1,%edi
    1b00:	b8 00 00 00 00       	mov    $0x0,%eax
    1b05:	e8 06 f8 ff ff       	call   1310 <__printf_chk@plt>
    1b0a:	48 8b 3d 4f 3b 00 00 	mov    0x3b4f(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    1b11:	e8 da f7 ff ff       	call   12f0 <fflush@plt>
    1b16:	bf 01 00 00 00       	mov    $0x1,%edi
    1b1b:	e8 40 f8 ff ff       	call   1360 <sleep@plt>
    1b20:	48 8d 3d e3 17 00 00 	lea    0x17e3(%rip),%rdi        # 330a <array.0+0x20a>
    1b27:	e8 f4 f6 ff ff       	call   1220 <puts@plt>
    1b2c:	bf 10 00 00 00       	mov    $0x10,%edi
    1b31:	e8 fa f7 ff ff       	call   1330 <exit@plt>

0000000000001b36 <invalid_phase>:
    1b36:	f3 0f 1e fa          	endbr64 
    1b3a:	50                   	push   %rax
    1b3b:	58                   	pop    %rax
    1b3c:	48 83 ec 08          	sub    $0x8,%rsp
    1b40:	48 89 fa             	mov    %rdi,%rdx
    1b43:	48 8d 35 c8 17 00 00 	lea    0x17c8(%rip),%rsi        # 3312 <array.0+0x212>
    1b4a:	bf 01 00 00 00       	mov    $0x1,%edi
    1b4f:	b8 00 00 00 00       	mov    $0x0,%eax
    1b54:	e8 b7 f7 ff ff       	call   1310 <__printf_chk@plt>
    1b59:	bf 08 00 00 00       	mov    $0x8,%edi
    1b5e:	e8 cd f7 ff ff       	call   1330 <exit@plt>

0000000000001b63 <string_length>:
    1b63:	f3 0f 1e fa          	endbr64 
    1b67:	80 3f 00             	cmpb   $0x0,(%rdi)
    1b6a:	74 12                	je     1b7e <string_length+0x1b>
    1b6c:	b8 00 00 00 00       	mov    $0x0,%eax
    1b71:	48 83 c7 01          	add    $0x1,%rdi
    1b75:	83 c0 01             	add    $0x1,%eax
    1b78:	80 3f 00             	cmpb   $0x0,(%rdi)
    1b7b:	75 f4                	jne    1b71 <string_length+0xe>
    1b7d:	c3                   	ret    
    1b7e:	b8 00 00 00 00       	mov    $0x0,%eax
    1b83:	c3                   	ret    

0000000000001b84 <strings_not_equal>:
    1b84:	f3 0f 1e fa          	endbr64 
    1b88:	41 54                	push   %r12
    1b8a:	55                   	push   %rbp
    1b8b:	53                   	push   %rbx
    1b8c:	48 89 fb             	mov    %rdi,%rbx
    1b8f:	48 89 f5             	mov    %rsi,%rbp
    1b92:	e8 cc ff ff ff       	call   1b63 <string_length>
    1b97:	41 89 c4             	mov    %eax,%r12d
    1b9a:	48 89 ef             	mov    %rbp,%rdi
    1b9d:	e8 c1 ff ff ff       	call   1b63 <string_length>
    1ba2:	89 c2                	mov    %eax,%edx
    1ba4:	b8 01 00 00 00       	mov    $0x1,%eax
    1ba9:	41 39 d4             	cmp    %edx,%r12d
    1bac:	75 31                	jne    1bdf <strings_not_equal+0x5b>
    1bae:	0f b6 13             	movzbl (%rbx),%edx
    1bb1:	84 d2                	test   %dl,%dl
    1bb3:	74 1e                	je     1bd3 <strings_not_equal+0x4f>
    1bb5:	b8 00 00 00 00       	mov    $0x0,%eax
    1bba:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1bbe:	75 1a                	jne    1bda <strings_not_equal+0x56>
    1bc0:	48 83 c0 01          	add    $0x1,%rax
    1bc4:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1bc8:	84 d2                	test   %dl,%dl
    1bca:	75 ee                	jne    1bba <strings_not_equal+0x36>
    1bcc:	b8 00 00 00 00       	mov    $0x0,%eax
    1bd1:	eb 0c                	jmp    1bdf <strings_not_equal+0x5b>
    1bd3:	b8 00 00 00 00       	mov    $0x0,%eax
    1bd8:	eb 05                	jmp    1bdf <strings_not_equal+0x5b>
    1bda:	b8 01 00 00 00       	mov    $0x1,%eax
    1bdf:	5b                   	pop    %rbx
    1be0:	5d                   	pop    %rbp
    1be1:	41 5c                	pop    %r12
    1be3:	c3                   	ret    

0000000000001be4 <initialize_bomb>:
    1be4:	f3 0f 1e fa          	endbr64 
    1be8:	48 83 ec 08          	sub    $0x8,%rsp
    1bec:	48 8d 35 e1 fe ff ff 	lea    -0x11f(%rip),%rsi        # 1ad4 <sig_handler>
    1bf3:	bf 02 00 00 00       	mov    $0x2,%edi
    1bf8:	e8 b3 f6 ff ff       	call   12b0 <signal@plt>
    1bfd:	48 83 c4 08          	add    $0x8,%rsp
    1c01:	c3                   	ret    

0000000000001c02 <initialize_bomb_solve>:
    1c02:	f3 0f 1e fa          	endbr64 
    1c06:	c3                   	ret    

0000000000001c07 <blank_line>:
    1c07:	f3 0f 1e fa          	endbr64 
    1c0b:	55                   	push   %rbp
    1c0c:	53                   	push   %rbx
    1c0d:	48 83 ec 08          	sub    $0x8,%rsp
    1c11:	48 89 fd             	mov    %rdi,%rbp
    1c14:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1c18:	84 db                	test   %bl,%bl
    1c1a:	74 1e                	je     1c3a <blank_line+0x33>
    1c1c:	e8 4f f7 ff ff       	call   1370 <__ctype_b_loc@plt>
    1c21:	48 83 c5 01          	add    $0x1,%rbp
    1c25:	48 0f be db          	movsbq %bl,%rbx
    1c29:	48 8b 00             	mov    (%rax),%rax
    1c2c:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1c31:	75 e1                	jne    1c14 <blank_line+0xd>
    1c33:	b8 00 00 00 00       	mov    $0x0,%eax
    1c38:	eb 05                	jmp    1c3f <blank_line+0x38>
    1c3a:	b8 01 00 00 00       	mov    $0x1,%eax
    1c3f:	48 83 c4 08          	add    $0x8,%rsp
    1c43:	5b                   	pop    %rbx
    1c44:	5d                   	pop    %rbp
    1c45:	c3                   	ret    

0000000000001c46 <skip>:
    1c46:	f3 0f 1e fa          	endbr64 
    1c4a:	55                   	push   %rbp
    1c4b:	53                   	push   %rbx
    1c4c:	48 83 ec 08          	sub    $0x8,%rsp
    1c50:	48 8d 2d a9 3a 00 00 	lea    0x3aa9(%rip),%rbp        # 5700 <input_strings>
    1c57:	48 63 05 96 3a 00 00 	movslq 0x3a96(%rip),%rax        # 56f4 <num_input_strings>
    1c5e:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1c62:	48 c1 e7 04          	shl    $0x4,%rdi
    1c66:	48 01 ef             	add    %rbp,%rdi
    1c69:	48 8b 15 20 3a 00 00 	mov    0x3a20(%rip),%rdx        # 5690 <infile>
    1c70:	be 50 00 00 00       	mov    $0x50,%esi
    1c75:	e8 16 f6 ff ff       	call   1290 <fgets@plt>
    1c7a:	48 89 c3             	mov    %rax,%rbx
    1c7d:	48 85 c0             	test   %rax,%rax
    1c80:	74 0c                	je     1c8e <skip+0x48>
    1c82:	48 89 c7             	mov    %rax,%rdi
    1c85:	e8 7d ff ff ff       	call   1c07 <blank_line>
    1c8a:	85 c0                	test   %eax,%eax
    1c8c:	75 c9                	jne    1c57 <skip+0x11>
    1c8e:	48 89 d8             	mov    %rbx,%rax
    1c91:	48 83 c4 08          	add    $0x8,%rsp
    1c95:	5b                   	pop    %rbx
    1c96:	5d                   	pop    %rbp
    1c97:	c3                   	ret    

0000000000001c98 <explode_bomb>:
    1c98:	f3 0f 1e fa          	endbr64 
    1c9c:	50                   	push   %rax
    1c9d:	58                   	pop    %rax
    1c9e:	48 83 ec 08          	sub    $0x8,%rsp
    1ca2:	48 8d 3d 7a 16 00 00 	lea    0x167a(%rip),%rdi        # 3323 <array.0+0x223>
    1ca9:	e8 72 f5 ff ff       	call   1220 <puts@plt>
    1cae:	8b 15 40 3a 00 00    	mov    0x3a40(%rip),%edx        # 56f4 <num_input_strings>
    1cb4:	48 8d 35 e5 14 00 00 	lea    0x14e5(%rip),%rsi        # 31a0 <array.0+0xa0>
    1cbb:	bf 01 00 00 00       	mov    $0x1,%edi
    1cc0:	b8 00 00 00 00       	mov    $0x0,%eax
    1cc5:	e8 46 f6 ff ff       	call   1310 <__printf_chk@plt>
    1cca:	8b 15 20 3a 00 00    	mov    0x3a20(%rip),%edx        # 56f0 <score>
    1cd0:	48 8d 35 f1 14 00 00 	lea    0x14f1(%rip),%rsi        # 31c8 <array.0+0xc8>
    1cd7:	bf 01 00 00 00       	mov    $0x1,%edi
    1cdc:	b8 00 00 00 00       	mov    $0x0,%eax
    1ce1:	e8 2a f6 ff ff       	call   1310 <__printf_chk@plt>
    1ce6:	bf 08 00 00 00       	mov    $0x8,%edi
    1ceb:	e8 40 f6 ff ff       	call   1330 <exit@plt>

0000000000001cf0 <read_six_numbers>:
    1cf0:	f3 0f 1e fa          	endbr64 
    1cf4:	48 83 ec 08          	sub    $0x8,%rsp
    1cf8:	48 89 f2             	mov    %rsi,%rdx
    1cfb:	48 8d 4e 04          	lea    0x4(%rsi),%rcx ;rcx = rsi + 4
    1cff:	48 8d 46 14          	lea    0x14(%rsi),%rax ;rax = rsi + 20
    1d03:	50                   	push   %rax
    1d04:	48 8d 46 10          	lea    0x10(%rsi),%rax ;rax = rsi + 16
    1d08:	50                   	push   %rax
    1d09:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9 ;r9 = rsi + 12
    1d0d:	4c 8d 46 08          	lea    0x8(%rsi),%r8 ;r8 = rsi + 8
    1d11:	48 8d 35 14 16 00 00 	lea    0x1614(%rip),%rsi        # 332c <array.0+0x22c>
    1d18:	b8 00 00 00 00       	mov    $0x0,%eax
    1d1d:	e8 de f5 ff ff       	call   1300 <__isoc99_sscanf@plt>
    1d22:	48 83 c4 10          	add    $0x10,%rsp
    1d26:	83 f8 05             	cmp    $0x5,%eax
    1d29:	7e 05                	jle    1d30 <read_six_numbers+0x40>
    1d2b:	48 83 c4 08          	add    $0x8,%rsp
    1d2f:	c3                   	ret    
    1d30:	e8 63 ff ff ff       	call   1c98 <explode_bomb>

0000000000001d35 <read_line>:
    1d35:	f3 0f 1e fa          	endbr64 
    1d39:	55                   	push   %rbp
    1d3a:	53                   	push   %rbx
    1d3b:	48 83 ec 08          	sub    $0x8,%rsp
    1d3f:	b8 00 00 00 00       	mov    $0x0,%eax
    1d44:	e8 fd fe ff ff       	call   1c46 <skip>
    1d49:	48 85 c0             	test   %rax,%rax
    1d4c:	74 5d                	je     1dab <read_line+0x76>
    1d4e:	8b 2d a0 39 00 00    	mov    0x39a0(%rip),%ebp        # 56f4 <num_input_strings>
    1d54:	48 63 c5             	movslq %ebp,%rax
    1d57:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
    1d5b:	48 c1 e3 04          	shl    $0x4,%rbx
    1d5f:	48 8d 05 9a 39 00 00 	lea    0x399a(%rip),%rax        # 5700 <input_strings>
    1d66:	48 01 c3             	add    %rax,%rbx
    1d69:	48 89 df             	mov    %rbx,%rdi
    1d6c:	e8 cf f4 ff ff       	call   1240 <strlen@plt>
    1d71:	83 f8 4e             	cmp    $0x4e,%eax
    1d74:	0f 8f c5 00 00 00    	jg     1e3f <read_line+0x10a>
    1d7a:	83 e8 01             	sub    $0x1,%eax
    1d7d:	48 98                	cltq   
    1d7f:	48 63 d5             	movslq %ebp,%rdx
    1d82:	48 8d 0c 92          	lea    (%rdx,%rdx,4),%rcx
    1d86:	48 c1 e1 04          	shl    $0x4,%rcx
    1d8a:	48 8d 15 6f 39 00 00 	lea    0x396f(%rip),%rdx        # 5700 <input_strings>
    1d91:	48 01 ca             	add    %rcx,%rdx
    1d94:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1d98:	83 c5 01             	add    $0x1,%ebp
    1d9b:	89 2d 53 39 00 00    	mov    %ebp,0x3953(%rip)        # 56f4 <num_input_strings>
    1da1:	48 89 d8             	mov    %rbx,%rax
    1da4:	48 83 c4 08          	add    $0x8,%rsp
    1da8:	5b                   	pop    %rbx
    1da9:	5d                   	pop    %rbp
    1daa:	c3                   	ret    
    1dab:	48 8b 05 be 38 00 00 	mov    0x38be(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    1db2:	48 39 05 d7 38 00 00 	cmp    %rax,0x38d7(%rip)        # 5690 <infile>
    1db9:	74 1b                	je     1dd6 <read_line+0xa1>
    1dbb:	48 8d 3d 9a 15 00 00 	lea    0x159a(%rip),%rdi        # 335c <array.0+0x25c>
    1dc2:	e8 29 f4 ff ff       	call   11f0 <getenv@plt>
    1dc7:	48 85 c0             	test   %rax,%rax
    1dca:	74 3c                	je     1e08 <read_line+0xd3>
    1dcc:	bf 00 00 00 00       	mov    $0x0,%edi
    1dd1:	e8 5a f5 ff ff       	call   1330 <exit@plt>
    1dd6:	48 8d 3d 61 15 00 00 	lea    0x1561(%rip),%rdi        # 333e <array.0+0x23e>
    1ddd:	e8 3e f4 ff ff       	call   1220 <puts@plt>
    1de2:	8b 15 08 39 00 00    	mov    0x3908(%rip),%edx        # 56f0 <score>
    1de8:	48 8d 35 09 14 00 00 	lea    0x1409(%rip),%rsi        # 31f8 <array.0+0xf8>
    1def:	bf 01 00 00 00       	mov    $0x1,%edi
    1df4:	b8 00 00 00 00       	mov    $0x0,%eax
    1df9:	e8 12 f5 ff ff       	call   1310 <__printf_chk@plt>
    1dfe:	bf 08 00 00 00       	mov    $0x8,%edi
    1e03:	e8 28 f5 ff ff       	call   1330 <exit@plt>
    1e08:	48 8b 05 61 38 00 00 	mov    0x3861(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    1e0f:	48 89 05 7a 38 00 00 	mov    %rax,0x387a(%rip)        # 5690 <infile>
    1e16:	b8 00 00 00 00       	mov    $0x0,%eax
    1e1b:	e8 26 fe ff ff       	call   1c46 <skip>
    1e20:	48 85 c0             	test   %rax,%rax
    1e23:	0f 85 25 ff ff ff    	jne    1d4e <read_line+0x19>
    1e29:	48 8d 3d 0e 15 00 00 	lea    0x150e(%rip),%rdi        # 333e <array.0+0x23e>
    1e30:	e8 eb f3 ff ff       	call   1220 <puts@plt>
    1e35:	bf 00 00 00 00       	mov    $0x0,%edi
    1e3a:	e8 f1 f4 ff ff       	call   1330 <exit@plt>
    1e3f:	48 8d 3d 21 15 00 00 	lea    0x1521(%rip),%rdi        # 3367 <array.0+0x267>
    1e46:	e8 d5 f3 ff ff       	call   1220 <puts@plt>
    1e4b:	8b 05 a3 38 00 00    	mov    0x38a3(%rip),%eax        # 56f4 <num_input_strings>
    1e51:	8d 50 01             	lea    0x1(%rax),%edx
    1e54:	89 15 9a 38 00 00    	mov    %edx,0x389a(%rip)        # 56f4 <num_input_strings>
    1e5a:	48 98                	cltq   
    1e5c:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1e60:	48 8d 15 99 38 00 00 	lea    0x3899(%rip),%rdx        # 5700 <input_strings>
    1e67:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1e6e:	75 6e 63 
    1e71:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1e78:	2a 2a 00 
    1e7b:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1e7f:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1e84:	e8 0f fe ff ff       	call   1c98 <explode_bomb>

0000000000001e89 <phase_defused>:
    1e89:	f3 0f 1e fa          	endbr64 
    1e8d:	48 83 ec 78          	sub    $0x78,%rsp
    1e91:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1e98:	00 00 
    1e9a:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1e9f:	31 c0                	xor    %eax,%eax
    1ea1:	8b 15 4d 38 00 00    	mov    0x384d(%rip),%edx        # 56f4 <num_input_strings>
    1ea7:	83 fa 03             	cmp    $0x3,%edx
    1eaa:	7f 5b                	jg     1f07 <phase_defused+0x7e>
    1eac:	83 05 3d 38 00 00 1e 	addl   $0x1e,0x383d(%rip)        # 56f0 <score>
    1eb3:	48 8d 35 c8 14 00 00 	lea    0x14c8(%rip),%rsi        # 3382 <array.0+0x282>
    1eba:	bf 01 00 00 00       	mov    $0x1,%edi
    1ebf:	b8 00 00 00 00       	mov    $0x0,%eax
    1ec4:	e8 47 f4 ff ff       	call   1310 <__printf_chk@plt>
    1ec9:	8b 15 21 38 00 00    	mov    0x3821(%rip),%edx        # 56f0 <score>
    1ecf:	48 8d 35 22 13 00 00 	lea    0x1322(%rip),%rsi        # 31f8 <array.0+0xf8>
    1ed6:	bf 01 00 00 00       	mov    $0x1,%edi
    1edb:	b8 00 00 00 00       	mov    $0x0,%eax
    1ee0:	e8 2b f4 ff ff       	call   1310 <__printf_chk@plt>
    1ee5:	83 3d 08 38 00 00 06 	cmpl   $0x6,0x3808(%rip)        # 56f4 <num_input_strings>
    1eec:	74 27                	je     1f15 <phase_defused+0x8c>
    1eee:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1ef3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1efa:	00 00 
    1efc:	0f 85 9e 00 00 00    	jne    1fa0 <phase_defused+0x117>
    1f02:	48 83 c4 78          	add    $0x78,%rsp
    1f06:	c3                   	ret    
    1f07:	83 fa 04             	cmp    $0x4,%edx
    1f0a:	75 a7                	jne    1eb3 <phase_defused+0x2a>
    1f0c:	83 05 dd 37 00 00 0a 	addl   $0xa,0x37dd(%rip)        # 56f0 <score>
    1f13:	eb 9e                	jmp    1eb3 <phase_defused+0x2a>
    1f15:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1f1a:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1f1f:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1f24:	48 8d 35 75 14 00 00 	lea    0x1475(%rip),%rsi        # 33a0 <array.0+0x2a0>
    1f2b:	48 8d 3d be 38 00 00 	lea    0x38be(%rip),%rdi        # 57f0 <input_strings+0xf0>
    1f32:	b8 00 00 00 00       	mov    $0x0,%eax
    1f37:	e8 c4 f3 ff ff       	call   1300 <__isoc99_sscanf@plt>
    1f3c:	83 f8 03             	cmp    $0x3,%eax
    1f3f:	74 1a                	je     1f5b <phase_defused+0xd2>
    1f41:	48 8d 3d 90 13 00 00 	lea    0x1390(%rip),%rdi        # 32d8 <array.0+0x1d8>
    1f48:	e8 d3 f2 ff ff       	call   1220 <puts@plt>
    1f4d:	48 8d 3d 5c 14 00 00 	lea    0x145c(%rip),%rdi        # 33b0 <array.0+0x2b0>
    1f54:	e8 c7 f2 ff ff       	call   1220 <puts@plt>
    1f59:	eb 93                	jmp    1eee <phase_defused+0x65>
    1f5b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1f60:	48 8d 35 42 14 00 00 	lea    0x1442(%rip),%rsi        # 33a9 <array.0+0x2a9>
    1f67:	e8 18 fc ff ff       	call   1b84 <strings_not_equal>
    1f6c:	85 c0                	test   %eax,%eax
    1f6e:	75 d1                	jne    1f41 <phase_defused+0xb8>
    1f70:	48 8d 3d a9 12 00 00 	lea    0x12a9(%rip),%rdi        # 3220 <array.0+0x120>
    1f77:	e8 a4 f2 ff ff       	call   1220 <puts@plt>
    1f7c:	48 8d 3d c5 12 00 00 	lea    0x12c5(%rip),%rdi        # 3248 <array.0+0x148>
    1f83:	e8 98 f2 ff ff       	call   1220 <puts@plt>
    1f88:	b8 00 00 00 00       	mov    $0x0,%eax
    1f8d:	e8 e6 fa ff ff       	call   1a78 <secret_phase>
    1f92:	48 8d 3d e7 12 00 00 	lea    0x12e7(%rip),%rdi        # 3280 <array.0+0x180>
    1f99:	e8 82 f2 ff ff       	call   1220 <puts@plt>
    1f9e:	eb a1                	jmp    1f41 <phase_defused+0xb8>
    1fa0:	e8 ab f2 ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001fa5 <sigalrm_handler>:
    1fa5:	f3 0f 1e fa          	endbr64 
    1fa9:	50                   	push   %rax
    1faa:	58                   	pop    %rax
    1fab:	48 83 ec 08          	sub    $0x8,%rsp
    1faf:	b9 00 00 00 00       	mov    $0x0,%ecx
    1fb4:	48 8d 15 6d 14 00 00 	lea    0x146d(%rip),%rdx        # 3428 <array.0+0x328>
    1fbb:	be 01 00 00 00       	mov    $0x1,%esi
    1fc0:	48 8b 3d b9 36 00 00 	mov    0x36b9(%rip),%rdi        # 5680 <stderr@GLIBC_2.2.5>
    1fc7:	b8 00 00 00 00       	mov    $0x0,%eax
    1fcc:	e8 7f f3 ff ff       	call   1350 <__fprintf_chk@plt>
    1fd1:	bf 01 00 00 00       	mov    $0x1,%edi
    1fd6:	e8 55 f3 ff ff       	call   1330 <exit@plt>

0000000000001fdb <rio_readlineb>:
    1fdb:	41 56                	push   %r14
    1fdd:	41 55                	push   %r13
    1fdf:	41 54                	push   %r12
    1fe1:	55                   	push   %rbp
    1fe2:	53                   	push   %rbx
    1fe3:	49 89 f4             	mov    %rsi,%r12
    1fe6:	48 83 fa 01          	cmp    $0x1,%rdx
    1fea:	0f 86 92 00 00 00    	jbe    2082 <rio_readlineb+0xa7>
    1ff0:	48 89 fb             	mov    %rdi,%rbx
    1ff3:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1ff8:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1ffe:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    2002:	eb 56                	jmp    205a <rio_readlineb+0x7f>
    2004:	e8 f7 f1 ff ff       	call   1200 <__errno_location@plt>
    2009:	83 38 04             	cmpl   $0x4,(%rax)
    200c:	75 55                	jne    2063 <rio_readlineb+0x88>
    200e:	ba 00 20 00 00       	mov    $0x2000,%edx
    2013:	48 89 ee             	mov    %rbp,%rsi
    2016:	8b 3b                	mov    (%rbx),%edi
    2018:	e8 63 f2 ff ff       	call   1280 <read@plt>
    201d:	89 c2                	mov    %eax,%edx
    201f:	89 43 04             	mov    %eax,0x4(%rbx)
    2022:	85 c0                	test   %eax,%eax
    2024:	78 de                	js     2004 <rio_readlineb+0x29>
    2026:	85 c0                	test   %eax,%eax
    2028:	74 42                	je     206c <rio_readlineb+0x91>
    202a:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    202e:	48 8b 43 08          	mov    0x8(%rbx),%rax
    2032:	0f b6 08             	movzbl (%rax),%ecx
    2035:	48 83 c0 01          	add    $0x1,%rax
    2039:	48 89 43 08          	mov    %rax,0x8(%rbx)
    203d:	83 ea 01             	sub    $0x1,%edx
    2040:	89 53 04             	mov    %edx,0x4(%rbx)
    2043:	49 83 c4 01          	add    $0x1,%r12
    2047:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    204c:	80 f9 0a             	cmp    $0xa,%cl
    204f:	74 3c                	je     208d <rio_readlineb+0xb2>
    2051:	41 83 c5 01          	add    $0x1,%r13d
    2055:	4d 39 f4             	cmp    %r14,%r12
    2058:	74 30                	je     208a <rio_readlineb+0xaf>
    205a:	8b 53 04             	mov    0x4(%rbx),%edx
    205d:	85 d2                	test   %edx,%edx
    205f:	7e ad                	jle    200e <rio_readlineb+0x33>
    2061:	eb cb                	jmp    202e <rio_readlineb+0x53>
    2063:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    206a:	eb 05                	jmp    2071 <rio_readlineb+0x96>
    206c:	b8 00 00 00 00       	mov    $0x0,%eax
    2071:	85 c0                	test   %eax,%eax
    2073:	75 29                	jne    209e <rio_readlineb+0xc3>
    2075:	b8 00 00 00 00       	mov    $0x0,%eax
    207a:	41 83 fd 01          	cmp    $0x1,%r13d
    207e:	75 0d                	jne    208d <rio_readlineb+0xb2>
    2080:	eb 13                	jmp    2095 <rio_readlineb+0xba>
    2082:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2088:	eb 03                	jmp    208d <rio_readlineb+0xb2>
    208a:	4d 89 f4             	mov    %r14,%r12
    208d:	41 c6 04 24 00       	movb   $0x0,(%r12)
    2092:	49 63 c5             	movslq %r13d,%rax
    2095:	5b                   	pop    %rbx
    2096:	5d                   	pop    %rbp
    2097:	41 5c                	pop    %r12
    2099:	41 5d                	pop    %r13
    209b:	41 5e                	pop    %r14
    209d:	c3                   	ret    
    209e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    20a5:	eb ee                	jmp    2095 <rio_readlineb+0xba>

00000000000020a7 <submitr>:
    20a7:	f3 0f 1e fa          	endbr64 
    20ab:	41 57                	push   %r15
    20ad:	41 56                	push   %r14
    20af:	41 55                	push   %r13
    20b1:	41 54                	push   %r12
    20b3:	55                   	push   %rbp
    20b4:	53                   	push   %rbx
    20b5:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    20bc:	ff 
    20bd:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    20c4:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    20c9:	4c 39 dc             	cmp    %r11,%rsp
    20cc:	75 ef                	jne    20bd <submitr+0x16>
    20ce:	48 83 ec 78          	sub    $0x78,%rsp
    20d2:	49 89 fd             	mov    %rdi,%r13
    20d5:	89 f5                	mov    %esi,%ebp
    20d7:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    20dc:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    20e1:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    20e6:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    20eb:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    20f2:	00 
    20f3:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    20fa:	00 
    20fb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2102:	00 00 
    2104:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    210b:	00 
    210c:	31 c0                	xor    %eax,%eax
    210e:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    2115:	00 
    2116:	ba 00 00 00 00       	mov    $0x0,%edx
    211b:	be 01 00 00 00       	mov    $0x1,%esi
    2120:	bf 02 00 00 00       	mov    $0x2,%edi
    2125:	e8 66 f2 ff ff       	call   1390 <socket@plt>
    212a:	85 c0                	test   %eax,%eax
    212c:	0f 88 12 01 00 00    	js     2244 <submitr+0x19d>
    2132:	41 89 c4             	mov    %eax,%r12d
    2135:	4c 89 ef             	mov    %r13,%rdi
    2138:	e8 83 f1 ff ff       	call   12c0 <gethostbyname@plt>
    213d:	48 85 c0             	test   %rax,%rax
    2140:	0f 84 4e 01 00 00    	je     2294 <submitr+0x1ed>
    2146:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    214b:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    2152:	00 00 
    2154:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    215b:	00 00 
    215d:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    2164:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2168:	48 8b 40 18          	mov    0x18(%rax),%rax
    216c:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    2171:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2176:	48 8b 30             	mov    (%rax),%rsi
    2179:	e8 52 f1 ff ff       	call   12d0 <__memmove_chk@plt>
    217e:	66 c1 c5 08          	rol    $0x8,%bp
    2182:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    2187:	ba 10 00 00 00       	mov    $0x10,%edx
    218c:	4c 89 ee             	mov    %r13,%rsi
    218f:	44 89 e7             	mov    %r12d,%edi
    2192:	e8 a9 f1 ff ff       	call   1340 <connect@plt>
    2197:	85 c0                	test   %eax,%eax
    2199:	0f 88 60 01 00 00    	js     22ff <submitr+0x258>
    219f:	48 89 df             	mov    %rbx,%rdi
    21a2:	e8 99 f0 ff ff       	call   1240 <strlen@plt>
    21a7:	48 89 c5             	mov    %rax,%rbp
    21aa:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    21af:	e8 8c f0 ff ff       	call   1240 <strlen@plt>
    21b4:	49 89 c6             	mov    %rax,%r14
    21b7:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    21bc:	e8 7f f0 ff ff       	call   1240 <strlen@plt>
    21c1:	49 89 c5             	mov    %rax,%r13
    21c4:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    21c9:	e8 72 f0 ff ff       	call   1240 <strlen@plt>
    21ce:	48 89 c2             	mov    %rax,%rdx
    21d1:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    21d8:	00 
    21d9:	48 01 d0             	add    %rdx,%rax
    21dc:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    21e1:	48 01 d0             	add    %rdx,%rax
    21e4:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    21ea:	0f 87 6c 01 00 00    	ja     235c <submitr+0x2b5>
    21f0:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    21f7:	00 
    21f8:	b9 00 04 00 00       	mov    $0x400,%ecx
    21fd:	b8 00 00 00 00       	mov    $0x0,%eax
    2202:	48 89 d7             	mov    %rdx,%rdi
    2205:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2208:	48 89 df             	mov    %rbx,%rdi
    220b:	e8 30 f0 ff ff       	call   1240 <strlen@plt>
    2210:	85 c0                	test   %eax,%eax
    2212:	0f 84 07 05 00 00    	je     271f <submitr+0x678>
    2218:	8d 40 ff             	lea    -0x1(%rax),%eax
    221b:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    2220:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    2227:	00 
    2228:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    222f:	00 
    2230:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    2235:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    223c:	00 20 00 
    223f:	e9 a6 01 00 00       	jmp    23ea <submitr+0x343>
    2244:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    224b:	3a 20 43 
    224e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2255:	20 75 6e 
    2258:	49 89 07             	mov    %rax,(%r15)
    225b:	49 89 57 08          	mov    %rdx,0x8(%r15)
    225f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2266:	74 6f 20 
    2269:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2270:	65 20 73 
    2273:	49 89 47 10          	mov    %rax,0x10(%r15)
    2277:	49 89 57 18          	mov    %rdx,0x18(%r15)
    227b:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2282:	65 
    2283:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    228a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    228f:	e9 03 03 00 00       	jmp    2597 <submitr+0x4f0>
    2294:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    229b:	3a 20 44 
    229e:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    22a5:	20 75 6e 
    22a8:	49 89 07             	mov    %rax,(%r15)
    22ab:	49 89 57 08          	mov    %rdx,0x8(%r15)
    22af:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    22b6:	74 6f 20 
    22b9:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    22c0:	76 65 20 
    22c3:	49 89 47 10          	mov    %rax,0x10(%r15)
    22c7:	49 89 57 18          	mov    %rdx,0x18(%r15)
    22cb:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    22d2:	72 20 61 
    22d5:	49 89 47 20          	mov    %rax,0x20(%r15)
    22d9:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    22e0:	65 
    22e1:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    22e8:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    22ed:	44 89 e7             	mov    %r12d,%edi
    22f0:	e8 7b ef ff ff       	call   1270 <close@plt>
    22f5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22fa:	e9 98 02 00 00       	jmp    2597 <submitr+0x4f0>
    22ff:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2306:	3a 20 55 
    2309:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2310:	20 74 6f 
    2313:	49 89 07             	mov    %rax,(%r15)
    2316:	49 89 57 08          	mov    %rdx,0x8(%r15)
    231a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2321:	65 63 74 
    2324:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    232b:	68 65 20 
    232e:	49 89 47 10          	mov    %rax,0x10(%r15)
    2332:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2336:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    233d:	76 
    233e:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2345:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    234a:	44 89 e7             	mov    %r12d,%edi
    234d:	e8 1e ef ff ff       	call   1270 <close@plt>
    2352:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2357:	e9 3b 02 00 00       	jmp    2597 <submitr+0x4f0>
    235c:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2363:	3a 20 52 
    2366:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    236d:	20 73 74 
    2370:	49 89 07             	mov    %rax,(%r15)
    2373:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2377:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    237e:	74 6f 6f 
    2381:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2388:	65 2e 20 
    238b:	49 89 47 10          	mov    %rax,0x10(%r15)
    238f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2393:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    239a:	61 73 65 
    239d:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    23a4:	49 54 52 
    23a7:	49 89 47 20          	mov    %rax,0x20(%r15)
    23ab:	49 89 57 28          	mov    %rdx,0x28(%r15)
    23af:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    23b6:	55 46 00 
    23b9:	49 89 47 30          	mov    %rax,0x30(%r15)
    23bd:	44 89 e7             	mov    %r12d,%edi
    23c0:	e8 ab ee ff ff       	call   1270 <close@plt>
    23c5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    23ca:	e9 c8 01 00 00       	jmp    2597 <submitr+0x4f0>
    23cf:	49 0f a3 c6          	bt     %rax,%r14
    23d3:	73 21                	jae    23f6 <submitr+0x34f>
    23d5:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    23d9:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    23dd:	48 83 c3 01          	add    $0x1,%rbx
    23e1:	4c 39 eb             	cmp    %r13,%rbx
    23e4:	0f 84 35 03 00 00    	je     271f <submitr+0x678>
    23ea:	44 0f b6 03          	movzbl (%rbx),%r8d
    23ee:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    23f2:	3c 35                	cmp    $0x35,%al
    23f4:	76 d9                	jbe    23cf <submitr+0x328>
    23f6:	44 89 c0             	mov    %r8d,%eax
    23f9:	83 e0 df             	and    $0xffffffdf,%eax
    23fc:	83 e8 41             	sub    $0x41,%eax
    23ff:	3c 19                	cmp    $0x19,%al
    2401:	76 d2                	jbe    23d5 <submitr+0x32e>
    2403:	41 80 f8 20          	cmp    $0x20,%r8b
    2407:	74 60                	je     2469 <submitr+0x3c2>
    2409:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    240d:	3c 5f                	cmp    $0x5f,%al
    240f:	76 0a                	jbe    241b <submitr+0x374>
    2411:	41 80 f8 09          	cmp    $0x9,%r8b
    2415:	0f 85 77 02 00 00    	jne    2692 <submitr+0x5eb>
    241b:	45 0f b6 c0          	movzbl %r8b,%r8d
    241f:	48 8d 0d d8 10 00 00 	lea    0x10d8(%rip),%rcx        # 34fe <array.0+0x3fe>
    2426:	ba 08 00 00 00       	mov    $0x8,%edx
    242b:	be 01 00 00 00       	mov    $0x1,%esi
    2430:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    2435:	b8 00 00 00 00       	mov    $0x0,%eax
    243a:	e8 41 ef ff ff       	call   1380 <__sprintf_chk@plt>
    243f:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    2446:	00 
    2447:	88 45 00             	mov    %al,0x0(%rbp)
    244a:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    2451:	00 
    2452:	88 45 01             	mov    %al,0x1(%rbp)
    2455:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    245c:	00 
    245d:	88 45 02             	mov    %al,0x2(%rbp)
    2460:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2464:	e9 74 ff ff ff       	jmp    23dd <submitr+0x336>
    2469:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    246d:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2471:	e9 67 ff ff ff       	jmp    23dd <submitr+0x336>
    2476:	48 01 c5             	add    %rax,%rbp
    2479:	48 29 c3             	sub    %rax,%rbx
    247c:	0f 84 08 03 00 00    	je     278a <submitr+0x6e3>
    2482:	48 89 da             	mov    %rbx,%rdx
    2485:	48 89 ee             	mov    %rbp,%rsi
    2488:	44 89 e7             	mov    %r12d,%edi
    248b:	e8 a0 ed ff ff       	call   1230 <write@plt>
    2490:	48 85 c0             	test   %rax,%rax
    2493:	7f e1                	jg     2476 <submitr+0x3cf>
    2495:	e8 66 ed ff ff       	call   1200 <__errno_location@plt>
    249a:	83 38 04             	cmpl   $0x4,(%rax)
    249d:	0f 85 90 01 00 00    	jne    2633 <submitr+0x58c>
    24a3:	4c 89 e8             	mov    %r13,%rax
    24a6:	eb ce                	jmp    2476 <submitr+0x3cf>
    24a8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24af:	3a 20 43 
    24b2:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24b9:	20 75 6e 
    24bc:	49 89 07             	mov    %rax,(%r15)
    24bf:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24c3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24ca:	74 6f 20 
    24cd:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    24d4:	66 69 72 
    24d7:	49 89 47 10          	mov    %rax,0x10(%r15)
    24db:	49 89 57 18          	mov    %rdx,0x18(%r15)
    24df:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    24e6:	61 64 65 
    24e9:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    24f0:	6d 20 73 
    24f3:	49 89 47 20          	mov    %rax,0x20(%r15)
    24f7:	49 89 57 28          	mov    %rdx,0x28(%r15)
    24fb:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2502:	65 
    2503:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    250a:	44 89 e7             	mov    %r12d,%edi
    250d:	e8 5e ed ff ff       	call   1270 <close@plt>
    2512:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2517:	eb 7e                	jmp    2597 <submitr+0x4f0>
    2519:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    2520:	00 
    2521:	48 8d 0d 28 0f 00 00 	lea    0xf28(%rip),%rcx        # 3450 <array.0+0x350>
    2528:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    252f:	be 01 00 00 00       	mov    $0x1,%esi
    2534:	4c 89 ff             	mov    %r15,%rdi
    2537:	b8 00 00 00 00       	mov    $0x0,%eax
    253c:	e8 3f ee ff ff       	call   1380 <__sprintf_chk@plt>
    2541:	44 89 e7             	mov    %r12d,%edi
    2544:	e8 27 ed ff ff       	call   1270 <close@plt>
    2549:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    254e:	eb 47                	jmp    2597 <submitr+0x4f0>
    2550:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2557:	00 
    2558:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    255d:	ba 00 20 00 00       	mov    $0x2000,%edx
    2562:	e8 74 fa ff ff       	call   1fdb <rio_readlineb>
    2567:	48 85 c0             	test   %rax,%rax
    256a:	7e 54                	jle    25c0 <submitr+0x519>
    256c:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2573:	00 
    2574:	4c 89 ff             	mov    %r15,%rdi
    2577:	e8 94 ec ff ff       	call   1210 <strcpy@plt>
    257c:	44 89 e7             	mov    %r12d,%edi
    257f:	e8 ec ec ff ff       	call   1270 <close@plt>
    2584:	48 8d 35 8e 0f 00 00 	lea    0xf8e(%rip),%rsi        # 3519 <array.0+0x419>
    258b:	4c 89 ff             	mov    %r15,%rdi
    258e:	e8 0d ed ff ff       	call   12a0 <strcmp@plt>
    2593:	f7 d8                	neg    %eax
    2595:	19 c0                	sbb    %eax,%eax
    2597:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    259e:	00 
    259f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    25a6:	00 00 
    25a8:	0f 85 f8 02 00 00    	jne    28a6 <submitr+0x7ff>
    25ae:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    25b5:	5b                   	pop    %rbx
    25b6:	5d                   	pop    %rbp
    25b7:	41 5c                	pop    %r12
    25b9:	41 5d                	pop    %r13
    25bb:	41 5e                	pop    %r14
    25bd:	41 5f                	pop    %r15
    25bf:	c3                   	ret    
    25c0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    25c7:	3a 20 43 
    25ca:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    25d1:	20 75 6e 
    25d4:	49 89 07             	mov    %rax,(%r15)
    25d7:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25db:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    25e2:	74 6f 20 
    25e5:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    25ec:	73 74 61 
    25ef:	49 89 47 10          	mov    %rax,0x10(%r15)
    25f3:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25f7:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    25fe:	65 73 73 
    2601:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2608:	72 6f 6d 
    260b:	49 89 47 20          	mov    %rax,0x20(%r15)
    260f:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2613:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    261a:	65 72 00 
    261d:	49 89 47 30          	mov    %rax,0x30(%r15)
    2621:	44 89 e7             	mov    %r12d,%edi
    2624:	e8 47 ec ff ff       	call   1270 <close@plt>
    2629:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    262e:	e9 64 ff ff ff       	jmp    2597 <submitr+0x4f0>
    2633:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    263a:	3a 20 43 
    263d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2644:	20 75 6e 
    2647:	49 89 07             	mov    %rax,(%r15)
    264a:	49 89 57 08          	mov    %rdx,0x8(%r15)
    264e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2655:	74 6f 20 
    2658:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    265f:	20 74 6f 
    2662:	49 89 47 10          	mov    %rax,0x10(%r15)
    2666:	49 89 57 18          	mov    %rdx,0x18(%r15)
    266a:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2671:	73 65 72 
    2674:	49 89 47 20          	mov    %rax,0x20(%r15)
    2678:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    267f:	00 
    2680:	44 89 e7             	mov    %r12d,%edi
    2683:	e8 e8 eb ff ff       	call   1270 <close@plt>
    2688:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    268d:	e9 05 ff ff ff       	jmp    2597 <submitr+0x4f0>
    2692:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2699:	3a 20 52 
    269c:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    26a3:	20 73 74 
    26a6:	49 89 07             	mov    %rax,(%r15)
    26a9:	49 89 57 08          	mov    %rdx,0x8(%r15)
    26ad:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    26b4:	63 6f 6e 
    26b7:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    26be:	20 61 6e 
    26c1:	49 89 47 10          	mov    %rax,0x10(%r15)
    26c5:	49 89 57 18          	mov    %rdx,0x18(%r15)
    26c9:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    26d0:	67 61 6c 
    26d3:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    26da:	6e 70 72 
    26dd:	49 89 47 20          	mov    %rax,0x20(%r15)
    26e1:	49 89 57 28          	mov    %rdx,0x28(%r15)
    26e5:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    26ec:	6c 65 20 
    26ef:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    26f6:	63 74 65 
    26f9:	49 89 47 30          	mov    %rax,0x30(%r15)
    26fd:	49 89 57 38          	mov    %rdx,0x38(%r15)
    2701:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2708:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    270d:	44 89 e7             	mov    %r12d,%edi
    2710:	e8 5b eb ff ff       	call   1270 <close@plt>
    2715:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    271a:	e9 78 fe ff ff       	jmp    2597 <submitr+0x4f0>
    271f:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    2726:	00 
    2727:	48 83 ec 08          	sub    $0x8,%rsp
    272b:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    2732:	00 
    2733:	50                   	push   %rax
    2734:	ff 74 24 28          	push   0x28(%rsp)
    2738:	ff 74 24 38          	push   0x38(%rsp)
    273c:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    2741:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    2746:	48 8d 0d 33 0d 00 00 	lea    0xd33(%rip),%rcx        # 3480 <array.0+0x380>
    274d:	ba 00 20 00 00       	mov    $0x2000,%edx
    2752:	be 01 00 00 00       	mov    $0x1,%esi
    2757:	48 89 df             	mov    %rbx,%rdi
    275a:	b8 00 00 00 00       	mov    $0x0,%eax
    275f:	e8 1c ec ff ff       	call   1380 <__sprintf_chk@plt>
    2764:	48 83 c4 20          	add    $0x20,%rsp
    2768:	48 89 df             	mov    %rbx,%rdi
    276b:	e8 d0 ea ff ff       	call   1240 <strlen@plt>
    2770:	48 89 c3             	mov    %rax,%rbx
    2773:	48 8d ac 24 60 20 00 	lea    0x2060(%rsp),%rbp
    277a:	00 
    277b:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    2781:	48 85 c0             	test   %rax,%rax
    2784:	0f 85 f8 fc ff ff    	jne    2482 <submitr+0x3db>
    278a:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    278f:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    2796:	00 
    2797:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    279c:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    27a1:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    27a6:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    27ad:	00 
    27ae:	ba 00 20 00 00       	mov    $0x2000,%edx
    27b3:	e8 23 f8 ff ff       	call   1fdb <rio_readlineb>
    27b8:	48 85 c0             	test   %rax,%rax
    27bb:	0f 8e e7 fc ff ff    	jle    24a8 <submitr+0x401>
    27c1:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    27c6:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    27cd:	00 
    27ce:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    27d5:	00 
    27d6:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    27dd:	00 
    27de:	48 8d 35 20 0d 00 00 	lea    0xd20(%rip),%rsi        # 3505 <array.0+0x405>
    27e5:	b8 00 00 00 00       	mov    $0x0,%eax
    27ea:	e8 11 eb ff ff       	call   1300 <__isoc99_sscanf@plt>
    27ef:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    27f4:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    27fb:	0f 85 18 fd ff ff    	jne    2519 <submitr+0x472>
    2801:	48 8d 1d 0e 0d 00 00 	lea    0xd0e(%rip),%rbx        # 3516 <array.0+0x416>
    2808:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    280f:	00 
    2810:	48 89 de             	mov    %rbx,%rsi
    2813:	e8 88 ea ff ff       	call   12a0 <strcmp@plt>
    2818:	85 c0                	test   %eax,%eax
    281a:	0f 84 30 fd ff ff    	je     2550 <submitr+0x4a9>
    2820:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2827:	00 
    2828:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    282d:	ba 00 20 00 00       	mov    $0x2000,%edx
    2832:	e8 a4 f7 ff ff       	call   1fdb <rio_readlineb>
    2837:	48 85 c0             	test   %rax,%rax
    283a:	7f cc                	jg     2808 <submitr+0x761>
    283c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2843:	3a 20 43 
    2846:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    284d:	20 75 6e 
    2850:	49 89 07             	mov    %rax,(%r15)
    2853:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2857:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    285e:	74 6f 20 
    2861:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2868:	68 65 61 
    286b:	49 89 47 10          	mov    %rax,0x10(%r15)
    286f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2873:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    287a:	66 72 6f 
    287d:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2884:	76 65 72 
    2887:	49 89 47 20          	mov    %rax,0x20(%r15)
    288b:	49 89 57 28          	mov    %rdx,0x28(%r15)
    288f:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2894:	44 89 e7             	mov    %r12d,%edi
    2897:	e8 d4 e9 ff ff       	call   1270 <close@plt>
    289c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28a1:	e9 f1 fc ff ff       	jmp    2597 <submitr+0x4f0>
    28a6:	e8 a5 e9 ff ff       	call   1250 <__stack_chk_fail@plt>

00000000000028ab <init_timeout>:
    28ab:	f3 0f 1e fa          	endbr64 
    28af:	85 ff                	test   %edi,%edi
    28b1:	75 01                	jne    28b4 <init_timeout+0x9>
    28b3:	c3                   	ret    
    28b4:	53                   	push   %rbx
    28b5:	89 fb                	mov    %edi,%ebx
    28b7:	48 8d 35 e7 f6 ff ff 	lea    -0x919(%rip),%rsi        # 1fa5 <sigalrm_handler>
    28be:	bf 0e 00 00 00       	mov    $0xe,%edi
    28c3:	e8 e8 e9 ff ff       	call   12b0 <signal@plt>
    28c8:	85 db                	test   %ebx,%ebx
    28ca:	b8 00 00 00 00       	mov    $0x0,%eax
    28cf:	0f 49 c3             	cmovns %ebx,%eax
    28d2:	89 c7                	mov    %eax,%edi
    28d4:	e8 87 e9 ff ff       	call   1260 <alarm@plt>
    28d9:	5b                   	pop    %rbx
    28da:	c3                   	ret    

00000000000028db <init_driver>:
    28db:	f3 0f 1e fa          	endbr64 
    28df:	41 54                	push   %r12
    28e1:	55                   	push   %rbp
    28e2:	53                   	push   %rbx
    28e3:	48 83 ec 20          	sub    $0x20,%rsp
    28e7:	48 89 fd             	mov    %rdi,%rbp
    28ea:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    28f1:	00 00 
    28f3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    28f8:	31 c0                	xor    %eax,%eax
    28fa:	be 01 00 00 00       	mov    $0x1,%esi
    28ff:	bf 0d 00 00 00       	mov    $0xd,%edi
    2904:	e8 a7 e9 ff ff       	call   12b0 <signal@plt>
    2909:	be 01 00 00 00       	mov    $0x1,%esi
    290e:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2913:	e8 98 e9 ff ff       	call   12b0 <signal@plt>
    2918:	be 01 00 00 00       	mov    $0x1,%esi
    291d:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2922:	e8 89 e9 ff ff       	call   12b0 <signal@plt>
    2927:	ba 00 00 00 00       	mov    $0x0,%edx
    292c:	be 01 00 00 00       	mov    $0x1,%esi
    2931:	bf 02 00 00 00       	mov    $0x2,%edi
    2936:	e8 55 ea ff ff       	call   1390 <socket@plt>
    293b:	85 c0                	test   %eax,%eax
    293d:	0f 88 9c 00 00 00    	js     29df <init_driver+0x104>
    2943:	89 c3                	mov    %eax,%ebx
    2945:	48 8d 3d d0 0b 00 00 	lea    0xbd0(%rip),%rdi        # 351c <array.0+0x41c>
    294c:	e8 6f e9 ff ff       	call   12c0 <gethostbyname@plt>
    2951:	48 85 c0             	test   %rax,%rax
    2954:	0f 84 d1 00 00 00    	je     2a2b <init_driver+0x150>
    295a:	49 89 e4             	mov    %rsp,%r12
    295d:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2964:	00 
    2965:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    296c:	00 00 
    296e:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2974:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2978:	48 8b 40 18          	mov    0x18(%rax),%rax
    297c:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2981:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2986:	48 8b 30             	mov    (%rax),%rsi
    2989:	e8 42 e9 ff ff       	call   12d0 <__memmove_chk@plt>
    298e:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    2995:	ba 10 00 00 00       	mov    $0x10,%edx
    299a:	4c 89 e6             	mov    %r12,%rsi
    299d:	89 df                	mov    %ebx,%edi
    299f:	e8 9c e9 ff ff       	call   1340 <connect@plt>
    29a4:	85 c0                	test   %eax,%eax
    29a6:	0f 88 e7 00 00 00    	js     2a93 <init_driver+0x1b8>
    29ac:	89 df                	mov    %ebx,%edi
    29ae:	e8 bd e8 ff ff       	call   1270 <close@plt>
    29b3:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    29b9:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    29bd:	b8 00 00 00 00       	mov    $0x0,%eax
    29c2:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    29c7:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    29ce:	00 00 
    29d0:	0f 85 f5 00 00 00    	jne    2acb <init_driver+0x1f0>
    29d6:	48 83 c4 20          	add    $0x20,%rsp
    29da:	5b                   	pop    %rbx
    29db:	5d                   	pop    %rbp
    29dc:	41 5c                	pop    %r12
    29de:	c3                   	ret    
    29df:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    29e6:	3a 20 43 
    29e9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    29f0:	20 75 6e 
    29f3:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29f7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29fb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a02:	74 6f 20 
    2a05:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2a0c:	65 20 73 
    2a0f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a13:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a17:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2a1e:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2a24:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a29:	eb 97                	jmp    29c2 <init_driver+0xe7>
    2a2b:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2a32:	3a 20 44 
    2a35:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2a3c:	20 75 6e 
    2a3f:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a43:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a47:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a4e:	74 6f 20 
    2a51:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2a58:	76 65 20 
    2a5b:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a5f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a63:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2a6a:	72 20 61 
    2a6d:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a71:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2a78:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2a7e:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2a82:	89 df                	mov    %ebx,%edi
    2a84:	e8 e7 e7 ff ff       	call   1270 <close@plt>
    2a89:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a8e:	e9 2f ff ff ff       	jmp    29c2 <init_driver+0xe7>
    2a93:	4c 8d 05 82 0a 00 00 	lea    0xa82(%rip),%r8        # 351c <array.0+0x41c>
    2a9a:	48 8d 0d 37 0a 00 00 	lea    0xa37(%rip),%rcx        # 34d8 <array.0+0x3d8>
    2aa1:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2aa8:	be 01 00 00 00       	mov    $0x1,%esi
    2aad:	48 89 ef             	mov    %rbp,%rdi
    2ab0:	b8 00 00 00 00       	mov    $0x0,%eax
    2ab5:	e8 c6 e8 ff ff       	call   1380 <__sprintf_chk@plt>
    2aba:	89 df                	mov    %ebx,%edi
    2abc:	e8 af e7 ff ff       	call   1270 <close@plt>
    2ac1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ac6:	e9 f7 fe ff ff       	jmp    29c2 <init_driver+0xe7>
    2acb:	e8 80 e7 ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000002ad0 <driver_post>:
    2ad0:	f3 0f 1e fa          	endbr64 
    2ad4:	53                   	push   %rbx
    2ad5:	4c 89 c3             	mov    %r8,%rbx
    2ad8:	85 c9                	test   %ecx,%ecx
    2ada:	75 17                	jne    2af3 <driver_post+0x23>
    2adc:	48 85 ff             	test   %rdi,%rdi
    2adf:	74 05                	je     2ae6 <driver_post+0x16>
    2ae1:	80 3f 00             	cmpb   $0x0,(%rdi)
    2ae4:	75 33                	jne    2b19 <driver_post+0x49>
    2ae6:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2aeb:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2aef:	89 c8                	mov    %ecx,%eax
    2af1:	5b                   	pop    %rbx
    2af2:	c3                   	ret    
    2af3:	48 8d 35 3a 0a 00 00 	lea    0xa3a(%rip),%rsi        # 3534 <array.0+0x434>
    2afa:	bf 01 00 00 00       	mov    $0x1,%edi
    2aff:	b8 00 00 00 00       	mov    $0x0,%eax
    2b04:	e8 07 e8 ff ff       	call   1310 <__printf_chk@plt>
    2b09:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2b0e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2b12:	b8 00 00 00 00       	mov    $0x0,%eax
    2b17:	eb d8                	jmp    2af1 <driver_post+0x21>
    2b19:	41 50                	push   %r8
    2b1b:	52                   	push   %rdx
    2b1c:	4c 8d 0d 28 0a 00 00 	lea    0xa28(%rip),%r9        # 354b <array.0+0x44b>
    2b23:	49 89 f0             	mov    %rsi,%r8
    2b26:	48 89 f9             	mov    %rdi,%rcx
    2b29:	48 8d 15 23 0a 00 00 	lea    0xa23(%rip),%rdx        # 3553 <array.0+0x453>
    2b30:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2b35:	48 8d 3d e0 09 00 00 	lea    0x9e0(%rip),%rdi        # 351c <array.0+0x41c>
    2b3c:	e8 66 f5 ff ff       	call   20a7 <submitr>
    2b41:	48 83 c4 10          	add    $0x10,%rsp
    2b45:	eb aa                	jmp    2af1 <driver_post+0x21>

Disassembly of section .fini:

0000000000002b48 <_fini>:
    2b48:	f3 0f 1e fa          	endbr64 
    2b4c:	48 83 ec 08          	sub    $0x8,%rsp
    2b50:	48 83 c4 08          	add    $0x8,%rsp
    2b54:	c3                   	ret    
