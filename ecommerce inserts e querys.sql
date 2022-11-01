select * from cliente;

insert into cliente (Pnome, Minit, Unome, Endereco, DataNasc) values
					('carlos', 'M', 'Melo', 'Rua 123', '1987-09-12'),
                    ('matheus', 'R', 'frade', 'Rua 45669', '1965-04-22'),
                    ('marcos', 'G', 'cardis', 'Rua 6546', '1992-06-17'),
                    ('maria', 'N', 'madeira', 'Rua sdfa', '1988-11-28'),
                    ('mecanica', 'M', 'Jade', 'Rua 123', '1987-09-12'),
                    ('clinica', 'M', 'Bem Estar', 'Rua 123', '1987-07-26'),
                    ('serviços', 'M', 'Gerais', 'Rua 123', '1987-09-25'),
                    ('mariane', 'j', 'quents', 'Rua jfg5', '1998-10-12');
                    
insert into juridica (idCliente, CNPJ) values
					('5', '12345678912345'),
                    ('6', '98765432154321'),
                    ('7', '11223344556677');
                    
insert into fisica (idCliente, CPF) values
					('1', '11122233345'),
                    ('2', '12345678910'),
                    ('3', '22334456711'),
                    ('4', '99988877766'),
                    ('8', '33355577799');
                    
insert into forma_de_pagamento (idCliente, tipoPagamento, numeroCartaoCredito, nomeCartao, validade) values
								('1', 'PIX', null, null, null),
                                ('1', 'Boleto', null, null, null),
                                ('1', 'Cartão de Crédito', '111133334', 'carlos m melo', '11/12'),
                                ('2', 'PIX', null, null, null),
                                ('2', 'Cartão de Crédito', '444466665', 'matheus frade', '04/05'),
                                ('3', 'PIX', null, null, null),
                                ('4', 'Boleto', null, null, null),
                                ('5', 'PIX', null, null, null),
                                ('5', 'Cartão de Crédito', '888877776', 'Mecanica Jade', '14/07'),
                                ('6', 'PIX', null, null, null),
                                ('7', 'Boleto', null, null, null),
                                ('8', 'PIX', null, null, null);
                                
insert into produtos (nomeProduto, Categoria, Descricao, Valor, dimensoes) values
					('carrinho', 'Brinquedos', 'carrinho de controle remoto', '175.50', null),
                    ('camisa', 'Vestuário', 'camisa vermelha', '120.88', null),
                    ('Discman', 'Eletrônicos', 'discman portátil', '225.75', null),
                    ('estante', 'Móveis', 'Criado mudo', '322.87', '55*60'),
                    ('Bolacha', 'Alimentos', 'Bolacha sabor morango', '3.50', null),
                    ('calça jeans', 'Vestuário', 'Calça jeans masculina', '180.50', 'G'),
                    ('Boneca', 'Brinquedos', 'Boneca de pano', '130.40', null);
                    
insert into estoque (Estado, Cidade, CEP) values
					('RS', 'Porto Alegre', '56689876'),
                    ('SC', 'Florianópolis', '12345678'),
                    ('SP', 'São Paulo', '87654321'),
                    ('MG', 'Belo Horizonte', '45678999'),
                    ('BA', 'Salvador', '8888888'),
                    ('PR', 'Curitiba', '77779999');
			
insert into produto_no_estoque (idProduto, idEstoque, Quantidade) values
								('17', '3', '30'),
                                ('17', '5', '20'),
                                ('15', '2', '100'),
                                ('16', '1', '25'),
                                ('18', '3', '50'),
                                ('19', '1', '30'),
                                ('19', '2', '30'),
                                ('19', '3', '30'),
                                ('20', '4', '70'),
                                ('21', '5', '60'),
                                ('21', '6', '30');
select * from terceiro_vendedor;                       
insert into terceiro_vendedor (RazaoSocial, nomeFantasia, CNPJ, endereco) values
								('sergio vendas', 'Vende Muito', '12346578912345', 'rua das corujas, 123'),
                                ('Mario cortella', 'Super Vendas', '12346578912345', 'rua laranjeiras, 748'),
                                ('Vendas express', 'Sempre vende', '12346578912345', 'rua nevoas frias, 957'),
                                ('Comercial chagas', 'Eu vendas', '12346578912345', 'rua camareiras, 103'),
                                ('Comércio de vendas', 'Compre sempre', '12346578912345', 'rua das ovelhas, 258');
                                
insert into produto_por_vendedor (idProduto, idVendedor, Quantidade) values
								('15', '2', '50'),
                                ('19', '3', '90'),
                                ('16', '1', '25'),
                                ('17', '5', '50'),
                                ('18', '2', '25'),
                                ('18', '2', '25'),
                                ('15', '4', '50'),
                                ('20', '1', '70'),
                                ('21', '2', '90');
                                
insert into fornecedor (razaoSocial, CNPJ) values
						('fornecendo roupas', '12345678912345'),
                        ('fornecendo brinquedos', '11223344556677'),
                        ('fornecendo eletronicos', '33344445557777'),
                        ('fornecendo alimentos', '43219876554321'),
                        ('fornecendo moveis', '7778888999444');
                        
insert into produto_fornecido_por (idFornecedor, idProduto) values
									('2', '15'),
                                    ('1', '16'),
                                    ('3', '17'),
                                    ('5', '18'),
                                    ('4', '19'),
                                    ('1', '20'),
                                    ('2', '21');
								

insert into pedido (idCliente, statusPedido, descricao, frete, valorPedido) values
					('6', 'Entregue', null, '12.90', '36.48'),
                    ('5', 'Enviado', null, '22.49', '198.75'),
                    ('2', 'Entregue', null, '11.30', '186.60'),
                    ('3', 'Processando', null, '12.90', '193.40'),
                    ('7', 'Entregue', null, '12.90', '193.40');
                    
insert into produto_por_pedido (idProduto, idPedido, Quantidade, statusProduto) values
								('19', '1', '8', 'Disponível'),
                                ('16', '2', '1', 'Disponível'),
                                ('18', '2', '1', 'Disponível'),
                                ('15', '3', '1', 'Disponível'),
                                ('20', '4', '1', 'Disponível'),
                                ('20', '5', '1', 'Disponível');
                                
insert into pagamentos (idCliente, idPedido, idFormaDePagamento, valorPago) values
						('6', '1', '34', '26.48'),
                        ('2', '3', '28', '186.60'),
                        ('7', '5', '35', '193.40');
                        
insert into entregas (idPedido, statusEntrega, dataEnvio) values
						('1', 'Entregue', '2022-09-22'),
                        ('2', 'Enviado', '2022-09-28'),
                        ('3', 'Entregue', '2022-08-27'),
                        ('4', 'Processando', '2022-10-25'),
                        ('5', 'Entregue', '2022-09-24');



select * from produto_no_estoque;

select concat(Pnome, ' ', Minit, ' ', Unome) as NomeCompleto from cliente where Endereco = 'Rua 6546';

select statusPedido, valorPedido, round((valorPedido - Frete),2) as valorLiquido from pedido where statusPedido = 'Entregue';

select * from produto_no_estoque order by Quantidade;

select concat(Pnome, ' ', Minit, ' ', Unome) as NomeCompleto, p.idCliente, statusPedido, c.idCliente, frete from pedido as p, cliente as c having frete < 13 and p.idCliente = c.idCliente;

select nomeProduto, Quantidade, idEstoque from produto_no_estoque as e inner join produtos as p on p.idProduto = e.idProduto order by Quantidade;