--Pessoas que frequentam o bar e têm pontos no cartão
select nome from Pessoa join Cartao on Pessoa.nif =Cartao.nif where(nr_pontos>0);