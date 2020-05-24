create trigger nif_check
before insert on Pessoa
for each row
begin
select CASE
when exists (select * from Pessoa where(Pessoa.nif=new.nif))
then
     raise(abort, 'Este nif já tem resgito no hotel!')
 end;
end;
