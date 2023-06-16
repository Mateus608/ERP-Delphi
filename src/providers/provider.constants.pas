unit provider.constants;

interface
procedure GETPessoas(iTipo: Integer);

var
  iCodFilial: Integer; // Armazena o Codigo da Filial
  sRazaoFilial : String; // Armazena o Nome da Filial

implementation

uses service.cadastro;

// procedure para buscar clientes, funcionarios, fornecedores
procedure GETPessoas(iTipo: Integer);
begin
  ServiceCadastro.QRYPessoas.Close; // Fecha a qry
  ServiceCadastro.QRYPessoas.SQL.Clear; // Limpa o SQL da qry
  ServiceCadastro.QRYPessoas.SQL.Add('select * from pessoas where pes_tipopessoa = :tipopessoa'); // Adiciona comando SQL
  ServiceCadastro.QRYPessoas.SQL.Add('order by pes_codigo desc'); // Ordena a lista em ordem decrescente
  ServiceCadastro.QRYPessoas.Params[0].AsInteger := iTipo; // Recebe e armazena o tipo
  ServiceCadastro.QRYPessoas.Open();
end;

end.
