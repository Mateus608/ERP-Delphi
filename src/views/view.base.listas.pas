unit view.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXPanels, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls, service.cadastro, provider.constants;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlIcon: TPanel;
    ImgIcon: TImage;
    pnlFechar: TPanel;
    btnSair: TSpeedButton;
    lblTitulo: TLabel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    pnlLinhaFundo: TPanel;
    CardPanelListas: TCardPanel;
    CardCadastro: TCard;
    pnlTituloPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    DBGDados: TDBGrid;
    DSDados: TDataSource;
    CardPesquisa: TCard;
    procedure btnSairClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure CardPanelListasCardChange(Sender: TObject; PrevCard,
      NextCard: TCard);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin // Cancelar
  inherited;
  // Verifica o estado dela(se esta em modo de edi��o)
  if ServiceCadastro.QRYPessoas.State in dsEditModes then
    begin
      ServiceCadastro.QRYPessoas.Cancel; // Cancela a a��o no BD
      CardPanelListas.ActiveCard := CardPesquisa; // Retorna para a tela de pesquisa no CardPanel
    end;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin // Editar
  inherited;
  CardPanelListas.ActiveCard := CardCadastro; // Chama a tela de cadastro no CardPanel
  ServiceCadastro.QRYPessoas.Edit; // Coloca a qry em modo de edi��o
end;

procedure TViewBaseListas.btnExcluirClick(Sender: TObject);
begin // Excluir
  inherited;
  // Verifica se a quantidade de informa��es � maior que 0
  if ServiceCadastro.QRYPessoas.RecordCount > 0 then
    begin
      ServiceCadastro.QRYPessoas.Delete; // Deleta o cliente do BD

      // Dispara a mensagem ao salvar baseado na tag do formulario
      case Self.Tag of
        1: begin
          ShowMessage('Cliente excluido com sucesso.');
        end;

        2: begin
          ShowMessage('Forncedor excluido com sucesso.');
        end;

        3: begin
          ShowMessage('Funcionario excluido com sucesso.');
        end;
      end;

      CardPanelListas.ActiveCard := CardPesquisa; // Retorna para a tela de pesquisa no CardPanel
    end;
end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin // Novo
  inherited;
  CardPanelListas.ActiveCard := CardCadastro; // Chama a tela de cadastro no CardPanel
  ServiceCadastro.QRYPessoas.Insert; // Coloca a qry em modo de inser��o
end;

procedure TViewBaseListas.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin // Salvar
  inherited;
  // Verifica o estado dela(se esta em modo de edi��o)
  if ServiceCadastro.QRYPessoas.State in dsEditModes then
    begin
      ServiceCadastro.QRYPessoasPES_TIPOPESSOA.AsInteger := Self.Tag; // Ele salva o registro com o tipo pessoa baseado na tag do formulario
      ServiceCadastro.QRYPessoas.Post; // Salva - Atualiza no BD

      // Dispara a mensagem ao salvar baseado na tag do formulario
      case Self.Tag of
        1: begin
          ShowMessage('Cliente salvo com sucesso.');
        end;

        2: begin
          ShowMessage('Forncedor salvo com sucesso.');
        end;

        3: begin
          ShowMessage('Funcionario salvo com sucesso.');
        end;
      end;

      CardPanelListas.ActiveCard := CardPesquisa; // Retorna para a tela de pesquisa no CardPanel
    end;
end;

procedure TViewBaseListas.CardPanelListasCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin // CardChange
  inherited;
  // Se for selecionado o CardCadastro
    if CardPanelListas.ActiveCard = CardCadastro then
      SelectFirst; // Joga o foco no primeiro edt do formulario
end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin // Show
  inherited;
  CardPanelListas.ActiveCard := CardPesquisa; // Ao criar formulario mostra o CardPesquisa
  GETPessoas(Self.Tag);
end;

procedure TViewBaseListas.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  // Mover o formulario sem bordas
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
