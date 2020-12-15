include 'emu8086.inc'
org  100h
 
jmp code    

w equ 100
h equ 100  
s equ 10 

p1 dw 30h
p2 dw 30h

scores db 30h
moves db 30h
  
;box values
b1 db 31h       
b2 db 31h       
b3 db 32h       
b4 db 31h       
b5 db 32h       
b6 db 32h       
b7 db 31h       
b8 db 32h       
b9 db 33h       
b10 db 33h       
b11 db 34h       
b12 db 33h       
b13 db 34h       
b14 db 34h       
b15 db 33h       
b16 db 34h    
       

;video mode/graphics mode 
code: 
        mov ah, 0
        mov al, 13h 
        int 10h    
                 
        mov ah,00
        int 16h 
        
        mov ah, 09h
        mov cx, 1000h 
       
        mov al, 20h
        mov bl, 90h
        int 10h       
                    
    print "      WELCOME TO NUMBER CRUSH GAME!!    "
        
    mov cx, 100+w  
    mov dx, 25     
    mov al, 15   

;lines for the the 4*4 matrix             
u1:                
    mov ah, 0ch    
    int 10h
    
    dec cx
    cmp cx, 100
    jae u1

    mov cx, 100+w  
    mov dx, 50     
    mov al, 15
     
u2: 
    mov ah, 0ch    
    int 10h
    
    dec cx
    cmp cx, 100
    jae u2
    
    mov cx, 100+w  
    mov dx, 75     
    mov al, 15     

u3: 
    mov ah, 0ch    
    int 10h
    
    dec cx
    cmp cx, 100
    jae u3

    mov cx, 100+w  
    mov dx, 100    
    mov al, 15     

u4:
    mov ah, 0ch    
    int 10h
    
    dec cx
    cmp cx, 100
    jae u4
    
    mov cx, 100+w  
    mov dx, 25+h   
    mov al, 15     
u5: 
    mov ah, 0ch    
    int 10h
    
    dec cx
    cmp cx, 100
    ja u5

    mov cx, 100    
    mov dx, 25+h   
    mov al, 15     
u6: 
    mov ah, 0ch    
    int 10h
    
    dec dx
    cmp dx, 25
    ja u6 
    
    mov cx, 125    
    mov dx, 25+h   
    mov al, 15  

u7:
    mov ah, 0ch    
    int 10h
    
    dec dx
    cmp dx, 25
    ja u7 

    mov cx, 150    
    mov dx, 25+h   
    mov al, 15     

u8: 
    mov ah, 0ch    
    int 10h
    
    dec dx
    cmp dx, 25
    ja u8 

    mov cx, 175    
    mov dx, 25+h   
    mov al, 15    
    
u9: 
    mov ah, 0ch   
    int 10h
    
    dec dx
    cmp dx, 25
    ja u9
         
    mov cx, 100+w  
    mov dx, 25+h   
    mov al, 15     

u10:
    mov ah, 0ch    
    int 10h
    
    dec dx
    cmp dx, 25
    ja u10     
 
Keystroke1:
    mov ah,00
    int 16h	
     

;row 1 and columns 1,2,3,4 with values at defined positions
row1:

a11: 
mov  dl, 13 
mov  dh, 5
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b1
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

a12: 
mov  dl, 17   
mov  dh, 5   
mov  bh, 0   
mov  ah, 02h 
int  10h

mov  al, b2
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h
  
a13:
mov  dl, 20  
mov  dh, 5 
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b3
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

a14:
mov  dl, 23 
mov  dh, 5
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b4
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h   

;row 2 and columns 1,2,3,4 with values at defined positions                                                           
row2:
a21:
mov  dl, 13 
mov  dh, 8
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b5
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h
  
a22:  
mov  dl, 17 
mov  dh, 8
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b6
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

a23: 
mov  dl, 20   
mov  dh, 8  
mov  bh, 0   
mov  ah, 02h 
int  10h

mov  al, b7
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h

a24:
mov  dl, 23  
mov  dh, 8
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b8
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

;row 3 and columns 1,2,3,4 with values at defined positions
row3:

a31:
mov  dl, 13 
mov  dh, 11
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b9
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h
 
a32:
mov  dl, 17 
mov  dh, 11
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b10
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

a33: 
mov  dl, 20   
mov  dh, 11   
mov  bh, 0   
mov  ah, 02h 
int  10h

mov  al, b11
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h

a34:
mov  dl, 23  
mov  dh, 11 
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b12
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

;row 4 and columns 1,2,3,4 with values at defined positions
row4:

a41:
mov  dl, 13 
mov  dh, 14
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b13
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

a42: 
mov  dl, 17
mov  dh, 14
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b14
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h
    
a43:
mov  dl, 20   
mov  dh, 14   
mov  bh, 0   
mov  ah, 02h 
int  10h

mov  al, b15
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h
    
a44:
mov  dl, 23  
mov  dh, 14 
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b16
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h
  
Keystroke2:
mov ah,00
int 16h
                  
jmp Position

Comment:
mov  dl, 30  
mov  dh, 10 
mov  bh, 0    
mov  ah, 02h  
int  10h    
print "#####!!"

mov  dl, 30  
mov  dh, 10 
mov  bh, 0    
mov  ah, 02h  
int  10h    
ret

Replace_rows:
cmp moves,31h
je replace1

cmp moves,32h
je replace2 

cmp moves,33h
je replace3

cmp moves,34h
je replace4

cmp moves,35h
je replace5

cmp moves,36h
je replace6

cmp moves,37h
je replace7

cmp moves,38h
je replace8 

cmp moves,39h
je replace9

jmp replace10    

replace1:
mov b1,35h
mov b2,36h
mov b3,35h
mov b4,35h

mov b5,36h
mov b6,35h
mov b7,36h
mov b8,36h
jmp replace_row1

replace2:
mov b9,37h
mov b10,37h
mov b11,37h
mov b12,38h

mov b13,38h
mov b14,38h
mov b15,38h
mov b16,37h
jmp replace_row3 

replace3:
mov b1,31h
mov b2,31h
mov b3,32h
mov b4,31h

mov b5,32h
mov b6,32h
mov b7,31h
mov b8,32h
jmp replace_row1

replace4:
mov b9,34h
mov b10,33h
mov b11,33h
mov b12,33h

mov b13,33h
mov b14,34h
mov b15,34h
mov b16,34h
jmp replace_row3
        
replace5:
mov b1,36h
mov b2,35h
mov b3,35h
mov b4,35h

mov b5,35h
mov b6,36h
mov b7,36h
mov b8,36h
jmp replace_row1

replace6:
mov b9,37h
mov b10,37h
mov b11,37h
mov b12,38h

mov b13,38h
mov b14,38h
mov b15,38h
mov b16,37h
jmp replace_row3 

replace7:
mov b1,33h
mov b2,33h
mov b3,33h
mov b4,34h

mov b5,34h
mov b6,34h
mov b7,34h
mov b8,33h
jmp replace_row1

replace8:
mov b9,36h
mov b10,39h
mov b11,36h
mov b12,36h

mov b13,39h
mov b14,36h
mov b15,39h
mov b16,39h
jmp replace_row3 

replace9:
mov b1,37h
mov b2,37h
mov b3,37h
mov b4,35h

mov b5,35h
mov b6,35h
mov b7,35h
mov b8,37h
jmp replace_row1

replace10:
mov b9,38h
mov b10,38h
mov b11,36h
mov b12,38h

mov b13,36h
mov b14,36h
mov b15,36h
mov b16,35h
jmp replace_row3
        
replace_row1: 
mov  dl, 13 
mov  dh, 5
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b1
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h
 
mov  dl, 17   
mov  dh, 5   
mov  bh, 0   
mov  ah, 02h 
int  10h

mov  al, b2
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h

mov  dl, 20  
mov  dh, 5 
mov  bh, 0    
mov  ah, 02h  
int  10h
          
mov  al, b3
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

mov  dl, 23 
mov  dh, 5
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b4
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h   

replace_row2:
mov  dl, 13 
mov  dh, 8
mov  bh, 0    
mov  ah, 02h  
int  10h
          
mov  al, b5
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h
    
mov  dl, 17 
mov  dh, 8
mov  bh, 0    
mov  ah, 02h  
int  10h
          
mov  al, b6
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h
 
mov  dl, 20   
mov  dh, 8  
mov  bh, 0   
mov  ah, 02h 
int  10h
          
mov  al, b7
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h

mov  dl, 23  
mov  dh, 8
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b8
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h  
jmp Score

replace_row3:
mov  dl, 13 
mov  dh, 11
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b9
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h
 
mov  dl, 17 
mov  dh, 11
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b10
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h
 
mov  dl, 20   
mov  dh, 11   
mov  bh, 0   
mov  ah, 02h 
int  10h

mov  al, b11
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h

mov  dl, 23  
mov  dh, 11 
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b12
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

replace_row4:
mov  dl, 13 
mov  dh, 14
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b13
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

mov  dl, 17
mov  dh, 14
mov  bh, 0    
mov  ah, 02h  
int  10h
         
mov  al, b14
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h
    
mov  dl, 20   
mov  dh, 14   
mov  bh, 0   
mov  ah, 02h 
int  10h
          
mov  al, b15
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h
   
mov  dl, 23  
mov  dh, 14 
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b16
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h  

cmp moves,39h
jg exit

jmp Score

swap3_7:
mov  dl, 20  
mov  dh, 5 
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b7
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h  
 
mov  dl, 20   
mov  dh, 8  
mov  bh, 0   
mov  ah, 02h 
int  10h

mov  al, b3
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h
         
call Comment
print "Sweet!!"

mov ah,00
int 16h
jmp Replace_rows
 
swap11_15:
mov  dl, 20   
mov  dh, 11   
mov  bh, 0   
mov  ah, 02h 
int  10h

mov  al, b15
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h

mov  dl, 20   
mov  dh, 14   
mov  bh, 0   
mov  ah, 02h 
int  10h

mov  al, b11
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h

call Comment
print "Candy!!"

mov ah,00
int 16h
jmp Replace_rows  

swap6_2:
mov  dl, 17 
mov  dh, 8
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b2
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

mov  dl, 17   
mov  dh, 5   
mov  bh, 0   
mov  ah, 02h 
int  10h

mov  al, b6
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h 

call Comment
print "Great!!"

mov ah,00
int 16h
jmp Replace_rows

swap16_12:
mov  dl, 23  
mov  dh, 14 
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b12
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h  

mov  dl, 23  
mov  dh, 11 
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b16
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

call Comment
print "Marvel!"

mov ah,00
int 16h   
jmp Replace_rows
      
swap1_5:
mov  dl, 13  
mov  dh, 8 
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b1
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h  
 
mov  dl, 13   
mov  dh, 5  
mov  bh, 0   
mov  ah, 02h 
int  10h

mov  al, b5
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h

call Comment
print "Neat!!"

mov ah,00
int 16h
jmp Replace_rows 

swap4_8:
mov  dl, 23  
mov  dh, 8 
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b4
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h  

mov  dl, 23  
mov  dh, 5 
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b8
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

call Comment
print "Lovely!"

mov ah,00
int 16h   
jmp Replace_rows 

swap7_8:
mov  dl, 20   
mov  dh, 8  
mov  bh, 0   
mov  ah, 02h 
int  10h

mov  al, b8
mov  bl, 0Ch 
mov  bh, 0   
mov  ah, 0Eh 
int  10h

mov  dl, 23  
mov  dh, 8
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b7
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h        

call Comment
print "Sweet!!"

mov ah,00
int 16h   
jmp Replace_rows

swap8_12:
mov  dl, 23  
mov  dh, 8
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b12
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h   

mov  dl, 23  
mov  dh, 11 
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b8
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h 

call Comment
print "Great!!"

mov ah,00
int 16h   
jmp Replace_rows

swap10_9:
mov  dl, 17 
mov  dh, 11
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b9
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

mov  dl, 13 
mov  dh, 11
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b10
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

call Comment
print "Sweet!!"

mov ah,00
int 16h   
jmp Replace_rows 

swap9_13:
mov  dl, 13 
mov  dh, 11
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b13
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h 

mov  dl, 13 
mov  dh, 14
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b9
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

call Comment
print "Juicy!!"

mov ah,00
int 16h   
jmp Replace_rows 
                 
swap10_14:
mov  dl, 17 
mov  dh, 11
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b14
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

mov  dl, 17
mov  dh, 14
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, b10
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

call Comment
print "Juicy!!"

mov ah,00
int 16h   
jmp Replace_rows 

Position:	
mov  dl, 1  
mov  dh, 17 
mov  bh, 0    
mov  ah, 02h  
int  10h  

Position1:
print "ENTER THE POSITION 1:"
int 10h   

mov  dl, 23  
mov  dh, 17 
mov  bh, 0    
mov  ah, 02h  
int  10h
print "00"  

mov  dl, 23  
mov  dh, 17 
mov  bh, 0    
mov  ah, 02h  
int  10h

Pos1:
mov cl,10
mov ax,dx
mul cl
mov dx,ax

mov ah,01
int 21h

cmp al,13
jz Position2

sub al,30h
mov bl,al
mov ax,00
mov al,bl
add dx,ax
jmp Pos1
            
Position2:
mov  dl, 1  
mov  dh, 20
mov  bh, 0    
mov  ah, 02h  
int  10h  

print "ENTER THE POSITION 2:"    
int 10h   
          
mov  dl, 23  
mov  dh, 20 
mov  bh, 0    
mov  ah, 02h  
int  10h
print "00"  
     
mov  dl, 23  
mov  dh, 20 
mov  bh, 0    
mov  ah, 02h  
int  10h

Pos2:
mov cl,10
mov ax,dx
mul cl
mov dx,ax

mov ah,01
int 21h

cmp al,13
jz Score1

sub al,30h
mov bl,al
mov ax,00
mov al,bl
add dx,ax
jmp Pos2
         
Score1:  
inc moves

cmp moves,31h
je swap3_7          ;1

cmp moves,32h       ;2
je swap11_15

cmp moves,33h       ;3
je swap6_2

cmp moves,34h       ;4
je swap16_12

cmp moves,35h
je swap3_7

cmp moves,36h       ;5 
je swap9_13

cmp moves,37h       ;6
je swap1_5

cmp moves,38h
je swap16_12
            
cmp moves,39h       ;7
je swap4_8
     
jmp swap10_14        ;8

Score:  
mov  dl, 3  
mov  dh, 23 
mov  bh, 0    
mov  ah, 02h  
int  10h  

print "SCORE:"   
int 10h 

mov  dl, 14 
mov  dh, 23
mov  bh, 0    
mov  ah, 02h  
int  10h

inc scores
mov  al, scores
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

mov  dl, 18  
mov  dh, 23 
mov  bh, 0    
mov  ah, 02h  
int  10h
    
MovesInCrush:
print "MOVES:"    
int 10h   

mov  dl, 26 
mov  dh, 23
mov  bh, 0    
mov  ah, 02h  
int  10h

mov  al, moves
mov  bl, 0Ch  
mov  bh, 0    
mov  ah, 0Eh  
int  10h

mov ah,00
int 16h
 
jmp Position

exit:  
mov  dl, 3  
mov  dh, 23 
mov  bh, 0    
mov  ah, 02h  
int  10h  

print "SCORE:"   
int 10h 

mov  dl, 14 
mov  dh, 23
mov  bh, 0    
mov  ah, 02h  
int  10h

print "10"
int 10h
       
mov  dl, 18  
mov  dh, 23 
mov  bh, 0    
mov  ah, 02h  
int  10h
          
print "MOVES:"    
int 10h   

mov  dl, 26       
mov  dh, 23
mov  bh, 0    
mov  ah, 02h  
int  10h

print "10"
int 10h

mov  dl, 1  
mov  dh, 17 
mov  bh, 0    
mov  ah, 02h  
int  10h  
print "!!YAY THE TOTAL MOVES ARE OVER!!"

mov  dl, 1  
mov  dh, 20
mov  bh, 0    
mov  ah, 02h  
int  10h  
print "YOU HAVE WONDERFULLY PLAYED THE GAME!!" 
ret                 