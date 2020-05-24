--Diferença media de pontos acumulados nos cartões de Clientes que ficaram em quartos de solteiro e Clientes que ficaram em quartos familiares

.mode       columns
.headers    on
.nullvalue  NULL

drop view if exists Solteiro;
create view Solteiro as
select avg(nr_pontos) as avgnr_pontos from Cartao, Reserva, Quarto where (Reserva.nif=Cartao.nif and Quarto.nr_quarto=Reserva.nr_quarto 
and Quarto.tipo_quarto="solteiro");


drop view if exists Familiar;
create view Familiar as
select avg(nr_pontos) as avgnr_pontos from Cartao, Reserva, Quarto where (Reserva.nif=Cartao.nif and Quarto.nr_quarto=Reserva.nr_quarto 
and Quarto.tipo_quarto="familiar");


select Solteiro.avgnr_pontos-Familiar.avgnr_pontos as diferenca_media_de_pontos from Solteiro, Familiar;
