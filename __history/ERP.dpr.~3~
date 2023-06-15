program ERP;

uses
  Vcl.Forms,
  view.principal in 'src\views\view.principal.pas' {ViewPrincipal},
  service.conexao in 'src\services\service.conexao.pas' {ServiceConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.Run;
end.
