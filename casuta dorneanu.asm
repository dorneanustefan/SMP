jmp code
w equ 60 ; dimensiune dreptunghi
h equ 45
code: mov ah, 0
 mov al, 13h ; trecere in mod grafic 320x200
 int 10h
 ; afisare latura superioara 
 
 
 mov cx, 100+w ; coloana
 mov dx, 100 ; rand
 mov al, 15 ; alb
u1: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 100
 jae u1
 ; afisare latura inferioare   
 
 
 mov cx, 100+w
 mov dx, 100+h
 mov al, 15
u2: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 100
 ja u2
 ; latura din stanga   
 
 
 mov cx, 100
 mov dx, 100+h
 mov al, 15
u3: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 100
 ja u3
 ; latura din dreapta   
 
 
 mov cx, 100+w
 mov dx, 100+h
 mov al, 15 
u4: 
mov al, 7    ;liniile 47, 48 si 49 redau sunet la scrierea pixelilor
mov ah, 0eh  
int 10h      
mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 100
 ja u4  
                  
                  
                  
 mov cx, 100+w
 mov dx, 100
 mov al, 15
 u5: mov ah, 0ch ; afisare pixel
 int 10h   
 dec dx
 dec cx
 cmp cx, 130
 ja u5   
 
 
 mov cx, 100
 mov dx, 100
 mov al, 15
 u6: mov ah, 0ch ; afisare pixel
 int 10h   
 dec dx
 inc cx
 cmp cx, 130
 jbe u6
 ; afisare latura inferioare  
 

  ;u8, u9 si u10 deseneaza hornul casei
 mov cx, 85+w
 mov dx, 85
 mov al, 15
 u8: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 75
 ja u8 



 mov cx, 85+w
 mov dx, 75
 mov al, 15
 u9: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 142
 ja u9
            
            
 
 mov cx, 142
 mov dx, 85
 mov al, 15
 u10: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 75
 ja u10     
 
 ;u11,u12,u13,u14 si u15 formeaza efectul 3D al casei
 mov cx, 100
 mov dx, 100+h
 mov al, 15
 u11: mov ah, 0ch
 int 10h
 dec cx    
 dec dx
 cmp cx, 90
 ja u11      


 
 mov cx, 90
 mov dx, 90+h
 mov al, 15
 u12: mov ah, 0ch
 int 10h    
 dec dx
 cmp dx, 90
 ja u12 
         

 mov cx, 100
 mov dx, 100
 mov al, 15
 u13: mov ah, 0ch
 int 10h
 dec cx    
 dec dx
 cmp cx, 90
 ja u13      
            
            

 mov cx, 90
 mov dx, 90
 mov al, 15
 u14: mov ah, 0ch
 int 10h
 inc cx    
 dec dx
 cmp cx, 110
 jb u14    
 
 
 
             

 mov cx, 130
 mov dx, 70
 mov al, 15
 u15: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 110
 ja u15     
 
      ;u16,u17 si u18 reprezinta usa casei
  
 mov cx, 70+w
 mov dx, 100+h
 mov al, 15
 u16: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 130
 ja u16 



 mov cx, 70+w
 mov dx, 130
 mov al, 15
 u17: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 120
 ja u17
            
            
 
 mov cx, 120
 mov dx, 130
 mov al, 15
 u18: mov ah, 0ch
 int 10h
 inc dx
 cmp dx, 145
 jbe u18     
 
             
   ;u19,u20,u21 si u22 reprezinta geamul casei
   
 mov cx, 90+w
 mov dx, 90+h
 mov al, 15
 u19: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 130
 ja u19 



 mov cx, 90+w
 mov dx, 130
 mov al, 15
 u20: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 145
 ja u20
            
            
 
 mov cx, 145
 mov dx, 130
 mov al, 15
 u21: mov ah, 0ch
 int 10h
 inc dx
 cmp dx, 135
 jbe u21             
         
  
 mov cx, 145
 mov dx, 135
 mov al, 15
 u22: mov ah, 0ch
 int 10h
 inc cx
 cmp cx, 150
 jbe u22                  
             
 ; asteptare apasare tasta
 mov ah,00
 int 16h