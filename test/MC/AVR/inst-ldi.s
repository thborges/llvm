; RUN: llvm-mc -triple avr-none -show-encoding < %s | FileCheck %s


foo:

  ldi r16, 241
  ldi r29, 190
  ldi r22, 172
  ldi r27, 92
  
; CHECK: ldi r16, 241                 ; encoding: [0x01,0xef]
; CHECK: ldi r29, 190                 ; encoding: [0xde,0xeb]
; CHECK: ldi r22, 172                 ; encoding: [0x6c,0xea]
; CHECK: ldi r27, 92                  ; encoding: [0xbc,0xe5]
