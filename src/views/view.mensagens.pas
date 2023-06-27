unit view.mensagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, view.fundo;

type
  TMyButtons = (mbSim, mbNao, mbOk);

type
  TViewMensagens = class(TViewBase)
    pnlImagens: TPanel;
    pnlConteudo: TPanel;
    pnlTitulo: TPanel;
    pnlBotoes: TPanel;
    mmoTexto: TMemo;
    lblTitulo: TLabel;
    btnOk: TSpeedButton;
    btnSim: TSpeedButton;
    btnNao: TSpeedButton;
    imgAlert: TImage;
    imgInformation: TImage;
    imgError: TImage;
    imgSucess: TImage;
    procedure btnSimClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    class function Mensagem(
    Texto: String; // Texto da mensagem
    Titulo: String; // Titulo da mensagem
    Tipo: Char; // Tipo da mensagem (erro, quest�o, sucesso, informa��o)
    Botoes: array of TMyButtons // Bot�es
    ): Boolean;
  end;

var
  ViewMensagens: TViewMensagens;

implementation

{$R *.dfm}

{ TViewMensagens }

procedure TViewMensagens.btnNaoClick(Sender: TObject);
begin // N�o
  inherited;
  Self.ModalResult := mrNo;
end;

procedure TViewMensagens.btnOkClick(Sender: TObject);
begin // Ok
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewMensagens.btnSimClick(Sender: TObject);
begin // Sim
  inherited;
  Self.ModalResult := mrYes;
end;

class function TViewMensagens.Mensagem(Texto, Titulo: String; Tipo: Char;
  Botoes: array of TMyButtons): Boolean;
var
  i: Integer;
  view: TViewMensagens;
begin
  view := TViewMensagens.Create(nil);
  try
    view.lblTitulo.Caption := Titulo;
    view.mmoTexto.Text := Texto;

    // Come�a no 0 at� o tamanho(Length) dos Botoes -1
    for i := 0 to Length(Botoes)-1 do
      begin

        // Pega a posi��o do botao no array
        case (Botoes[i]) of
          mbOk: begin
                  view.btnOk.Visible := True; // Coloca visibilidade no bot�o
                  view.btnOk.Align := alRight; // Alinha ele � direita
                end;

          mbSim: begin
                  view.btnSim.Visible := True;
                  view.btnSim.Align := alRight;
                 end;

          mbNao: begin
                  view.btnNao.Visible := True;
                  view.btnNao.Align := alRight;
                 end;

          // Se n�o for passado um par�metro, o bot�o padr�o da mensagem � o OK
          else begin
            view.btnOk.Visible := True;
            view.btnOk.Align := alRight;
          end;
        end;
      end;

      // Tipo das imagens

      case (Tipo) of
        'I': begin // Information
              view.imgInformation.Visible := True; // Coloca visibilidade na imagem
             end;

        'A': begin // Alert
              view.imgAlert.Visible := True;
             end;

        'E': begin // Error
              view.imgError.Visible := True;
             end;

        'S': begin // Sucess
              view.imgSucess.Visible := True;
             end;

        // Se n�o for passado um par�metro, a imagem padr�o � Information
        else begin
          view.imgInformation.Visible := True;
        end;
      end;

      // Mostrar Formulario
      ViewFundo.Show;
      view.ShowModal;

      case (view.ModalResult) of
        mrOk, mrYes: result := True; // Se eu clicar em sim ou ok, o resultado � verdadeiro
        else
          result := False; // Se eu n�o clicar em sim ou ok, o resultado � falso
      end;

  finally
    // Se view for diferente de nil, ent�o apaga view
    if (view <> nil) then
    begin
      ViewFundo.Hide; // Antes de mostrar a mensagem, mostra o view fundo
      FreeAndNil(view);
    end;
  end;
end;

end.
