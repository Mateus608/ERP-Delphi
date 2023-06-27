unit provider.conversao;

interface
uses SysUtils, StrUtils, Classes;

type
  TPCPessoas = (tpClientes, tpFornecedores, tpFuncionarios); // Define o tipo de conversão
  TPCTelas = (tpProdutos, tpCaixa, tpGrupo, tpSubgrupo);

  function PessoasToInt(const t: TPCPessoas): Integer;
  function TelasToStr(const t: TPCTelas): String;

implementation

// Implementando Pessoas
// Define a constante = TPCPessoas que converte Pessoas pra Inteiro e recebe um inteiro
function PessoasToInt(const t: TPCPessoas): Integer;
begin
  case t of
    tpClientes: Result := 1;
    tpFornecedores: Result := 2;
    tpFuncionarios: Result := 3;
  end;
end;

// Implementando Telas
function TelasToStr(const t: TPCTelas): String;
begin
  case t of
    tpProdutos: Result := 'Produto';
    tpCaixa: Result := 'Caixa';
    tpGrupo: Result := 'Grupo';
    tpSubgrupo: Result := 'Subgrupo';
  end;
end;

end.
