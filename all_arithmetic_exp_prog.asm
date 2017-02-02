data segment
    a db 2h
    b db 2h 
    c dw 0002h
    add1 db ?
    sub1 db ?
    mul1 db ?
    and1 db ?
    or1 db ?
    not1 db ?
    xor1 db ?   
    arr1 db 1,2,3,4 
    count db 3
    sum db 0h
data ends
code segment
      assume cs:code ds:data
start:      mov ax,@data
      mov ds, ax
      mov al, a
      add al, b
      mov add1, al
      mov al, a
      sub al, b
      mov sub1, al
      mov al, a
      mov ah, b
      mul ah
      mov mul1, ah
      mov ax, c
      mov cl, a
      div cl 
      mov al, a
      and al, b
      mov and1, al
      mov al, a
      or al, b
      mov or1, al  
      not al
      mov not1, al  
      mov al, a
      xor al,b
      mov xor1, al 
      mov cl,count 
      mov al, arr1+offset
      loop:
      inc al
      mov dl,arr1[al]
      add sum,dl
      dec cl
      jnz cl, loop
code ends
end start
