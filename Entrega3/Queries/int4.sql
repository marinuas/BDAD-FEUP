--Pessoas que frequentam o bar e têm pontos no cartão

.mode       columns
.headers    on
.nullvalue  NULL

select nome from Pessoa join Cartao on Pessoa.nif =Cartao.nif where(nr_pontos>0);