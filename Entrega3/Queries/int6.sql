--Mostra Dados das próximas Reservas a partir da data atual em ordem crescente da data

select nome,nr_quarto,data_inicio,data_fim from Reserva R join Pessoa P on R.nif=P.nif where data_inicio>=CURRENT_DATE
order by data_inicio ;
