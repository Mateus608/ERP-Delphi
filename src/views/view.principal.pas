unit view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlBackPrincipal: TPanel;
    pnlRodape: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlLineLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescEmpresa: TLabel;
    pnlVersao: TPanel;
    lblVersaoTitulo: TLabel;
    lblVersao: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImagemUsuario: TPanel;
    imgUserBranca: TImage;
    pnlDadosUsuarios: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    pnlLicenciado: TPanel;
    pnlLineRodape: TPanel;
    pnlConteudoLicensa: TPanel;
    lblTituloLicenciado: TLabel;
    lblLicenciado: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnClientes: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnFornecedores: TSpeedButton;
    bntProdutos: TSpeedButton;
    btnConfig: TSpeedButton;
    btnSair: TSpeedButton;
    imgUserLaranja: TImage;
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure bntProdutosClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure imgUserBrancaMouseEnter(Sender: TObject);
    procedure imgUserLaranjaMouseLeave(Sender: TObject);
  private
    procedure GET_LineMENU(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.bntProdutosClick(Sender: TObject);
begin // Produtos
  GET_LineMENU(Sender); // Par�metro da fun��o
end;

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin // Caixa
  GET_LineMENU(Sender); // Par�metro da fun��o
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin // Clientes
  GET_LineMENU(Sender); // Par�metro da fun��o
end;

procedure TViewPrincipal.btnConfigClick(Sender: TObject);
begin // Config
  GET_LineMENU(Sender); // Par�metro da fun��o
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin // Fornecedores
  GET_LineMENU(Sender); // Par�metro da fun��o
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin // Sair
  Application.Terminate;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin // Show
  GET_LineMENU(btnClientes); // Par�metro da fun��o
end;

procedure TViewPrincipal.GET_LineMENU(Sender: TObject);
begin
  ShapeMenu.Left := 0;
  ShapeMenu.Top := 0;
  ShapeMenu.Height := TSpeedButton(Sender).Height; // O shape vai receber a altura do bot�o clicado
  ShapeMenu.Top := TSpeedButton(Sender).Top; // O shape vai receber o top do bot�o clicado (position y)
  pnlShapeMenu.Repaint; // Posiciona o shape
end;

procedure TViewPrincipal.imgUserBrancaMouseEnter(Sender: TObject);
begin // Colocar o mouse (img branca)
  imgUserBranca.Visible := False;
  imgUserLaranja.Visible := True;
end;

procedure TViewPrincipal.imgUserLaranjaMouseLeave(Sender: TObject);
begin // Tirar o mouse (img Laranja)
  imgUserBranca.Visible := True;
  imgUserLaranja.Visible := False;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin // Colocar o mouse
  lblTituloEmpresa.Font.Color := $000FBBD9;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin // Tirar o mouse
  lblTituloEmpresa.Font.Color := clWhite;
end;

end.