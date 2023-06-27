unit view.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXPanels, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls, service.cadastro, provider.constants,
  provider.conversao, view.mensagens;

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
    var
      sTela: String;
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin // Cancelar
  inherited;
  // Verifica o estado dela(se esta em modo de edição)
  if dsDados.DataSet.State in dsEditModes then
    begin
      dsDados.DataSet.Cancel; // Cancela a ação no BD
      CardPanelListas.ActiveCard := CardPesquisa; // Retorna para a tela de pesquisa no CardPanel
    end;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin // Editar
  inherited;
  CardPanelListas.ActiveCard := CardCadastro; // Chama a tela de cadastro no CardPanel
  dsDados.DataSet.Edit; // Coloca a qry em modo de edição
end;

procedure TViewBaseListas.btnExcluirClick(Sender: TObject);
begin // Excluir
  inherited;
  // Verifica se a quantidade de informações é maior que 0
  if dsDados.DataSet.RecordCount > 0 then
    begin

      if Self.Tag > 0 then // Se a tag foi maior que 0
      begin

        // Dispara a mensagem ao salvar baseado na tag do formulario
        case Self.Tag of
          1: begin
            if TViewMensagens.Mensagem('Deseja excluir esse cliente?', 'Excluir', 'E', [mbSim, mbNao]) then
              begin
                dsDados.DataSet.Delete; // Deleta o cliente do BD
                TViewMensagens.Mensagem('Cliente exluído com sucesso', 'Excluir', 'S', [mbOk]);
              end;
          end;

          2: begin
             if TViewMensagens.Mensagem('Deseja excluir esse forncedor?', 'Excluir', 'E', [mbSim, mbNao]) then
              begin
                dsDados.DataSet.Delete; // Deleta o fornecedor do BD
                TViewMensagens.Mensagem('Forncedor exluído com sucesso', 'Excluir', 'S', [mbOk]);
              end;
          end;

          3: begin
             if TViewMensagens.Mensagem('Deseja excluir esse funcionário?', 'Excluir', 'E', [mbSim, mbNao]) then
              begin
                dsDados.DataSet.Delete; // Deleta o funcionario do BD
                TViewMensagens.Mensagem('Funcionário exluído com sucesso', 'Excluir', 'S', [mbOk]);
              end;
          end;
        end;
      end
      else begin

        if sTela = TelasToStr(tpProdutos) then
        begin
          TViewMensagens.Mensagem('Produto exluído com sucesso', 'Excluir', 'E', [mbOk]);
        end;

        if sTela = TelasToStr(tpCaixa) then
        begin
          TViewMensagens.Mensagem('Caixa exluído com sucesso', 'Excluir', 'E', [mbOk]);
        end;

        if sTela = TelasToStr(tpGrupo) then
        begin
          TViewMensagens.Mensagem('Grupo exluído com sucesso', 'Excluir', 'E', [mbOk]);
        end;

        if sTela = TelasToStr(tpSubgrupo) then
        begin
          TViewMensagens.Mensagem('Subgrupo exluído com sucesso', 'Excluir', 'E', [mbOk]);
        end;


      end;
      CardPanelListas.ActiveCard := CardPesquisa; // Retorna para a tela de pesquisa no CardPanel
    end;
end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin // Novo
  inherited;
  CardPanelListas.ActiveCard := CardCadastro; // Chama a tela de cadastro no CardPanel
  dsDados.DataSet.Insert; // Coloca a qry em modo de inserção
end;

procedure TViewBaseListas.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin // Salvar
  inherited;
  // Verifica o estado dela(se esta em modo de edição)
  if dsDados.DataSet.State in dsEditModes then
    begin
      if Self.Tag > 0 then // Se a tag foi maior que 0
      begin
        ServiceCadastro.QRYPessoasPES_TIPOPESSOA.AsInteger := Self.Tag; // Ele salva o registro com o tipo pessoa baseado na tag do formulario
        ServiceCadastro.QRYPessoas.Post; // Salva - Atualiza no BD

       // Dispara a mensagem ao salvar baseado na tag do formulario
        case Self.Tag of
          1: begin
            TViewMensagens.Mensagem('Cliente salvo com sucesso', 'Salvar', 'I', [mbOk]);
          end;

          2: begin
            TViewMensagens.Mensagem('Fornecedor salvo com sucesso', 'Salvar', 'I', [mbOk]);
          end;

          3: begin
            TViewMensagens.Mensagem('Funcionário salvo com sucesso', 'Salvar', 'I', [mbOk]);
          end;
        end;
      end
      else begin
        dsDados.DataSet.Post; // Irá salvar as mudanças no dataset sem precisar definir a QRY

        if sTela = TelasToStr(tpProdutos) then
        begin
          TViewMensagens.Mensagem('Produto salvo com sucesso', 'Salvar', 'I', [mbOk]);
        end;

        if sTela = TelasToStr(tpCaixa) then
        begin
          TViewMensagens.Mensagem('Produto salvo com sucesso', 'Salvar', 'I', [mbOk]);
        end;

        if sTela = TelasToStr(tpGrupo) then
        begin
          TViewMensagens.Mensagem('Grupo salvo com sucesso', 'Salvar', 'I', [mbOk]);
        end;

        if sTela = TelasToStr(tpSubgrupo) then
        begin
          TViewMensagens.Mensagem('Subgrupo salvo com sucesso', 'Salvar', 'I', [mbOk]);
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
