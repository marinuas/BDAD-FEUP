--NOME DAS PESSOAS QUE JÁ QUE FICARAM COM O QUARTO 301

.mode       columns
.headers    on
.nullvalue  NULL

select Pessoa.nome from Pessoa join Reserva on Pessoa.nif = Reserva.nif
where (nr_quarto = "301");
