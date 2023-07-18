unit provider.constants;

interface
procedure GETPessoas(iTipo: Integer);
procedure GETProdutos;
procedure GETProdutoDetalhe(iCodProduto: Integer);

var
  iCodFilial: Integer; // Armazena o Codigo da Filial
  sRazaoFilial : String; // Armazena o Nome da Filial

implementation

uses service.cadastro;

// procedure para buscar clientes, funcionarios, fornecedores
procedure GETPessoas(iTipo: Integer);
begin // Busca todos os produtos
  ServiceCadastro.QRYPessoas.Close; // Fecha a qry
  ServiceCadastro.QRYPessoas.SQL.Clear; // Limpa o SQL da qry
  ServiceCadastro.QRYPessoas.SQL.Add('select * from pessoas where pes_tipopessoa = :tipopessoa'); // Adiciona comando SQL (ordenar pelo código)
  ServiceCadastro.QRYPessoas.SQL.Add('order by pes_codigo desc'); // Ordena a lista em ordem decrescente
  ServiceCadastro.QRYPessoas.Params[0].AsInteger := iTipo; // Recebe e armazena o tipo
  ServiceCadastro.QRYPessoas.Open();
end;

procedure GETProdutos;
begin
  ServiceCadastro.QRYProduto1.Close; // Fecha a qry
  ServiceCadastro.QRYProduto1.SQL.Clear; // Limpa o SQL da qry
  ServiceCadastro.QRYProduto1.SQL.Add('select * from produto1 order by pr1_codigo'); // Adiciona comando SQL (ordenar pelo código)
  ServiceCadastro.QRYProduto1.Open();
end;

procedure GETProdutoDetalhe(iCodProduto: Integer);
begin // Busca apenas o detalhe de um produto
  ServiceCadastro.QRYProduto2.Close; // Fecha a qry
  ServiceCadastro.QRYProduto2.SQL.Clear; // Limpa o SQL da qry
  ServiceCadastro.QRYProduto2.SQL.Add('select * from produto2 where pr2_codigopr1 = :codigo'); // Adiciona comando SQL
  ServiceCadastro.QRYProduto2.Params[0].AsInteger := iCodProduto; // Busca o parametro pelo indice (codigo = 0)
  ServiceCadastro.QRYProduto2.Open();
end;

end.
