unit service.conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, FireDAC.Comp.UI, System.IniFiles;

type
  TServiceConexao = class(TDataModule)
    FDConexao: TFDConnection;
    FDCursor: TFDGUIxWaitCursor;
    FDDriverLink: TFDPhysFBDriverLink;
    QRYFilial: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var
   LIniFile: TIniFile;
   LDatabase: string;
   LUserName: string;
   LPassword: string;
   LServidor: string;
   LPorta: Integer;
   LCaminho: string;

begin

  try

    FDConexao.Connected := False;

    LCaminho := ExtractFileDir(ParamStr(0)) + '\Login.ini'; // Pega o diretório da aplicação e procura o arquivo 'Login.ini'

    LIniFile := TIniFile.Create(LCaminho); // Cria o arquivo ini no caminho

    // Lê os atrbutos do arquivo ini e passa para a variavel
    LDatabase := LIniFile.ReadString('Conexao', 'Database', LDatabase);
    LServidor := LIniFile.ReadString('Conexao', 'Servidor', LServidor);
    LPorta := LIniFile.ReadInteger('Conexao', 'Porta', LPorta);

    LUserName := 'SYSDBA'; // User name do BD
    LPassword := 'masterkey'; // Senha do BD

    // Passa os parâmetros do arquivo ini para o FDConexao
    FDConexao.Params.Values['Database'] := LDatabase;
    FDConexao.Params.Values['UserName'] := LUserName;
    FDConexao.Params.Values['Password'] := LPassword;
    FDConexao.Params.Values['Servidor'] := LServidor;
    FDConexao.Params.Values['Porta'] := LPorta.ToString;


  finally

  end;

end;

end.