--email das pessoas que passaram mais de 3 dias seguidos hospedados no hotel 

.mode       columns
.headers    on
.nullvalue  NULL

select email, total_days 
from Pessoa
join
( 
select nr_reserva, nif, sum(julianday(data_fim)-julianday(data_inicio)) as total_days 
from Reserva
group by nr_reserva
) as dias_totais
on Pessoa.nif = dias_totais.nif 
where total_days > 3;