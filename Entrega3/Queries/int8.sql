--nome da pessoa que teve a segunda fatura mais cara
.mode       columns
.headers    on
.nullvalue  NULL

select Pessoa.nome, total as total 
from Fatura
join Cartao on Cartao.id_cartao = Fatura.id_cartao
join Pessoa on Pessoa.nif = Cartao.nif
where total = ( 
	select max(total) 
	from 	Fatura
	where total not in (
		select max(total) 
		from Fatura)
		);