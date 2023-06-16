unit view.clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, service.cadastro, Vcl.Mask, Vcl.DBCtrls;

type
  TViewClientes = class(TViewBaseListas)
    pnlTituloCadCliente: TPanel;
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
    edtPES_CNPJCPF: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GETPessoas(iTipo: Integer); // Passa o tipo do cliente/pessoa (1, 2 e 3)
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }

procedure TViewClientes.btnCancelarClick(Sender: TObject);
begin // Cancelar
  inherited;
  // Verifica o estado dela(se esta em modo de edi��o)
  if ServiceCadastro.QRYPessoas.State in dsEditModes then
    begin
      ServiceCadastro.QRYPessoas.Cancel; // Cancela a a��o no BD
      CardPanelListas.ActiveCard := CardPesquisa; // Retorna para a tela de pesquisa no CardPanel
    end;
end;

procedure TViewClientes.btnEditarClick(Sender: TObject);
begin // Editar
  inherited;
  CardPanelListas.ActiveCard := CardCadastro; // Chama a tela de cadastro no CardPanel
  edtPES_CNPJCPF.SetFocus; // Coloca o foco no campo CNPJ / CPF
  ServiceCadastro.QRYPessoas.Edit; // Coloca a qry em modo de edi��o
end;

procedure TViewClientes.btnExcluirClick(Sender: TObject);
begin // Excluir
  inherited;
  // Verifica se a quantidade de informa��es � maior que 0
  if ServiceCadastro.QRYPessoas.RecordCount > 0 then
    begin
      ServiceCadastro.QRYPessoas.Delete; // Deleta o cliente do BD
      ShowMessage('Cliente deletado com sucesso.'); // Dispara a mensagem ao deletar
      CardPanelListas.ActiveCard := CardPesquisa; // Retorna para a tela de pesquisa no CardPanel
    end;
end;

procedure TViewClientes.btnNovoClick(Sender: TObject);
begin // Novo
  inherited;
  CardPanelListas.ActiveCard := CardCadastro; // Chama a tela de cadastro no CardPanel
  edtPES_CNPJCPF.SetFocus; // Coloca o foco no campo CNPJ / CPF
  ServiceCadastro.QRYPessoas.Insert; // Coloca a qry em modo de inser��o
end;

procedure TViewClientes.btnSalvarClick(Sender: TObject);
begin // Salvar
  inherited;
  // Verifica o estado dela(se esta em modo de edi��o)
  if ServiceCadastro.QRYPessoas.State in dsEditModes then
    begin
      ServiceCadastro.QRYPessoasPES_TIPOPESSOA.AsInteger := 1; // Ele salva o registro com o tipo pessoa = 1
      ServiceCadastro.QRYPessoas.Post; // Salva - Atualiza no BD
      ShowMessage('Cliente salvo com sucesso.'); // Dispara a mensagem ao salvar
      CardPanelListas.ActiveCard := CardPesquisa; // Retorna para a tela de pesquisa no CardPanel
    end;
end;

procedure TViewClientes.FormCreate(Sender: TObject);
begin
  inherited;
  GETPessoas(1);
end;

procedure TViewClientes.GETPessoas(iTipo: Integer);
begin
  ServiceCadastro.QRYPessoas.Close; // Fecha a qry
  ServiceCadastro.QRYPessoas.SQL.Clear; // Limpa o SQL da qry
  ServiceCadastro.QRYPessoas.SQL.Add('select * from pessoas where pes_tipopessoa = :tipopessoa'); // Adiciona comando SQL
  ServiceCadastro.QRYPessoas.SQL.Add('order by pes_codigo desc'); // Ordena a lista em ordem decrescente
  ServiceCadastro.QRYPessoas.Params[0].AsInteger := iTipo; // Recebe e armazena o tipo
  ServiceCadastro.QRYPessoas.Open();
end;

end.
