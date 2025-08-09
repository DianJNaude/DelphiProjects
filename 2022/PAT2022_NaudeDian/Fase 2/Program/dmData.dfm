object dmDataA: TdmDataA
  OldCreateOrder = False
  Height = 302
  Width = 482
  object ADOConnectionM: TADOConnection
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
    Connection = ADOConnectionM
    CursorType = ctStatic
    TableName = 'tblPlayers'
    Left = 96
    Top = 136
  end
  object tblMatchesM: TADOTable
    Connection = ADOConnectionM
    CursorType = ctStatic
    TableName = 'tblMatches'
    Left = 176
    Top = 136
  end
  object tblVenueM: TADOTable
    Connection = ADOConnectionM
    CursorType = ctStatic
    TableName = 'tblVenue'
    Left = 240
    Top = 136
  end
  object DataSourceMM: TDataSource
    DataSet = tblMatchesM
    Left = 168
    Top = 200
  end
  object DataSourceMV: TDataSource
    DataSet = tblVenueM
    Left = 240
    Top = 200
  end
end
