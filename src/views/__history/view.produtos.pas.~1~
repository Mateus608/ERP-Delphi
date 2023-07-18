unit view.produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.listas, Data.DB, Vcl.StdCtrls,
  Vcl.WinXCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, service.cadastro, provider.constants,
  Vcl.Mask, Vcl.DBCtrls;

type
  TViewProdutos = class(TViewBaseListas)
    DSProdutos2: TDataSource;
    pnlDetalhe: TPanel;
    DBGridDetalhe: TDBGrid;
    pnlTituloCadProduto: TPanel;
    lblTituloCadastro: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure DSDadosDataChange(Sender: TObject; Field: TField);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewProdutos: TViewProdutos;

implementation

{$R *.dfm}

procedure TViewProdutos.btnNovoClick(Sender: TObject);
begin // Novo
  inherited;
  ServiceCadastro.QRYProduto1PR1_GRUPO.AsInteger := 1;
  ServiceCadastro.QRYProduto1PR1_SUBGRUPO.AsInteger := 1;
end;

procedure TViewProdutos.DSDadosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  GETProdutoDetalhe(ServiceCadastro.QRYProduto1PR1_CODIGO.AsInteger); // Mostra os detalhes do produto selecionado
end;

procedure TViewProdutos.FormShow(Sender: TObject);
begin // Show
  inherited;
    GETProdutos;
end;

end.
