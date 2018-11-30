
void init(){TRISA=0;TRISB=0;TRISB.RB7=1;}
int x,k=0;
 char CA[]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90}  ,mil,cent,diz,uni ;
 void decom(){
   mil=x/1000;cent=x%1000/100;diz=x%100/10;uni=x%10;
 }
void declage(char number){

       portb.rb1=number.f6 ;portb.RB0=1;    portb.RB0=0;
       portb.rb1=number.f5 ;portb.RB0=1;    portb.RB0=0;
       portb.rb1=number.f4 ;portb.RB0=1;    portb.RB0=0;
       portb.rb1=number.f3 ;portb.RB0=1;    portb.RB0=0;
       portb.rb1=number.f2 ;portb.RB0=1;    portb.RB0=0;
       portb.rb1=number.f1 ;portb.RB0=1;    portb.RB0=0;
       portb.rb1=number.f0 ;portb.RB0=1;    portb.RB0=0;
       

     portb.rb2=1;portb.rb2=0;
}
void aff(){

porta.ra1=1;porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;declage(CA[mil]);delay_ms(5); porta.ra1=0;
porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;declage(CA[cent]);delay_ms(5);
porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;declage(CA[diz]); delay_ms(5);
porta.ra0=1;porta.ra0=0;porta.ra2=1;porta.ra2=0;declage(CA[uni]); delay_ms(5);

}
void main() {    int i ;
portb=0;
porta=0x00;
init();

 A: for(x=0;x<5959;x++){
  if(x%100==60){x+=40;}
    decom();
    for(i=0;i<50;i++)
     { if (Button(&PORTb, 7, 1, 1)) {k=1;}
       if(k&&Button(&PORTb, 7, 1, 0))
       {
       k=0;while(1){
       aff();
       if(button(&portb,7,1,1)){k=1;}
       if(k&&button(&portb,7,1,0)){k=0;x=0;decom();
       while(1){aff();
       if(button(&portb,7,1,1)){k=1;}
       if(k&&button(&portb,7,1,0)){k=0;goto A;}
       }
       }
       }}
     aff();
     }
  }
 }