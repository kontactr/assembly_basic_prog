.data
b db 1h
d db 4h
.code  
  mov cl,d           
  mov ax,0001H
  loop1:  
   mul cl
   dec cl
  cmp cl,1h
  je loop2
  jmp loop1
loop2:
end 


