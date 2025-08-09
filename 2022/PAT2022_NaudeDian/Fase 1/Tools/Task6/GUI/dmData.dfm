object dmDataA: TdmDataA
  OldCreateOrder = False
  Height = 302
  Width = 482
  object ADOConnectionM: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Jan\Docum' +
      'ents\Dian\PAT\PAT2022_NaudeDian\Task2\NauDia1000.accdb;Mode=Read' +
      'Write;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 168
    Top = 56
  end
  object DataSourceMP: TDataSource
    DataSet = tblPlayersM
    Left = 96
    Top = 200
  end
  object tblPlayersM: TADOTable
    Active = True
    Connection = ADOConnectionM
    CursorType = ctStatic
    TableName = 'tblPlayers'
    Left = 96
    Top = 136
  end
  object tblMatchesM: TADOTable
    Active = True
    Connection = ADOConnectionM
    CursorType = ctStatic
    TableName = 'tblMatches'
    Left = 176
    Top = 136
  end
  object tblScoreM: TADOTable
    Active = True
    Connection = ADOConnectionM
    CursorType = ctStatic
    TableName = 'tblScore'
    Left = 248
    Top = 136
  end
  object tblVenueM: TADOTable
    Active = True
    Connection = ADOConnectionM
    CursorType = ctStatic
    TableName = 'tblVenue'
    Left = 320
    Top = 136
  end
  object DataSourceMM: TDataSource
    DataSet = tblMatchesM
    Left = 168
    Top = 200
  end
  object DataSourceMS: TDataSource
    DataSet = tblScoreM
    Left = 248
    Top = 200
  end
  object DataSourceMV: TDataSource
    DataSet = tblVenueM
    Left = 328
    Top = 200
  end
end
