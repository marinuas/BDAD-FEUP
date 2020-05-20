
PRAGMA foreign_keys= ON;

--Pessoa
INSERT INTO Pessoa(nif, nome, email, nr_tel) VALUES ('234678567', 'Ana Maria Silva', 'ana.maria@gmail.com', '998656556');
INSERT INTO Pessoa(nif, nome, email, nr_tel) VALUES ('109674533', 'Joao da Silva', 'jonysilva22@sapo.pt', '965678435');
INSERT INTO Pessoa(nif, nome, email, nr_tel) VALUES ('100873765', 'Leandro Teixeira', 'leoobro@hotmail.com', '968966590');
INSERT INTO Pessoa(nif, nome, email, nr_tel) VALUES ('345623765', 'Maria Fernandes', 'marfer@sapo.pt', '965898007');
INSERT INTO Pessoa(nif, nome, email, nr_tel) VALUES ('345623766', 'Daniela Dias', 'daniedi@yahoo.pt', '965980143');
INSERT INTO Pessoa(nif, nome, email, nr_tel) VALUES ('100972098', 'José António Martins', 'jam85@gmail.com', '932214376');
INSERT INTO Pessoa(nif, nome, email, nr_tel) VALUES ('233674080', 'Miguel Nunes', 'miguelnuness@hotmail.com', '921198670');
INSERT INTO Pessoa(nif, nome, email, nr_tel) VALUES ('455784567', 'Diogo Monteiro', 'dmonteiro@sapo.pt', '910097698');
INSERT INTO Pessoa(nif, nome, email, nr_tel) VALUES ('385654091', 'Bárbara Guimarães', 'barbaragui3@gmail.com', '930098566');
INSERT INTO Pessoa(nif, nome, email, nr_tel) VALUES ('455788654', 'Gabriela Ferreira', 'gaby56@sapo.pt', '969897604');
INSERT INTO Pessoa(nif, nome, email, nr_tel) VALUES ('453283123', 'Silvestre Amorim', 'silvamorim@hotmail.com', '932345870');
INSERT INTO Pessoa(nif, nome, email, nr_tel) VALUES ('233283123', 'Samuel Costa', 'samusamuel@hotmail.com', '915871011');
INSERT INTO Pessoa(nif, nome, email, nr_tel) VALUES ('113283123', 'Beatriz Filipa', 'bea123@hotmail.com', '964587022');



--Cliente
INSERT INTO Cliente(nif, data_nascimento) VALUES ('234678567', '1996-04-23');
INSERT INTO Cliente(nif, data_nascimento) VALUES ('100873765', '1998-05-23');
INSERT INTO Cliente(nif, data_nascimento) VALUES ('345623765', '2000-09-03');
INSERT INTO Cliente(nif, data_nascimento) VALUES ('100972098', '1985-02-07');
INSERT INTO Cliente(nif, data_nascimento) VALUES ('233674080', '1967-11-04');
INSERT INTO Cliente(nif, data_nascimento) VALUES ('233283123', '1976-01-12');
INSERT INTO Cliente(nif, data_nascimento) VALUES ('113283123', '1989-03-03');



--Funcionario
INSERT INTO Funcionario(nif, cargo) VALUES ('109674533', 'secretario');
INSERT INTO Funcionario(nif, cargo) VALUES ('345623766', 'gerente');
INSERT INTO Funcionario(nif, cargo) VALUES ('455788654', 'rececionista');
INSERT INTO Funcionario(nif, cargo) VALUES ('455784567', 'funcionario de bar');
INSERT INTO Funcionario(nif, cargo) VALUES ('385654091', 'funcionario de spa');
INSERT INTO Funcionario(nif, cargo) VALUES ('453283123', 'empregado de limpeza');



--Quarto
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('101', 'solteiro');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('102', 'solteiro');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('103', 'solteiro');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('104', 'solteiro');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('105', 'solteiro');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('111', 'solteiro duplo');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('112', 'solteiro duplo');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('113', 'solteiro duplo');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('114', 'solteiro duplo');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('201', 'casal');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('202', 'casal');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('203', 'casal');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('204', 'casal');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('205', 'casal');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('301', 'familiar');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('302', 'familiar');
INSERT INTO Quarto(nr_quarto, tipo_quarto) VALUES ('303', 'familiar');


--Reserva
INSERT INTO Reserva(nr_reserva, nr_quarto, nif, data_inicio, data_fim) VALUES ('78982', '101', '234678567', '2020-03-22', '2020-03-23');
INSERT INTO Reserva(nr_reserva, nr_quarto, nif, data_inicio, data_fim) VALUES ('78983', '111', '100873765', '2020-03-21', '2020-03-23');
INSERT INTO Reserva(nr_reserva, nr_quarto, nif, data_inicio, data_fim) VALUES ('78984', '301', '345623765', '2020-03-19', '2020-03-24');
INSERT INTO Reserva(nr_reserva, nr_quarto, nif, data_inicio, data_fim) VALUES ('78985', '102', '100972098', '2020-03-23', '2020-03-24');
INSERT INTO Reserva(nr_reserva, nr_quarto, nif, data_inicio, data_fim) VALUES ('78986', '203', '233674080', '2020-03-21', '2020-03-25');
INSERT INTO Reserva(nr_reserva, nr_quarto, nif, data_inicio, data_fim) VALUES ('78987', '204', '113283123', '2020-03-22', '2020-03-26');
INSERT INTO Reserva(nr_reserva, nr_quarto, nif, data_inicio, data_fim) VALUES ('78988', '301', '233283123', '2020-04-01', '2020-04-05');
INSERT INTO Reserva(nr_reserva, nr_quarto, nif, data_inicio, data_fim) VALUES ('78989', '114', '233674080', '2020-04-01', '2020-04-06');




--EpocaDoAno
INSERT INTO EpocaDoAno(data_inicio, data_fim) VALUES ('2020-03-20', '2020-06-21');
INSERT INTO EpocaDoAno(data_inicio, data_fim) VALUES ('2020-06-21', '2020-09-23');
INSERT INTO EpocaDoAno(data_inicio, data_fim) VALUES ('2020-09-23', '2020-12-23');
INSERT INTO EpocaDoAno(data_inicio, data_fim) VALUES ('2020-12-23', '2021-03-24');



--TaxaDeOcupacao
INSERT INTO TaxaDeOcupacao(percentagem) VALUES ('20');
INSERT INTO TaxaDeOcupacao(percentagem) VALUES ('60');
INSERT INTO TaxaDeOcupacao(percentagem) VALUES ('75');
INSERT INTO TaxaDeOcupacao(percentagem) VALUES ('90');
INSERT INTO TaxaDeOcupacao(percentagem) VALUES ('100');



--Servico
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('2043', 'esfoliacao facial', '25', '2020-03-02');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('2044', 'limpeza de pele', '20', '2019-12-23');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('2045', 'manicure', '10', '2019-01-30');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('2046', 'spa day', '120', '2020-02-04');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('2047', 'massagem terapeutica', '75', '2020-03-16');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('3043', 'lavandaria', '40', '2020-02-20');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('3044', 'pequeno almoço', '15', '2020-03-02');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('3045', 'almoço', '50', '2019-12-01');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('3046', 'lavandaria', '30', '2020-04-13');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('3047', 'jantar', '45', '2020-03-08');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('4043', 'coca-cola', '2.5', '2020-02-21');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('4055', 'iced tea', '4', '2019-12-01');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('4042', 'agua', '2', '2020-03-08');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('4098', 'cerveja', '3', '2020-03-10');
INSERT INTO Servico(id_servico, nome, preco, data) VALUES ('4076', 'fanta', '2.5', '2020-03-16');



--ServicoDeQuarto
INSERT INTO ServicoDeQuarto(id_servico, nome, preco, data) VALUES ('3043', 'lavandaria', '40', '2020-02-20');
INSERT INTO ServicoDeQuarto(id_servico, nome, preco, data) VALUES ('3044', 'pequeno almoço', '15', '2020-03-02');
INSERT INTO ServicoDeQuarto(id_servico, nome, preco, data) VALUES ('3045', 'almoço', '50', '2019-12-01');
INSERT INTO ServicoDeQuarto(id_servico, nome, preco, data) VALUES ('3046', 'lavandaria', '30', '2020-04-13');
INSERT INTO ServicoDeQuarto(id_servico, nome, preco, data) VALUES ('3047', 'jantar', '45', '2020-03-08');



--TratamentoDeSpa
INSERT INTO TratamentoDeSpa(id_servico, nome, preco, data) VALUES ('2043', 'esfoliacao facial', '25', '2020-03-02');
INSERT INTO TratamentoDeSpa(id_servico, nome, preco, data) VALUES ('2044', 'limpeza de pele', '20', '2019-12-23');
INSERT INTO TratamentoDeSpa(id_servico, nome, preco, data) VALUES ('2045', 'manicure', '10', '2019-01-30');
INSERT INTO TratamentoDeSpa(id_servico, nome, preco, data) VALUES ('2046', 'spa day', '120', '2020-02-04');
INSERT INTO TratamentoDeSpa(id_servico, nome, preco, data) VALUES ('2047', 'massagem terapeutica', '75', '2020-03-16');



--TipoDeBebida
INSERT INTO TipoDeBebida(id_servico, nome, preco, data) VALUES ('4043', 'coca-cola', '2.5', '2020-02-21');
INSERT INTO TipoDeBebida(id_servico, nome, preco, data) VALUES ('4055', 'iced tea', '4', '2019-12-01');
INSERT INTO TipoDeBebida(id_servico, nome, preco, data) VALUES ('4042', 'agua', '2', '2020-03-08');
INSERT INTO TipoDeBebida(id_servico, nome, preco, data) VALUES ('4098', 'cerveja', '3', '2020-03-10');
INSERT INTO TipoDeBebida(id_servico, nome, preco, data) VALUES ('4076', 'fanta', '2.5', '2020-03-16');



--Cartao
INSERT INTO Cartao(id_cartao, nif, nr_pontos) VALUES ('5586', '234678567', '900');
INSERT INTO Cartao(id_cartao, nif, nr_pontos) VALUES ('5585', '100873765', '0');
INSERT INTO Cartao(id_cartao, nif, nr_pontos) VALUES ('5584', '345623765', '400');
INSERT INTO Cartao(id_cartao, nif, nr_pontos) VALUES ('5583', '100972098', '20000');
INSERT INTO Cartao(id_cartao, nif, nr_pontos) VALUES ('5582', '233674080', '850');
INSERT INTO Cartao(id_cartao, nif, nr_pontos) VALUES ('5581', '233283123', '1800');
INSERT INTO Cartao(id_cartao, nif, nr_pontos) VALUES ('5580', '113283123', '0');



--Fatura
INSERT INTO Fatura(id_fatura, id_cartao, data, total) VALUES ('0001', '5586', '2020-03-23', '90');
INSERT INTO Fatura(id_fatura, id_cartao, data, total) VALUES ('0002', '5585', '2020-03-23', '220');
INSERT INTO Fatura(id_fatura, id_cartao, data, total) VALUES ('0003', '5584', '2020-03-24', '860');
INSERT INTO Fatura(id_fatura, id_cartao, data, total) VALUES ('0004', '5583', '2020-03-24', '150');
INSERT INTO Fatura(id_fatura, id_cartao, data, total) VALUES ('0005', '5582', '2020-03-25', '520');
INSERT INTO Fatura(id_fatura, id_cartao, data, total) VALUES ('0006', '5581', '2020-03-26', '600');




--QuantidadeDeServiçosPrestados
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0001', '2045', '1');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0003', '2046', '1');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0002', '4043', '2');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0005', '2047', '2');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0006', '3047', '1');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0003', '3043', '2');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0001', '4042', '2');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0003', '4055', '1');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0004', '4055', '3');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0004', '4098', '2');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0004', '4042', '1');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0005', '4098', '2');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0005', '4076', '1');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0006', '4043', '2');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0006', '4042', '5');
INSERT INTO QuantidadeDeServicosPrestados(id_fatura, id_servico, quantidade) VALUES ('0006', '4098', '1');



        --QuantidadeDeBebidas
INSERT INTO QuantidadeDeBebidas(id_cartao, id_servico, quantidade) VALUES ('5586', '4043', '2');
INSERT INTO QuantidadeDeBebidas(id_cartao, id_servico, quantidade) VALUES ('5586', '4042', '2');
INSERT INTO QuantidadeDeBebidas(id_cartao, id_servico, quantidade) VALUES ('5584', '4055', '1');
INSERT INTO QuantidadeDeBebidas(id_cartao, id_servico, quantidade) VALUES ('5583', '4055', '3');
INSERT INTO QuantidadeDeBebidas(id_cartao, id_servico, quantidade) VALUES ('5583', '4098', '2');
INSERT INTO QuantidadeDeBebidas(id_cartao, id_servico, quantidade) VALUES ('5583', '4042', '1');
INSERT INTO QuantidadeDeBebidas(id_cartao, id_servico, quantidade) VALUES ('5582', '4098', '2');
INSERT INTO QuantidadeDeBebidas(id_cartao, id_servico, quantidade) VALUES ('5582', '4076', '1');
INSERT INTO QuantidadeDeBebidas(id_cartao, id_servico, quantidade) VALUES ('5581', '4043', '2');
INSERT INTO QuantidadeDeBebidas(id_cartao, id_servico, quantidade) VALUES ('5581', '4042', '5');
INSERT INTO QuantidadeDeBebidas(id_cartao, id_servico, quantidade) VALUES ('5581', '4098', '1');



        --DescontoAplicado
INSERT INTO DescontoAplicado(id_cartao, id_fatura, desconto) VALUES ('5586', '0001', '9');
INSERT INTO DescontoAplicado(id_cartao, id_fatura, desconto) VALUES ('5585', '0001', '0');
INSERT INTO DescontoAplicado(id_cartao, id_fatura, desconto) VALUES ('5584', '0001', '4');
INSERT INTO DescontoAplicado(id_cartao, id_fatura, desconto) VALUES ('5583', '0001', '20');
INSERT INTO DescontoAplicado(id_cartao, id_fatura, desconto) VALUES ('5582', '0001', '8,5');
INSERT INTO DescontoAplicado(id_cartao, id_fatura, desconto) VALUES ('5581', '0001', '18');


--PrecoDeQuarto
INSERT INTO PrecoDeQuarto(nr_quarto, data_inicio, data_fim, percentagem, preco) VALUES ('101', '2020-03-20', '2020-06-21', '60', '90');
INSERT INTO PrecoDeQuarto(nr_quarto, data_inicio, data_fim, percentagem, preco) VALUES ('102', '2020-03-20', '2020-06-21', '60', '90');
INSERT INTO PrecoDeQuarto(nr_quarto, data_inicio, data_fim, percentagem, preco) VALUES ('103', '2020-03-20', '2020-06-21', '20', '79');
INSERT INTO PrecoDeQuarto(nr_quarto, data_inicio, data_fim, percentagem, preco) VALUES ('104', '2020-03-20', '2020-06-21', '90', '110');
INSERT INTO PrecoDeQuarto(nr_quarto, data_inicio, data_fim, percentagem, preco) VALUES ('105', '2020-03-20', '2020-06-21', '75', '100');
INSERT INTO PrecoDeQuarto(nr_quarto, data_inicio, data_fim, percentagem, preco) VALUES ('111', '2020-03-20', '2020-06-21', '60', '110');
INSERT INTO PrecoDeQuarto(nr_quarto, data_inicio, data_fim, percentagem, preco) VALUES ('113', '2020-03-20', '2020-06-21', '90', '130');
INSERT INTO PrecoDeQuarto(nr_quarto, data_inicio, data_fim, percentagem, preco) VALUES ('114', '2020-03-20', '2020-06-21', '60', '110');
INSERT INTO PrecoDeQuarto(nr_quarto, data_inicio, data_fim, percentagem, preco) VALUES ('203', '2020-03-20', '2020-06-21', '60', '130');
INSERT INTO PrecoDeQuarto(nr_quarto, data_inicio, data_fim, percentagem, preco) VALUES ('204', '2020-03-20', '2020-06-21', '60', '130');
INSERT INTO PrecoDeQuarto(nr_quarto, data_inicio, data_fim, percentagem, preco) VALUES ('205', '2020-03-20', '2020-06-21', '90', '160');
INSERT INTO PrecoDeQuarto(nr_quarto, data_inicio, data_fim, percentagem, preco) VALUES ('301', '2020-03-20', '2020-06-21', '60', '150');
