program ERP;

uses
  Vcl.Forms,
  view.principal in 'src\views\view.principal.pas' {ViewPrincipal},
  service.conexao in 'src\services\service.conexao.pas' {ServiceConexao: TDataModule},
  service.cadastro in 'src\services\service.cadastro.pas' {ServiceCadastro: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.Run;
end.
