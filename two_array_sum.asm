
org 100h

.data
a db 1h,2h,3h
b db 1h,2h,3h  
c db 3 dup(0)
count1 dw ?
count2 dw ?
count3 dw offset c   
.code
 mov bx,offset a
 mov cx,offset b
 mov count1,bx
 mov count2,cx
 mov cl,0h
 loop1:       
    mov bx,count1
    mov al,[bx]
    mov bx,count2
    mov ah,[bx]
    add al,ah 
    mov bx,count3
    mov [bx],al
    inc count3
    inc count2 
    inc count1
    inc cl
    cmp cl,3h
    je loop2:
    jmp loop1:      
        
loop2:
   mov cl,3
   mov bx,offset c
loop4:
   mov al,[bx]
   inc bx 
   dec cl
   cmp cl,0h
   je loop3
   jmp loop4
loop3: 
ret



