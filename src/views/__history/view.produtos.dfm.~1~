inherited ViewProdutos: TViewProdutos
  Caption = 'ViewProdutos'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Produtos'
      ExplicitWidth = 77
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited CardPanelListas: TCardPanel
      ActiveCard = CardCadastro
      inherited CardPesquisa: TCard
        inherited DBGDados: TDBGrid
          Height = 215
          Columns = <
            item
              Expanded = False
              FieldName = 'PR1_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMECOMPLETO'
              Title.Caption = 'Nome completo'
              Width = 240
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMEPOPULAR'
              Title.Caption = 'Nome popular'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_CODIGOBARRA'
              Title.Caption = 'C'#243'digo Barras'
              Width = 175
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_REFERENCIA'
              Title.Caption = 'Refer'#234'ncias'
              Visible = True
            end>
        end
        object pnlDetalhe: TPanel
          Left = 0
          Top = 325
          Width = 1048
          Height = 150
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object DBGridDetalhe: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 1038
            Height = 140
            Cursor = crHandPoint
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            DataSource = DSProdutos2
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PR2_FILIAL'
                Title.Caption = 'Filial'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_CUSTOINI'
                Title.Caption = 'Custo Inicial'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_VENDAVISTA'
                Title.Caption = 'Venda Vista'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_VENDAPRAZO'
                Title.Caption = 'Venda Prazo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_ESTOQUE'
                Title.Caption = 'Estoque'
                Visible = True
              end>
          end
        end
      end
      inherited CardCadastro: TCard
        object Label1: TLabel
          Left = 24
          Top = 88
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
          Left = 133
          Top = 88
          Width = 208
          Height = 21
          Caption = 'Nome completo do Produto'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 551
          Top = 88
          Width = 104
          Height = 21
          Caption = 'Nome Popular'
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
          Top = 169
          Width = 119
          Height = 21
          Caption = 'C'#243'digo de Barra'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 205
          Top = 168
          Width = 78
          Height = 21
          Caption = 'Refer'#234'ncia'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 530
          Top = 168
          Width = 37
          Height = 21
          Caption = 'NCM'
          FocusControl = DBEdit6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnlTituloCadProduto: TPanel
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
            Top = 17
            Width = 178
            Height = 25
            Caption = 'Cadastro de Produtos'
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
          Top = 115
          Width = 93
          Height = 23
          DataField = 'PR1_CODIGO'
          DataSource = DSDados
          Enabled = False
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 133
          Top = 115
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NOMECOMPLETO'
          DataSource = DSDados
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 551
          Top = 115
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NOMEPOPULAR'
          DataSource = DSDados
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 24
          Top = 196
          Width = 161
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_CODIGOBARRA'
          DataSource = DSDados
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 205
          Top = 196
          Width = 307
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_REFERENCIA'
          DataSource = DSDados
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 530
          Top = 196
          Width = 154
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NCM'
          DataSource = DSDados
          TabOrder = 6
        end
      end
    end
  end
  inherited DSDados: TDataSource
    DataSet = ServiceCadastro.QRYProduto1
    OnDataChange = DSDadosDataChange
    Left = 577
    Top = 43
  end
  object DSProdutos2: TDataSource
    DataSet = ServiceCadastro.QRYProduto2
    Left = 497
    Top = 43
  end
end
