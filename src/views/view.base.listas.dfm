inherited ViewBaseListas: TViewBaseListas
  BorderStyle = bsNone
  Caption = 'ViewBaseListas'
  ClientHeight = 550
  ClientWidth = 1050
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitWidth = 1050
  ExplicitHeight = 550
  TextHeight = 15
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 1050
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = pnlTopoMouseDown
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 38
      Top = 3
      Width = 937
      Height = 29
      Cursor = crHandPoint
      Align = alClient
      Caption = 'lblTitulo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnMouseDown = pnlTopoMouseDown
      ExplicitWidth = 70
      ExplicitHeight = 25
    end
    object pnlIcon: TPanel
      Left = 0
      Top = 0
      Width = 35
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object ImgIcon: TImage
        Left = 0
        Top = 0
        Width = 35
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          0020080300000044A48AC60000000467414D410000B18F0BFC61050000000173
          52474200AECE1CE9000000F0504C54450000008F9FB191A1B3A4B0C094A3B5B2
          BECC768BA04C66814C66814C66814C6681D0D7DFD0D7DFD0D7DFD0D7DFCFD6DE
          C6CFD8D0D7DFD0D7DFD0D7DFD0D7DFDADFE698A8B88194A8D0D7DF94A3B593A2
          B4A4B0C0A4B0C0A4B0C0A4B0C0A5B0C0A4B0C0768BA0768BA0758BA07F92A689
          9AAD758BA0768BA0768BA0768BA0768BA0768BA0768BA0768BA0768BA04C6580
          4C67834C6D8C4C6E8E4A9BD649A2E249A2E149ABF049ABEF49AAEE49AAEF4C66
          814C69864B7FA84B82AE4B65804B647F4B647E9AA9B8D2D9E1D0D7DFD1D8DFC5
          CED7C5CED88094A791A0B390A0B2A5B1C1A4B0C0899AAD768BA0758A9FFFFFFF
          9432E8460000002F74524E5300000000000000BFFEB9FDFDA3E0E1E4FB9D0B1D
          1E1B51F30A6A649B9511CB35EE0E7E96B9FE92311EE16816D1FA55CBE9A10000
          000001624B47444F6E664149000000097048597300009D7B00009D7B013C9F77
          C4000000D64944415478DAEDD34D0FC1301807F0FE3B2F094E2E0417E2E52032
          17893848F0E5252E329198100E227C05C9FAE8A89959BB9B939EFE6D7FD9D3A7
          DB904587E9870BE4DA80769F680B9B73AD201202B625850E08E149601980F707
          3F059C5B1AE0F92F6B04E3F740183323609830F3C03409CC92407E189ABC4ABF
          97E6280467248E819F694122584BA11800D96FFF1196B2BB1748875A44D97ECE
          C8B988AFB28C5928D92A3A57E1C5800A7A2AAEE81C076AE8AAB8A6531464AAF2
          88C16FECCA860EB74FD04033F43462FB5D04B4500FDFDF111B05EEE9417167BA
          AC86AA0000002574455874646174653A63726561746500323031382D31322D31
          325431323A30303A33352B30313A30304BB7B144000000257445587464617465
          3A6D6F6469667900323031382D31322D31325431323A30303A33352B30313A30
          303AEA09F80000004674455874736F66747761726500496D6167654D61676963
          6B20362E372E382D3920323031362D30362D31362051313620687474703A2F2F
          7777772E696D6167656D616769636B2E6F7267E6BF34B6000000187445587454
          68756D623A3A446F63756D656E743A3A50616765730031A7FFBB2F0000001874
          4558745468756D623A3A496D6167653A3A68656967687400353132C0D0505100
          000017744558745468756D623A3A496D6167653A3A5769647468003531321C7C
          03DC00000019744558745468756D623A3A4D696D657479706500696D6167652F
          706E673FB2564E00000017744558745468756D623A3A4D54696D650031353434
          36313234333556F964F900000013744558745468756D623A3A53697A6500342E
          37324B42423E70BB8D00000069744558745468756D623A3A5552490066696C65
          3A2F2F2E2F75706C6F6164732F35362F506256377154592F313731362F333036
          393138322D627573696E6573732D636F6D70757465722D6465766963652D6F66
          666963652D746563686E6F6C6F67795F3131323732322E706E674085F5760000
          000049454E44AE426082}
        OnMouseDown = pnlTopoMouseDown
        ExplicitLeft = 16
        ExplicitTop = 16
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
    object pnlFechar: TPanel
      Left = 978
      Top = 0
      Width = 72
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnSair: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 66
        Height = 29
        Cursor = crHandPoint
        Align = alClient
        Caption = '[ SAIR ]'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6711039
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnSairClick
        ExplicitTop = -9
        ExplicitWidth = 204
        ExplicitHeight = 50
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 510
    Width = 1050
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = 7500402
    ParentBackground = False
    TabOrder = 1
    object btnNovo: TSpeedButton
      AlignWithMargins = True
      Left = 582
      Top = 3
      Width = 82
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Down = True
      Caption = '[ NOVO ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnNovoClick
      ExplicitLeft = 296
    end
    object btnEditar: TSpeedButton
      AlignWithMargins = True
      Left = 670
      Top = 3
      Width = 82
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ EDITAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEditarClick
      ExplicitLeft = 384
    end
    object btnCancelar: TSpeedButton
      AlignWithMargins = True
      Left = 758
      Top = 3
      Width = 106
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ CANCELAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCancelarClick
      ExplicitLeft = 472
    end
    object btnSalvar: TSpeedButton
      AlignWithMargins = True
      Left = 966
      Top = 3
      Width = 81
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ SALVAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvarClick
      ExplicitLeft = 696
    end
    object btnExcluir: TSpeedButton
      AlignWithMargins = True
      Left = 870
      Top = 3
      Width = 90
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ EXCLUIR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnExcluirClick
      ExplicitLeft = 584
    end
  end
  object pnlLinhaFundo: TPanel
    Left = 0
    Top = 35
    Width = 1050
    Height = 475
    Align = alClient
    BevelOuter = bvNone
    Color = 7500402
    ParentBackground = False
    TabOrder = 2
    object CardPanelListas: TCardPanel
      AlignWithMargins = True
      Left = 1
      Top = 0
      Width = 1048
      Height = 475
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alClient
      ActiveCard = CardPesquisa
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      OnCardChange = CardPanelListasCardChange
      object CardPesquisa: TCard
        Left = 0
        Top = 0
        Width = 1048
        Height = 475
        Caption = 'CardPesquisa'
        CardIndex = 0
        TabOrder = 1
        object DBGDados: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 105
          Width = 1038
          Height = 365
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BorderStyle = bsNone
          DataSource = DSDados
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
        object pnlTituloPesquisa: TPanel
          Left = 0
          Top = 0
          Width = 1048
          Height = 100
          Align = alTop
          BevelOuter = bvNone
          Color = 15461355
          ParentBackground = False
          TabOrder = 1
          object lblTituloPesquisa: TLabel
            Left = 24
            Top = 14
            Width = 70
            Height = 25
            Caption = 'Pesquisa'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -19
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object edtPesquisa: TSearchBox
            Left = 24
            Top = 45
            Width = 729
            Height = 29
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TextHint = 'Digite sua pesquisa'
          end
        end
      end
      object CardCadastro: TCard
        Left = 0
        Top = 0
        Width = 1048
        Height = 475
        Caption = 'CardCadastro'
        CardIndex = 1
        TabOrder = 0
        ExplicitWidth = 778
        ExplicitHeight = 405
      end
    end
  end
  object DSDados: TDataSource
    Left = 625
    Top = 203
  end
end
