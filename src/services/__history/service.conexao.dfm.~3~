object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 416
  Width = 640
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
end
