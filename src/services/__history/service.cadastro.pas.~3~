unit service.cadastro;

interface

uses
  System.SysUtils, System.Classes, service.conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TServiceCadastro = class(TDataModule)
    QRYPessoas: TFDQuery;
    QRYPessoasPES_CODIGO: TIntegerField;
    QRYPessoasPES_RAZAO: TStringField;
    QRYPessoasPES_FANTASIA: TStringField;
    QRYPessoasPES_TELEFONE: TStringField;
    QRYPessoasPES_CNPJCPF: TStringField;
    QRYPessoasPES_IERG: TStringField;
    QRYPessoasPES_OBSERVACAO: TStringField;
    QRYPessoasPES_TIPOPESSOA: TIntegerField;
    QRYEnderecos: TFDQuery;
    QRYEnderecosEND_CODIGO: TIntegerField;
    QRYEnderecosEND_PESSOA: TIntegerField;
    QRYEnderecosEND_CEP: TStringField;
    QRYEnderecosEND_ENDERECO: TStringField;
    QRYEnderecosEND_BAIRRO: TStringField;
    QRYEnderecosEND_CIDADE: TStringField;
    QRYEnderecosEND_OBSERVACAO: TStringField;
    QRYEnderecosEND_NUMERO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
