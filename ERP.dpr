program ERP;

uses
  Vcl.Forms,
  view.principal in 'src\views\view.principal.pas' {ViewPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.Run;
end.
