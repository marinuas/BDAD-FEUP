create trigger adiciona_pontos
	after insert on QuantidadeDeBebidas
	for each row
	begin
	update Cartao
	set nr_pontos = (
		select preco*QuantidadeDeBebidas.quantidade*100 from TipoDeBebida
   join QuantidadeDeBebidas on QuantidadeDeBebidas.id_servico = TipoDeBebida.id_servico
	)
	where Cartao.id_cartao = new.id_cartao;
end;