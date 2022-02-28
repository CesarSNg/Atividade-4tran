program logica1 !nome do programa (programa fonte logica1.f90)

implicit none

logical :: a,b,c, S !variáveis lógicas


a = .true. !a = verdadeiro
b = .true. !b = verdadeiro
c = .false. !c = falso


!CÁLCULOS PROPOSICIONAIS S = ~(a ^ (~b v c) ^ ~(a ^ c)) ^ ~b

S = .not.(a.and.(.not.b.or.c).and..not.(a.and.c)).and..not.b

!SAÍDA DE DADOS PARA TELA DOS


write(*,*)'valor logico das proposicoes simples'
write(*,*) ' a = ', a, ' b = ', b, ' c = ',c

write(*,*)'valor logico da proposicao composta'
write(*,*) ' S = ~(a ^ (~b v c) ^ ~(a ^ c)) ^ ~b = ',S


!SAÍDA DE DADOS PARA ARQUIVO


open(10,file='teste.dat',status='replace') !abertura de arquivo teste.dat

write(10,*)'valor logico das proposicoes simples'

write(10,*) 'a = ', a,'b = ', b,'c = ', c

write(10,*)'valor logico da proposicao composta'

write(10,*) 'S = ~((a ^ b) ^ ~(a v b)) = ',S

close(10) !fechamento do arquivo de saída

pause !pausa para parada do programa para verificação dos resultados na tela DOS

end program logica1 !a instrução program logica1 não é necessária