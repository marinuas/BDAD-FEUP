--Pessoas que usaram os pontos do cartao para aplicar desconto e que ainda tem pontos no cartao

select nome from Pessoa natural Join 
(select nif from Cartao C natural Join DescontoAplicado D where D.desconto>0 and C.nr_pontos>0);
