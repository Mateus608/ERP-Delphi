program ERP;

uses
  Vcl.Forms,
  view.principal in 'src\views\view.principal.pas' {ViewPrincipal},
  service.conexao in 'src\services\service.conexao.pas' {ServiceConexao: TDataModule},
  service.cadastro in 'src\services\service.cadastro.pas' {ServiceCadastro: TDataModule},
  provider.constants in 'src\providers\provider.constants.pas',
  view.base in 'src\views\view.base.pas' {ViewBase},
  view.base.listas in 'src\views\view.base.listas.pas' {ViewBaseListas},
  view.clientes in 'src\views\view.clientes.pas' {ViewClientes},
  view.fornecedores in 'src\views\view.fornecedores.pas' {ViewFornecedores},
  provider.conversao in 'src\providers\provider.conversao.pas',
  view.produtos in 'src\views\view.produtos.pas' {ViewProdutos},
  view.mensagens in 'src\views\view.mensagens.pas' {ViewMensagens},
  view.fundo in 'src\views\view.fundo.pas' {ViewFundo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.CreateForm(TViewMensagens, ViewMensagens);
  Application.CreateForm(TViewFundo, ViewFundo);
  Application.Run;
end.
