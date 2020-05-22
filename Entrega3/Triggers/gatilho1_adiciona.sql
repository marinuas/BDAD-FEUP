create trigger QuartoOcupado
before insert on Reserva
for each row
begin
select CASE
when exists (select * from Reserva where (new.nr_quarto=nr_quarto and data_inicio>=new.data_inicio and
 data_fim>=new.data_fim) or (new.nr_quarto=nr_quarto and data_inicio>=new.data_inicio and data_fim<=data_fim 
 )or (new.nr_quarto=nr_quarto and data_inicio<=new.data_inicio and data_fim>=new.data_fim) or (new.nr_quarto=nr_quarto and data_inicio>=new.data_inicio and
 data_fim<=new.data_fim))
then
     raise(abort, 'quarto indisponível para as datas selecionadas')
 end;
end;