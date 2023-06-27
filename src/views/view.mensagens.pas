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
    Tipo: Char; // Tipo da mensagem (erro, questão, sucesso, informação)
    Botoes: array of TMyButtons // Botões
    ): Boolean;
  end;

var
  ViewMensagens: TViewMensagens;

implementation

{$R *.dfm}

{ TViewMensagens }

procedure TViewMensagens.btnNaoClick(Sender: TObject);
begin // Não
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

    // Começa no 0 até o tamanho(Length) dos Botoes -1
    for i := 0 to Length(Botoes)-1 do
      begin

        // Pega a posição do botao no array
        case (Botoes[i]) of
          mbOk: begin
                  view.btnOk.Visible := True; // Coloca visibilidade no botão
                  view.btnOk.Align := alRight; // Alinha ele à direita
                end;

          mbSim: begin
                  view.btnSim.Visible := True;
                  view.btnSim.Align := alRight;
                 end;

          mbNao: begin
                  view.btnNao.Visible := True;
                  view.btnNao.Align := alRight;
                 end;

          // Se não for passado um parâmetro, o botão padrão da mensagem é o OK
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

        // Se não for passado um parâmetro, a imagem padrão é Information
        else begin
          view.imgInformation.Visible := True;
        end;
      end;

      // Mostrar Formulario
      ViewFundo.Show;
      view.ShowModal;

      case (view.ModalResult) of
        mrOk, mrYes: result := True; // Se eu clicar em sim ou ok, o resultado é verdadeiro
        else
          result := False; // Se eu não clicar em sim ou ok, o resultado é falso
      end;

  finally
    // Se view for diferente de nil, então apaga view
    if (view <> nil) then
    begin
      ViewFundo.Hide; // Antes de mostrar a mensagem, mostra o view fundo
      FreeAndNil(view);
    end;
  end;
end;

end.
