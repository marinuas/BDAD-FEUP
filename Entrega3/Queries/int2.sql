--RESERVAS DA DATA 2020-03-20 À DATA 2020-03-25

select nr_reserva from Reserva where (data_inicio > "2020-03-20")
intersect
select nr_reserva from Reserva where (data_fim < "2020-03-25");
