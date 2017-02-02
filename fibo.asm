.data
a db 0h
b db 1h
c db ?
d db 5
.code
mov cl,d
mov al,a
mov bl,b
  loop1:
  add al,bl
  mov dl,al
  mov al,bl
  mov bl,dl    
  dec cl    
  cmp cl,0h
  je loop2
  jmp loop1
loop2:
end 


