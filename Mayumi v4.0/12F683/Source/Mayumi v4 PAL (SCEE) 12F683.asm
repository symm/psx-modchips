; Mayumi v4 PAL (SCEE)
; 12F683 v1.0

    processor 12F683
    #include <P12F683.INC>
    __config _MCLRE_OFF & _CP_OFF & _WDT_OFF & _EC_OSC ; 0x0FE3

; RAM-Variable
LRAM_0x07 equ 0x20
LRAM_0x08 equ 0x21
LRAM_0x09 equ 0x22
LRAM_0x0A equ 0x23
LRAM_0x0B equ 0x24
LRAM_0x0C equ 0x25
LRAM_0x0D equ 0x26
LRAM_0x0E equ 0x27
LRAM_0x0F equ 0x28
LRAM_0x10 equ 0x29
LRAM_0x11 equ 0x2A
LRAM_0x12 equ 0x2B
LRAM_0x13 equ 0x2C
LRAM_0x14 equ 0x2D
LRAM_0x15 equ 0x2E
LRAM_0x16 equ 0x2F
LRAM_0x17 equ 0x30
LRAM_0x18 equ 0x31
LRAM_0x19 equ 0x32
LRAM_0x1A equ 0x33
LRAM_0x1B equ 0x34
LRAM_0x1C equ 0x35
LRAM_0x1D equ 0x36
LRAM_0x1E equ 0x37
LRAM_0x1F equ 0x38

; Program

    Org 0x0000

;   Reset-Vector

		BSF     STATUS,RP0
		CLRF    ANSEL		; digital I/O
		BCF     STATUS,RP0

    GOTO LADR_0x00AB

    Org 0x0008

    RETLW 0x4D           ;   b'01001101'  d'077'  "M"
    RETLW 0x61           ;   b'01100001'  d'097'  "a"
    RETLW 0x79           ;   b'01111001'  d'121'  "y"
    RETLW 0x75           ;   b'01110101'  d'117'  "u"
    RETLW 0x6D           ;   b'01101101'  d'109'  "m"
    RETLW 0x69           ;   b'01101001'  d'105'  "i"
    RETLW 0x30           ;   b'00110000'  d'048'  "0"
    RETLW 0x34           ;   b'00110100'  d'052'  "4"
LADR_0x0010
    MOVLW 0x03           ;   b'00000011'  d'003'
    MOVWF LRAM_0x10
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF LRAM_0x0F
    RETLW 0x00           ;   b'00000000'  d'000'
LADR_0x0015
    MOVLW 0x32           ;   b'00110010'  d'050'  "2"
LADR_0x0016
    MOVWF LRAM_0x0A
LADR_0x0017
    MOVLW 0xB6           ;   b'10110110'  d'182'
    MOVWF LRAM_0x0B
LADR_0x0019
    BTFSS GPIO,GP4
    CLRF LRAM_0x0F
    NOP
    DECFSZ LRAM_0x0B,F
    GOTO LADR_0x0019
    BTFSS GPIO,GP3
    CLRF LRAM_0x0E
    DECFSZ LRAM_0x17,F
    GOTO LADR_0x0027
    MOVLW 0xFA           ;   b'11111010'  d'250'
    MOVWF LRAM_0x17
    DECFSZ LRAM_0x18,F
    GOTO LADR_0x0027
    CLRF LRAM_0x19
LADR_0x0027
    DECFSZ LRAM_0x0A,F
    GOTO LADR_0x0017
    RETLW 0x00           ;   b'00000000'  d'000'
LADR_0x002A
    BTFSS LRAM_0x1A,0
    GOTO LADR_0x0032
    NOP
    MOVLW 0xF9           ;   b'11111001'  d'249'
    TRIS GPIO
    MOVLW 0xF9           ;   b'11111001'  d'249'
    MOVWF GPIO
    RETLW 0x00           ;   b'00000000'  d'000'
LADR_0x0032
    MOVLW 0xFD           ;   b'11111101'  d'253'
    TRIS GPIO
    MOVLW 0xF9           ;   b'11111001'  d'249'
    MOVWF GPIO
    RETLW 0x00           ;   b'00000000'  d'000'
LADR_0x0037
    MOVLW 0xFF           ;   b'11111111'  d'255'
    TRIS GPIO
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF GPIO
    RETLW 0x00           ;   b'00000000'  d'000'
LADR_0x003C
    BTFSS LRAM_0x1A,0
    GOTO LADR_0x0045
    NOP
    MOVLW 0xF9           ;   b'11111001'  d'249'
    TRIS GPIO
    MOVLW 0xF9           ;   b'11111001'  d'249'
    MOVWF GPIO
    MOVLW 0x04           ;   b'00000100'  d'004'
    GOTO LADR_0x0016
LADR_0x0045
    MOVLW 0xFD           ;   b'11111101'  d'253'
    TRIS GPIO
    MOVLW 0xF9           ;   b'11111001'  d'249'
    MOVWF GPIO
    MOVLW 0x04           ;   b'00000100'  d'004'
    GOTO LADR_0x0016
LADR_0x004B
    BTFSS LRAM_0x1A,0
    GOTO LADR_0x0054
    NOP
    MOVLW 0xFB           ;   b'11111011'  d'251'
    TRIS GPIO
    MOVLW 0xF9           ;   b'11111001'  d'249'
    MOVWF GPIO
    MOVLW 0x04           ;   b'00000100'  d'004'
    GOTO LADR_0x0016
LADR_0x0054
    MOVLW 0xFD           ;   b'11111101'  d'253'
    TRIS GPIO
    MOVLW 0x04           ;   b'00000100'  d'004'
    MOVWF LRAM_0x0A
LADR_0x0058
    MOVLW 0x79           ;   b'01111001'  d'121'  "y"
    MOVWF LRAM_0x0B
LADR_0x005A
    MOVLW 0xFB           ;   b'11111011'  d'251'
    BTFSS GPIO,GP2
    MOVLW 0xF9           ;   b'11111001'  d'249'
    MOVWF GPIO
    BTFSS GPIO,GP4
    CLRF LRAM_0x0F
    DECFSZ LRAM_0x0B,F
    GOTO LADR_0x005A
    BTFSS GPIO,GP3
    CLRF LRAM_0x0E
    MOVLW 0xFB           ;   b'11111011'  d'251'
    BTFSS GPIO,GP2
    MOVLW 0xF9           ;   b'11111001'  d'249'
    MOVWF GPIO
    DECFSZ LRAM_0x0A,F
    GOTO LADR_0x0058
    RETLW 0x00           ;   b'00000000'  d'000'
LADR_0x006B
    CLRF LRAM_0x0D
    MOVLW 0x04           ;   b'00000100'  d'004'
    MOVWF LRAM_0x08
    BTFSC LRAM_0x1E,0
    GOTO LADR_0x007D
    CALL LADR_0x0010
    MOVLW 0x12           ;   b'00010010'  d'018'
    MOVWF LRAM_0x1C
LADR_0x0073
    MOVLW 0x04           ;   b'00000100'  d'004'
    CALL LADR_0x0016
    DECFSZ LRAM_0x10,F
    GOTO LADR_0x007A
    BTFSC LRAM_0x0F,0
    GOTO LADR_0x00A5
    CALL LADR_0x0010
LADR_0x007A
    DECFSZ LRAM_0x1C,F
    GOTO LADR_0x0073
    GOTO LADR_0x0081
LADR_0x007D
    MOVLW 0x48           ;   b'01001000'  d'072'  "H"
    CALL LADR_0x0016
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF LRAM_0x10
LADR_0x0081
    MOVF LRAM_0x0D,W
    CALL LADR_0x00A6
    MOVWF LRAM_0x0C
    COMF LRAM_0x0C,F
    MOVLW 0x09           ;   b'00001001'  d'009'
    MOVWF LRAM_0x09
    GOTO LADR_0x008B
LADR_0x0088
    RRF LRAM_0x0C,F
    BTFSS STATUS,C
    GOTO LADR_0x008D
LADR_0x008B
    CALL LADR_0x004B
    GOTO LADR_0x008F
LADR_0x008D
    CALL LADR_0x003C
    NOP
LADR_0x008F
    DECFSZ LRAM_0x10,F
    GOTO LADR_0x0094
    BTFSC LRAM_0x0F,0
    GOTO LADR_0x00A5
    CALL LADR_0x0010
LADR_0x0094
    DECFSZ LRAM_0x09,F
    GOTO LADR_0x0088
    CALL LADR_0x003C
    DECFSZ LRAM_0x10,F
    GOTO LADR_0x009C
    BTFSC LRAM_0x0F,0
    GOTO LADR_0x00A5
    CALL LADR_0x0010
LADR_0x009C
    CALL LADR_0x003C
    DECFSZ LRAM_0x10,F
    GOTO LADR_0x00A2
    BTFSC LRAM_0x0F,0
    GOTO LADR_0x00A5
    CALL LADR_0x0010
LADR_0x00A2
    INCF LRAM_0x0D,F
    DECFSZ LRAM_0x08,F
    GOTO LADR_0x0081
LADR_0x00A5
    RETLW 0x00           ;   b'00000000'  d'000'
LADR_0x00A6
    ADDWF PCL,F          ; !!Program-Counter-Modification
    RETLW 0x53           ;   b'01010011'  d'083'  "S"
    RETLW 0x43           ;   b'01000011'  d'067'  "C"
    RETLW 0x45           ;   b'01000101'  d'069'  "E"
    RETLW 0x45           ;   b'01000101'  d'069'  "E"
LADR_0x00AB
    MOVLW 0xC2           ;   b'11000010'  d'194'
    OPTION
    MOVLW 0x64           ;   b'01100100'  d'100'  "d"
    CALL LADR_0x0016
    MOVLW 0xFF           ;   b'11111111'  d'255'
    TRIS GPIO
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x11
LADR_0x00B3
    MOVLW 0xC8           ;   b'11001000'  d'200'
    CALL LADR_0x0016
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF LRAM_0x17
    MOVWF LRAM_0x18
    MOVWF LRAM_0x19
    MOVWF LRAM_0x15
    MOVLW 0x0A           ;   b'00001010'  d'010'
    MOVWF LRAM_0x1C
LADR_0x00BC
    MOVLW 0x64           ;   b'01100100'  d'100'  "d"
    CALL LADR_0x0016
    CALL LADR_0x0037
    BTFSC GPIO,GP3
    GOTO LADR_0x00D0
    MOVLW 0x64           ;   b'01100100'  d'100'  "d"
    CALL LADR_0x0016
    CALL LADR_0x002A
    DECFSZ LRAM_0x1C,F
    GOTO LADR_0x00BC
    CALL LADR_0x0037
LADR_0x00C7
    BTFSS GPIO,GP3
    GOTO LADR_0x00C7
    INCF LRAM_0x11,F
    MOVLW 0x05           ;   b'00000101'  d'005'
    SUBWF LRAM_0x11,W
    BTFSS STATUS,C
    GOTO LADR_0x00D0
    MOVLW 0x01           ;   b'00000001'  d'001'
    MOVWF LRAM_0x11
LADR_0x00D0
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF LRAM_0x0E
    MOVLW 0x1E           ;   b'00011110'  d'030'
    MOVWF LRAM_0x07
LADR_0x00D4
    CALL LADR_0x0015
    BTFSS LRAM_0x0E,0
    GOTO LADR_0x00B3
    DECFSZ LRAM_0x07,F
    GOTO LADR_0x00D4
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF LRAM_0x1A
    MOVLW 0x19           ;   b'00011001'  d'025'
    MOVWF LRAM_0x1B
LADR_0x00DD
    MOVLW 0x14           ;   b'00010100'  d'020'
    MOVWF LRAM_0x1C
LADR_0x00DF
    BTFSC GPIO,GP2
    GOTO LADR_0x00E4
    DECFSZ LRAM_0x1C,F
    GOTO LADR_0x00DF
    GOTO LADR_0x00F3
LADR_0x00E4
    MOVLW 0x14           ;   b'00010100'  d'020'
    MOVWF LRAM_0x1C
LADR_0x00E6
    BTFSS GPIO,GP2
    GOTO LADR_0x00EB
    DECFSZ LRAM_0x1C,F
    GOTO LADR_0x00E6
    GOTO LADR_0x00F3
LADR_0x00EB
    DECFSZ LRAM_0x1B,F
    GOTO LADR_0x00DD
    CLRF LRAM_0x1A
    MOVLW 0xF9           ;   b'11111001'  d'249'
    MOVWF GPIO
    MOVLW 0xFD           ;   b'11111101'  d'253'
    TRIS GPIO
    GOTO LADR_0x00F7
LADR_0x00F3
    MOVLW 0xF9           ;   b'11111001'  d'249'
    MOVWF GPIO
    MOVLW 0xF9           ;   b'11111001'  d'249'
    TRIS GPIO
LADR_0x00F7
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF LRAM_0x0E
    MOVLW 0x07           ;   b'00000111'  d'007'
    MOVWF LRAM_0x07
LADR_0x00FB
    CALL LADR_0x0015
    BTFSS LRAM_0x0E,0
    GOTO LADR_0x00B3
    DECFSZ LRAM_0x07,F
    GOTO LADR_0x00FB
LADR_0x0100
    MOVF LRAM_0x11,W
    MOVWF LRAM_0x1F
    DECF LRAM_0x1F,F
    BTFSC STATUS,Z
    GOTO LADR_0x0119
    DECF LRAM_0x1F,F
    BTFSC STATUS,Z
    GOTO LADR_0x011D
    DECF LRAM_0x1F,F
    BTFSC STATUS,Z
    GOTO LADR_0x0113
    DECF LRAM_0x1F,F
    BTFSC STATUS,Z
    GOTO LADR_0x010E
LADR_0x010E
    MOVLW 0xFF           ;   b'11111111'  d'255'
    TRIS GPIO
LADR_0x0110
    BTFSS GPIO,GP3
    GOTO LADR_0x00B3
    GOTO LADR_0x0110
LADR_0x0113
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF LRAM_0x1E
LADR_0x0115
    CALL LADR_0x006B
    BTFSS LRAM_0x0E,0
    GOTO LADR_0x00B3
    GOTO LADR_0x0115
LADR_0x0119
    BTFSS LRAM_0x1A,0
    GOTO LADR_0x0121
    CLRF LRAM_0x15
    GOTO LADR_0x013D
LADR_0x011D
    BTFSC LRAM_0x1A,0
    GOTO LADR_0x013D
    INCF LRAM_0x11,F
    GOTO LADR_0x0100
LADR_0x0121
    MOVLW 0x22           ;   b'00100010'  d'034'  """
    MOVWF LRAM_0x12
    GOTO LADR_0x0126
LADR_0x0124
    MOVLW 0x18           ;   b'00011000'  d'024'
    MOVWF LRAM_0x12
LADR_0x0126
    CALL LADR_0x002A
LADR_0x0127
    BTFSS GPIO,GP3
    GOTO LADR_0x00B3
    BTFSC GPIO,GP0
    GOTO LADR_0x0127
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF LRAM_0x1E
LADR_0x012D
    CALL LADR_0x006B
    BTFSS LRAM_0x0E,0
    GOTO LADR_0x00B3
    BTFSC GPIO,GP0
    GOTO LADR_0x0124
    DECFSZ LRAM_0x12,F
    GOTO LADR_0x012D
    CALL LADR_0x002A
    CLRF LRAM_0x1E
LADR_0x0136
    CALL LADR_0x006B
    CALL LADR_0x002A
    BTFSS LRAM_0x0E,0
    GOTO LADR_0x00B3
    BTFSC GPIO,GP0
    GOTO LADR_0x0124
    GOTO LADR_0x0136
LADR_0x013D
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF LRAM_0x1E
    CALL LADR_0x006B
    BTFSS LRAM_0x0E,0
    GOTO LADR_0x00B3
    BTFSS GPIO,GP4
    GOTO LADR_0x013D
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF LRAM_0x14
    MOVWF LRAM_0x16
    MOVWF LRAM_0x19
    MOVLW 0x64           ;   b'01100100'  d'100'  "d"
    MOVWF LRAM_0x18
    MOVLW 0xFA           ;   b'11111010'  d'250'
    MOVWF LRAM_0x17
LADR_0x014C
    BTFSS GPIO,GP3
    GOTO LADR_0x00B3
    BTFSC GPIO,GP0
    GOTO LADR_0x013D
    BTFSS GPIO,GP4
    GOTO LADR_0x0188
    GOTO LADR_0x014C
LADR_0x0153
    CALL LADR_0x0037
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF LRAM_0x13
LADR_0x0156
    MOVLW 0xC8           ;   b'11001000'  d'200'
    MOVWF LRAM_0x1C
LADR_0x0158
    MOVLW 0x0E           ;   b'00001110'  d'014'
    CALL LADR_0x0016
    BTFSS LRAM_0x0E,0
    GOTO LADR_0x00B3
    BTFSC GPIO,GP0
    GOTO LADR_0x01D4
    BTFSS GPIO,GP4
    GOTO LADR_0x0164
    DECFSZ LRAM_0x1C,F
    GOTO LADR_0x0158
    CLRF LRAM_0x13
    GOTO LADR_0x0156
LADR_0x0164
    CALL LADR_0x002A
    BTFSS LRAM_0x14,0
    GOTO LADR_0x0198
    MOVLW 0x0D           ;   b'00001101'  d'013'
    MOVWF LRAM_0x1D
LADR_0x0169
    MOVLW 0x0A           ;   b'00001010'  d'010'
    CALL LADR_0x0016
    BTFSS LRAM_0x0E,0
    GOTO LADR_0x00B3
    BTFSC GPIO,GP0
    GOTO LADR_0x01D4
    BTFSC GPIO,GP4
    GOTO LADR_0x0185
    DECFSZ LRAM_0x1D,F
    GOTO LADR_0x0169
    CLRF LRAM_0x14
    BTFSC LRAM_0x13,0
    GOTO LADR_0x0198
    BTFSC LRAM_0x16,0
    GOTO LADR_0x01BD
    MOVLW 0x19           ;   b'00011001'  d'025'
    MOVWF LRAM_0x1D
LADR_0x017A
    MOVLW 0x0A           ;   b'00001010'  d'010'
    CALL LADR_0x0016
    BTFSS LRAM_0x0E,0
    GOTO LADR_0x00B3
    BTFSC GPIO,GP0
    GOTO LADR_0x01D4
    BTFSC GPIO,GP4
    GOTO LADR_0x0153
    DECFSZ LRAM_0x1D,F
    GOTO LADR_0x017A
    GOTO LADR_0x01BD
LADR_0x0185
    CALL LADR_0x0037
    CLRF LRAM_0x16
    GOTO LADR_0x0158
LADR_0x0188
    CALL LADR_0x002A
    MOVLW 0x4B           ;   b'01001011'  d'075'  "K"
    MOVWF LRAM_0x1C
LADR_0x018B
    MOVLW 0x0A           ;   b'00001010'  d'010'
    CALL LADR_0x0016
    BTFSS LRAM_0x0E,0
    GOTO LADR_0x00B3
    BTFSC GPIO,GP0
    GOTO LADR_0x01D4
    BTFSC GPIO,GP4
    GOTO LADR_0x0196
    DECFSZ LRAM_0x1C,F
    GOTO LADR_0x018B
    GOTO LADR_0x0198
LADR_0x0196
    CLRF LRAM_0x14
    GOTO LADR_0x0153
LADR_0x0198
    CALL LADR_0x002A
    MOVLW 0x06           ;   b'00000110'  d'006'
    MOVWF LRAM_0x07
LADR_0x019B
    MOVLW 0x19           ;   b'00011001'  d'025'
    MOVWF LRAM_0x1C
LADR_0x019D
    MOVLW 0x0A           ;   b'00001010'  d'010'
    CALL LADR_0x0016
    BTFSS LRAM_0x0E,0
    GOTO LADR_0x00B3
    BTFSC GPIO,GP0
    GOTO LADR_0x01D4
    BTFSC GPIO,GP4
    GOTO LADR_0x0153
    DECFSZ LRAM_0x1C,F
    GOTO LADR_0x019D
    DECFSZ LRAM_0x07,F
    GOTO LADR_0x019B
    CLRF LRAM_0x14
    CALL LADR_0x002A
    MOVLW 0x0B           ;   b'00001011'  d'011'
    MOVWF LRAM_0x07
LADR_0x01AD
    MOVLW 0x19           ;   b'00011001'  d'025'
    MOVWF LRAM_0x1C
LADR_0x01AF
    MOVLW 0x0A           ;   b'00001010'  d'010'
    CALL LADR_0x0016
    BTFSS LRAM_0x0E,0
    GOTO LADR_0x00B3
    BTFSC GPIO,GP0
    GOTO LADR_0x01D4
    BTFSC GPIO,GP4
    GOTO LADR_0x0153
    DECFSZ LRAM_0x1C,F
    GOTO LADR_0x01AF
    DECFSZ LRAM_0x07,F
    GOTO LADR_0x01AD
    MOVLW 0x03           ;   b'00000011'  d'003'
    GOTO LADR_0x01C0
LADR_0x01BD
    MOVLW 0x04           ;   b'00000100'  d'004'
    GOTO LADR_0x01C0
LADR_0x01BF
    MOVLW 0x18           ;   b'00011000'  d'024'
LADR_0x01C0
    MOVWF LRAM_0x12
    CLRF LRAM_0x14
    BTFSS LRAM_0x15,0
    GOTO LADR_0x01C6
    BTFSS LRAM_0x19,0
    GOTO LADR_0x0198
LADR_0x01C6
    BTFSS LRAM_0x0E,0
    GOTO LADR_0x00B3
    BTFSC GPIO,GP0
    GOTO LADR_0x01D4
    BTFSC GPIO,GP4
    GOTO LADR_0x01CF
    CALL LADR_0x006B
    DECFSZ LRAM_0x12,F
    GOTO LADR_0x01C6
LADR_0x01CF
    MOVLW 0x44           ;   b'01000100'  d'068'  "D"
    MOVWF LRAM_0x18
    MOVLW 0xFA           ;   b'11111010'  d'250'
    MOVWF LRAM_0x17
    GOTO LADR_0x0198
LADR_0x01D4
    CALL LADR_0x002A
    MOVLW 0xFF           ;   b'11111111'  d'255'
    CALL LADR_0x0016
    MOVLW 0xFF           ;   b'11111111'  d'255'
    MOVWF LRAM_0x19
LADR_0x01D9
    BTFSS GPIO,GP3
    GOTO LADR_0x00B3
    BTFSC GPIO,GP0
    GOTO LADR_0x01D9
    GOTO LADR_0x01BF

    End
