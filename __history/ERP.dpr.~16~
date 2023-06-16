program ERP;

uses
  Vcl.Forms,
  view.principal in 'src\views\view.principal.pas' {ViewPrincipal},
  service.conexao in 'src\services\service.conexao.pas' {ServiceConexao: TDataModule},
  service.cadastro in 'src\services\service.cadastro.pas' {ServiceCadastro: TDataModule},
  provider.constants in 'src\providers\provider.constants.pas',
  view.base in 'src\views\view.base.pas' {ViewBase},
  view.base.listas in 'src\views\view.base.listas.pas' {ViewBaseListas},
  view.clientes in 'src\views\view.clientes.pas' {ViewClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.Run;
end.
