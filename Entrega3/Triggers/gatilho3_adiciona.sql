create trigger adiciona_pontos
	after insert on QuantidadeDeBebidas
	for each row
	begin
	update Cartao
	set nr_pontos =(
		select sum(preco*QuantidadeDeBebidas.quantidade)*100 from TipoDeBebida
   		join QuantidadeDeBebidas on QuantidadeDeBebidas.id_servico = TipoDeBebida.id_servico
		where (QuantidadeDeBebidas.id_servico=new.id_servico and QuantidadeDeBebidas.id_cartao = new.id_cartao)
		group by QuantidadeDeBebidas.id_servico
	)where Cartao.id_cartao = new.id_cartao;
end;