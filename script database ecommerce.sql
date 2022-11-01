create database ecommerce;
use ecommerce;

desc produtos;

create table cliente(
	idCliente int auto_increment primary key,
    Pnome varchar(10) not null,
    Minit varchar(10),
    Unome varchar(15) not null,
    Endereco varchar(30),
    DataNasc date
);

create table fisica(
	idCliente int,
    CPF char(11),
    constraint fk_idcliente_cpf foreign key (idCliente) references cliente(idCliente)
);

create table juridica(
	idCliente int,
    CNPJ char(14),
    constraint fk_idcliente_cnpj foreign key (idCliente) references cliente(idCliente)
);

create table forma_de_pagamento(
	idFormaDePagamento int auto_increment primary key,
    idCliente int,
    tipoPagamento enum('Cartão de Crédito', 'Boleto', 'PIX') not null,
    numeroCartaoCredito int,
    nomeCartao varchar(20),
    validade varchar(5),
    constraint fk_idcliente_formapagto foreign key (idCliente) references cliente(idCliente)
);

create table produtos(
	idProduto int auto_increment primary key,
    nomeProduto varchar(15),
    Categoria ENUM('Eletrônicos', 'Vestuário', 'Brinquedos', 'Alimentos', 'Móveis'),
    Descricao varchar(30),
    Valor FLOAT,
    dimensoes varchar(10)
);

create table estoque(
	idEstoque int auto_increment primary key,
    Estado char(2) not null,
    Cidade varchar(15) not null,
    CEP varchar(10) not null
);

create table produto_no_estoque(
	idProduto int,
    idEstoque int,
    Quantidade int not null,
    constraint fk_idproduto_no_estoque foreign key (idProduto) references produtos(idProduto),
    constraint fk_idestoque_do_produto foreign key (idEstoque) references estoque(idEstoque)
);

create table terceiro_vendedor(
	idVendedor int auto_increment primary key,
    RazaoSocial varchar(20) not null,
    nomeFantasia varchar(25) not null,
    CNPJ char(14) not null,
    endereco varchar(25)
);

create table produto_por_vendedor(
	idProduto int,
    idVendedor int,
    Quantidade int not null,
    constraint fk_produto_vendedor foreign key (idProduto) references produtos(idProduto),
    constraint fk_vendedor_do_produto foreign key (idVendedor) references terceiro_vendedor(idVendedor)
);

create table fornecedor(
	idFornecedor int auto_increment primary key,
    razaoSocial varchar(25) not null,
    CNPJ char(14)
);

create table produto_fornecido_por(
	idFornecedor int,
    idProduto int,
    constraint fk_fornecedor_produto foreign key (idFornecedor) references fornecedor(idFornecedor),
    constraint fk_produto_fornecido foreign key (idProduto) references produtos(idProduto)
);

create table pedido(
	idPedido int auto_increment primary key,
    idCliente int,
    statusPedido ENUM('Processando', 'Enviado', 'Entregue'),
    descricao varchar(30),
    frete float,
    valorPedido float,
    constraint fk_idcliente_pedido foreign key (idCliente) references cliente(idCliente)
);

create table produto_por_pedido(
	idProduto int,
    idPedido int,
    Quantidade int not null,
    statusProduto enum('Disponível', 'Sem Estoque'),
    constraint fk_produto_por_pedido foreign key (idProduto) references produtos(idProduto),
    constraint fk_pedido_do_produto foreign key (idPedido) references pedido(idPedido)
);

create table pagamentos(
	idPagamento int auto_increment primary key,
    idCliente int,
    idPedido int,
    idFormaDePagamento int,
    valorPago float not null,
    constraint fk_cliente_pagador foreign key (idCliente) references cliente(idCliente),
    constraint fk_pedido_pago foreign key (idPedido) references pedido(idPedido),
    constraint fk_formapagto_usada foreign key (idFormaDePagamento) references forma_de_pagamento(idFormaDePagamento)
);

create table entregas(
	idEntrega int auto_increment primary key,
    idPedido int,
    statusEntrega enum('Enviado', 'Processando', 'Entregue'),
    dataEnvio date,
    constraint fk_idpedido_entrega foreign key (idPedido) references pedido(idPedido)
);

