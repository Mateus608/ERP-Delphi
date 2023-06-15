object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 175
  Width = 484
  object FDConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\mateu\Downloads\www\ERPDelphi\database\DADOS.F' +
        'DB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=Localhost'
      'Port=3050'
      'CharacterSet=win1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 120
    Top = 56
  end
  object FDCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 200
    Top = 56
  end
  object FDDriverLink: TFDPhysFBDriverLink
    Left = 272
    Top = 56
  end
  object QRYFilial: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from filial where fil_codigo = :codigo;')
    Left = 344
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRYFilialFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Origin = 'FIL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRYFilialFIL_RAZAO: TStringField
      FieldName = 'FIL_RAZAO'
      Origin = 'FIL_RAZAO'
      Size = 100
    end
    object QRYFilialFIL_FANTASIA: TStringField
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Size = 100
    end
    object QRYFilialFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Size = 50
    end
    object QRYFilialFIL_TELEFONE: TStringField
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 50
    end
  end
end
