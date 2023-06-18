unit provider.conversao;

interface
uses SysUtils, StrUtils, Classes;

type
  TPCPessoas = (tpClientes, tpFornecedores, tpFuncionarios); // Define o tipo de conversão

  function PessoasToInt(const t: TPCPessoas): Integer;

implementation

// Define a constante = TPCPessoas que converte Pessoas pra Inteiro e recebe um inteiro
function PessoasToInt(const t: TPCPessoas): Integer;
begin
  case t of
    tpClientes: Result := 1;
    tpFornecedores: Result := 2;
    tpFuncionarios: Result := 3;
  end;
end;

end.
