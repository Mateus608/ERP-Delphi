inherited ViewFornecedores: TViewFornecedores
  Caption = 'ViewFornecedores'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Fornecedores'
      ExplicitWidth = 115
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited CardPanelListas: TCardPanel
      ActiveCard = CardCadastro
      inherited CardPesquisa: TCard
        inherited DBGDados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Nome do Fornecedor'
              Width = 408
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJCPF'
              Title.Caption = 'CNPJ / CPF'
              Visible = True
            end>
        end
      end
      inherited CardCadastro: TCard
        ExplicitLeft = -32
        ExplicitTop = -6
        object Label1: TLabel
          Left = 24
          Top = 90
          Width = 54
          Height = 21
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 119
          Top = 88
          Width = 158
          Height = 21
          Caption = 'Nome do Fornecedor'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 559
          Top = 89
          Width = 106
          Height = 21
          Caption = 'Nome Fantasia'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 24
          Top = 154
          Width = 63
          Height = 21
          Caption = 'Telefone'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 243
          Top = 155
          Width = 78
          Height = 21
          Caption = 'CNPJ / CPF'
          FocusControl = edtPES_CNPJCPF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 463
          Top = 155
          Width = 34
          Height = 21
          Caption = 'IERG'
          FocusControl = DBEdit6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 24
          Top = 221
          Width = 87
          Height = 21
          Caption = 'Observa'#231#227'o'
          FocusControl = DBEdit7
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnlTituloCadCliente: TPanel
          Left = 0
          Top = 0
          Width = 1048
          Height = 65
          Align = alTop
          BevelOuter = bvNone
          Color = 15461355
          ParentBackground = False
          TabOrder = 0
          object lblTituloCadastro: TLabel
            Left = 24
            Top = 14
            Width = 216
            Height = 25
            Caption = 'Cadastro de Fornecedores'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -19
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object DBEdit1: TDBEdit
          Left = 24
          Top = 118
          Width = 76
          Height = 23
          DataField = 'PES_CODIGO'
          DataSource = DSDados
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 119
          Top = 118
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_RAZAO'
          DataSource = DSDados
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 559
          Top = 118
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_FANTASIA'
          DataSource = DSDados
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 24
          Top = 183
          Width = 200
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_TELEFONE'
          DataSource = DSDados
          TabOrder = 4
        end
        object edtPES_CNPJCPF: TDBEdit
          Left = 243
          Top = 183
          Width = 200
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_CNPJCPF'
          DataSource = DSDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 463
          Top = 183
          Width = 200
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_IERG'
          DataSource = DSDados
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 24
          Top = 252
          Width = 713
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_OBSERVACAO'
          DataSource = DSDados
          TabOrder = 7
        end
      end
    end
  end
  inherited DSDados: TDataSource
    DataSet = ServiceCadastro.QRYPessoas
    Left = 704
    Top = 59
  end
end
