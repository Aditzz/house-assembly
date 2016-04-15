
;Solomon Adrian
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp code
w equ 50 ; dimensiune dreptunghi
h equ 50
code: mov ah, 0
mov al, 13h ; trecere in mod grafic 320x200
int 10h



   
; latura din stanga dreptunghi
mov cx, 105
mov dx, 20+h
mov al, 8
u5: mov ah, 0ch
int 10h
inc dx
cmp dx, 110
jb u5            
; latura din dreapta dreptunghi
mov cx, 100+w
mov dx, 20+h
mov al, 8       
u6: mov ah, 0ch
int 10h
inc dx
cmp dx, 110
jb u6    

 ;latura de jos dreptunghi   
mov cx, 100+w
mov dx, 110
mov al, 8
u7: mov ah, 0ch
int 10h
dec cx
cmp cx, 105
ja u7   

;dreptunghi jos
mov cx, 195+w ;axa ox
mov dx, 60+h  ;axa oy 
mov al, 8 ;culoarea
u11: mov ah, 0ch ;deseneaza
int 10h
dec cx
cmp cx, 150 ;compara pentreu oprire la 100
ja u11
 
; latura din dreapta casa
mov cx, 195+w
mov dx, 20+h
mov al, 8       
u12: mov ah, 0ch
int 10h
inc dx
cmp dx, 110
jb u12 
       
; afisare latura inferioare
mov cx, 100+w ;axa ox
mov dx, 20+h  ;axa oy 
mov al, 4 ;culoarea
u2: mov ah, 0ch ;deseneaza
int 10h
dec cx
cmp cx, 100 ;compara pentreu oprire la 100
ja u2       


; latura din stanga triunghi
mov cx, 100
mov dx, 20+h
mov al, 4
u3: mov ah, 0ch
int 10h
dec dx 
dec dx
inc cx
cmp dx, 20 
ja u3
; latura din dreapta triunghi
mov cx, 100+w
mov dx, 20+h
mov al, 4 
u4: mov ah, 0ch
int 10h
dec dx
dec dx 
dec cx
cmp dx, 20
ja u4        
       
;acoperis sus
mov cx, 175+w ;axa ox
mov dx, 20  ;axa oy 
mov al, 4 ;culoarea
u8: mov ah, 0ch ;deseneaza
int 10h
dec cx
cmp cx, 125 ;compara pentreu oprire la 100
ja u8    
;acoperis jos
mov cx, 200+w ;axa ox
mov dx, 20+h  ;axa oy 
mov al, 4 ;culoarea
u9: mov ah, 0ch ;deseneaza
int 10h
dec cx
cmp cx, 150 ;compara pentreu oprire la 100
ja u9  

; latura din dreapta acoperis
mov cx, 200+w
mov dx, 20+h
mov al, 4 
u10: mov ah, 0ch
int 10h
dec dx
dec dx 
dec cx
cmp dx, 20
ja u10 
 
 
; latura din dreapta usa
mov cx, 85+w
mov dx, 30+h
mov al, 7       
u13: mov ah, 0ch
int 10h
inc dx
cmp dx,110 
jb u13
       
; latura din stanga usa
mov cx, 65+w
mov dx, 30+h
mov al, 7       
u14: mov ah, 0ch
int 10h
inc dx
cmp dx,110 
jb u14     

;usa sus
mov cx, 85+w ;axa ox
mov dx, 30+h  ;axa oy 
mov al, 7 ;culoarea
u15: mov ah, 0ch ;deseneaza
int 10h
dec cx
cmp cx, 115 ;compara pentreu oprire la 100
ja u15      

;fereastra jos
mov cx, 170+w ;axa ox
mov dx, 50+h  ;axa oy 
mov al, 8 ;culoarea
u16: mov ah, 0ch ;deseneaza
int 10h
dec cx
cmp cx, 180 ;compara pentreu oprire la 100
ja u16      

;fereastra sus
mov cx, 170+w ;axa ox
mov dx, 35+h  ;axa oy 
mov al, 8 ;culoarea
u21: mov ah, 0ch ;deseneaza
int 10h
dec cx
cmp cx, 180 ;compara pentreu oprire la 100
ja u21

;fereastra mijloc
mov cx, 170+w ;axa ox
mov dx, 42+h  ;axa oy 
mov al, 9 ;culoarea
u17: mov ah, 0ch ;deseneaza
int 10h
dec cx
cmp cx, 180 ;compara pentreu oprire la 100
ja u17 

; fereastra stanga
mov cx, 130+w
mov dx, 35+h
mov al, 8       
u18: mov ah, 0ch
int 10h
inc dx
cmp dx,100 
jb u18

; fereastra dreapta
mov cx, 170+w
mov dx, 35+h
mov al, 8      
u19: mov ah, 0ch
int 10h
inc dx
cmp dx,100 
jb u19      

; fereastra mijloc
mov cx, 150+w
mov dx, 35+h
mov al, 9       
u20: mov ah, 0ch
int 10h
inc dx
cmp dx,100 
jb u20
         
         

;se aude un sunte la terminare

mov ah, 02
mov dx, 07h
int 21h



;mesaj
int 10h 
mov dx, offset msg 
mov ah, 9 
int 21h 
mov ah, 0 
int 16h 
hlt 
msg db " Aceasta este casuta mea     $"     






ret




