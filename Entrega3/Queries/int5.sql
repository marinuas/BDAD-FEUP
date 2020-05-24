--Diferença media de pontos acumulados nos cartões de Clientes que ficaram em quartos de solteiro e Clientes que ficaram em quartos familiares

.mode       columns
.headers    on
.nullvalue  NULL

select solteiro.avgnr_pontos-familiar.avgnr_pontos as diferenca_de_pontos from
(select avg(nr_pontos) as avgnr_pontos from Cartao natural Join Reserva where nr_quarto in
(select nr_quarto from  Quarto where tipo_quarto="solteiro"))  as solteiro,
(select avg(nr_pontos) as avgnr_pontos from Cartao natural Join Reserva where nr_quarto in (select nr_quarto
from Quarto where tipo_quarto="familiar")) as familiar;
