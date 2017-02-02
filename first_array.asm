.data
a db 1h,2h,3h,4h
b db 3h   
c db 0H
.code 
mov ax,0000h
mov bx,offset a
mov cl,b
mov al,b
loop1: 
    xlat
    add c,al
    dec cl
    mov al,cl
    cmp cl,0h
    je loop2
    jmp loop1
loop2:       
mov dl,c
end 


