
_init:

;d_clage.c,2 :: 		void init(){TRISA=0;TRISB=0;TRISB.RB7=1;}
	CLRF       TRISA+0
	CLRF       TRISB+0
	BSF        TRISB+0, 7
L_end_init:
	RETURN
; end of _init

_decom:

;d_clage.c,5 :: 		void decom(){
;d_clage.c,6 :: 		mil=x/1000;cent=x%1000/100;diz=x%100/10;uni=x%10;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       _x+0, 0
	MOVWF      R0+0
	MOVF       _x+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _mil+0
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       _x+0, 0
	MOVWF      R0+0
	MOVF       _x+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _cent+0
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _x+0, 0
	MOVWF      R0+0
	MOVF       _x+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _diz+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _x+0, 0
	MOVWF      R0+0
	MOVF       _x+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _uni+0
;d_clage.c,7 :: 		}
L_end_decom:
	RETURN
; end of _decom

_declage:

;d_clage.c,8 :: 		void declage(char number){
;d_clage.c,10 :: 		portb.rb1=number.f6 ;portb.RB0=1;    portb.RB0=0;
	BTFSC      FARG_declage_number+0, 6
	GOTO       L__declage33
	BCF        PORTB+0, 1
	GOTO       L__declage34
L__declage33:
	BSF        PORTB+0, 1
L__declage34:
	BSF        PORTB+0, 0
	BCF        PORTB+0, 0
;d_clage.c,11 :: 		portb.rb1=number.f5 ;portb.RB0=1;    portb.RB0=0;
	BTFSC      FARG_declage_number+0, 5
	GOTO       L__declage35
	BCF        PORTB+0, 1
	GOTO       L__declage36
L__declage35:
	BSF        PORTB+0, 1
L__declage36:
	BSF        PORTB+0, 0
	BCF        PORTB+0, 0
;d_clage.c,12 :: 		portb.rb1=number.f4 ;portb.RB0=1;    portb.RB0=0;
	BTFSC      FARG_declage_number+0, 4
	GOTO       L__declage37
	BCF        PORTB+0, 1
	GOTO       L__declage38
L__declage37:
	BSF        PORTB+0, 1
L__declage38:
	BSF        PORTB+0, 0
	BCF        PORTB+0, 0
;d_clage.c,13 :: 		portb.rb1=number.f3 ;portb.RB0=1;    portb.RB0=0;
	BTFSC      FARG_declage_number+0, 3
	GOTO       L__declage39
	BCF        PORTB+0, 1
	GOTO       L__declage40
L__declage39:
	BSF        PORTB+0, 1
L__declage40:
	BSF        PORTB+0, 0
	BCF        PORTB+0, 0
;d_clage.c,14 :: 		portb.rb1=number.f2 ;portb.RB0=1;    portb.RB0=0;
	BTFSC      FARG_declage_number+0, 2
	GOTO       L__declage41
	BCF        PORTB+0, 1
	GOTO       L__declage42
L__declage41:
	BSF        PORTB+0, 1
L__declage42:
	BSF        PORTB+0, 0
	BCF        PORTB+0, 0
;d_clage.c,15 :: 		portb.rb1=number.f1 ;portb.RB0=1;    portb.RB0=0;
	BTFSC      FARG_declage_number+0, 1
	GOTO       L__declage43
	BCF        PORTB+0, 1
	GOTO       L__declage44
L__declage43:
	BSF        PORTB+0, 1
L__declage44:
	BSF        PORTB+0, 0
	BCF        PORTB+0, 0
;d_clage.c,16 :: 		portb.rb1=number.f0 ;portb.RB0=1;    portb.RB0=0;
	BTFSC      FARG_declage_number+0, 0
	GOTO       L__declage45
	BCF        PORTB+0, 1
	GOTO       L__declage46
L__declage45:
	BSF        PORTB+0, 1
L__declage46:
	BSF        PORTB+0, 0
	BCF        PORTB+0, 0
;d_clage.c,19 :: 		portb.rb2=1;portb.rb2=0;
	BSF        PORTB+0, 2
	BCF        PORTB+0, 2
;d_clage.c,20 :: 		}
L_end_declage:
	RETURN
; end of _declage

_aff:

;d_clage.c,21 :: 		void aff(){
;d_clage.c,23 :: 		porta.ra1=1;porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;declage(CA[mil]);delay_ms(5); porta.ra1=0;
	BSF        PORTA+0, 1
	BSF        PORTA+0, 0
	BCF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	MOVF       _mil+0, 0
	ADDLW      _CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_declage_number+0
	CALL       _declage+0
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_aff0:
	DECFSZ     R13+0, 1
	GOTO       L_aff0
	DECFSZ     R12+0, 1
	GOTO       L_aff0
	NOP
	NOP
	BCF        PORTA+0, 1
;d_clage.c,24 :: 		porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;declage(CA[cent]);delay_ms(5);
	BSF        PORTA+0, 0
	BCF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	MOVF       _cent+0, 0
	ADDLW      _CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_declage_number+0
	CALL       _declage+0
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_aff1:
	DECFSZ     R13+0, 1
	GOTO       L_aff1
	DECFSZ     R12+0, 1
	GOTO       L_aff1
	NOP
	NOP
;d_clage.c,25 :: 		porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;declage(CA[diz]); delay_ms(5);
	BSF        PORTA+0, 0
	BCF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	MOVF       _diz+0, 0
	ADDLW      _CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_declage_number+0
	CALL       _declage+0
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_aff2:
	DECFSZ     R13+0, 1
	GOTO       L_aff2
	DECFSZ     R12+0, 1
	GOTO       L_aff2
	NOP
	NOP
;d_clage.c,26 :: 		porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;declage(CA[uni]); delay_ms(5);
	BSF        PORTA+0, 0
	BCF        PORTA+0, 0
	BSF        PORTA+0, 2
	BCF        PORTA+0, 2
	MOVF       _uni+0, 0
	ADDLW      _CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_declage_number+0
	CALL       _declage+0
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_aff3:
	DECFSZ     R13+0, 1
	GOTO       L_aff3
	DECFSZ     R12+0, 1
	GOTO       L_aff3
	NOP
	NOP
;d_clage.c,28 :: 		}
L_end_aff:
	RETURN
; end of _aff

_main:

;d_clage.c,29 :: 		void main() {    int i ;
;d_clage.c,30 :: 		portb=0;
	CLRF       PORTB+0
;d_clage.c,31 :: 		porta=0x00;
	CLRF       PORTA+0
;d_clage.c,32 :: 		init();
	CALL       _init+0
;d_clage.c,34 :: 		A: for(x=0;x<5959;x++){
___main_A:
	CLRF       _x+0
	CLRF       _x+1
L_main4:
	MOVLW      128
	XORWF      _x+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      23
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main49
	MOVLW      71
	SUBWF      _x+0, 0
L__main49:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;d_clage.c,35 :: 		if(x%100==60){x+=40;}
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _x+0, 0
	MOVWF      R0+0
	MOVF       _x+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main50
	MOVLW      60
	XORWF      R0+0, 0
L__main50:
	BTFSS      STATUS+0, 2
	GOTO       L_main7
	MOVLW      40
	ADDWF      _x+0, 1
	BTFSC      STATUS+0, 0
	INCF       _x+1, 1
L_main7:
;d_clage.c,36 :: 		decom();
	CALL       _decom+0
;d_clage.c,37 :: 		for(i=0;i<50;i++)
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main8:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main51
	MOVLW      50
	SUBWF      main_i_L0+0, 0
L__main51:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;d_clage.c,38 :: 		{ if (Button(&PORTb, 7, 1, 1)) {k=1;}
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      7
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main11
	MOVLW      1
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
L_main11:
;d_clage.c,39 :: 		if(k&&Button(&PORTb, 7, 1, 0))
	MOVF       _k+0, 0
	IORWF      _k+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main14
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      7
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main14
L__main29:
;d_clage.c,41 :: 		k=0;while(1){
	CLRF       _k+0
	CLRF       _k+1
L_main15:
;d_clage.c,42 :: 		aff();
	CALL       _aff+0
;d_clage.c,43 :: 		if(button(&portb,7,1,1)){k=1;}
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      7
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main17
	MOVLW      1
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
L_main17:
;d_clage.c,44 :: 		if(k&&button(&portb,7,1,0)){k=0;x=0;decom();
	MOVF       _k+0, 0
	IORWF      _k+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main20
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      7
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main20
L__main28:
	CLRF       _k+0
	CLRF       _k+1
	CLRF       _x+0
	CLRF       _x+1
	CALL       _decom+0
;d_clage.c,45 :: 		while(1){aff();
L_main21:
	CALL       _aff+0
;d_clage.c,46 :: 		if(button(&portb,7,1,1)){k=1;}
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      7
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main23
	MOVLW      1
	MOVWF      _k+0
	MOVLW      0
	MOVWF      _k+1
L_main23:
;d_clage.c,47 :: 		if(k&&button(&portb,7,1,0)){k=0;goto A;}
	MOVF       _k+0, 0
	IORWF      _k+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main26
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      7
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main26
L__main27:
	CLRF       _k+0
	CLRF       _k+1
	GOTO       ___main_A
L_main26:
;d_clage.c,48 :: 		}
	GOTO       L_main21
;d_clage.c,49 :: 		}
L_main20:
;d_clage.c,50 :: 		}}
	GOTO       L_main15
L_main14:
;d_clage.c,51 :: 		aff();
	CALL       _aff+0
;d_clage.c,37 :: 		for(i=0;i<50;i++)
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;d_clage.c,52 :: 		}
	GOTO       L_main8
L_main9:
;d_clage.c,34 :: 		A: for(x=0;x<5959;x++){
	INCF       _x+0, 1
	BTFSC      STATUS+0, 2
	INCF       _x+1, 1
;d_clage.c,53 :: 		}
	GOTO       L_main4
L_main5:
;d_clage.c,54 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
