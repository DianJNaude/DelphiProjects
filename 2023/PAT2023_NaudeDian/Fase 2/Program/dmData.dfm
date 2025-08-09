object dmDataA: TdmDataA
  OldCreateOrder = True
  Height = 321
  Width = 582
  object ADOConnectionM: TADOConnection
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 248
    Top = 16
  end
  object dsrAnimal: TDataSource
    DataSet = tblAnimals
    Left = 40
    Top = 232
  end
  object tblAnimals: TADOTable
    Connection = ADOConnectionM
    CursorType = ctStatic
    TableName = 'tblAnimals'
    Left = 40
    Top = 168
  end
  object tblProducts: TADOTable
    Connection = ADOConnectionM
    CursorType = ctStatic
    TableName = 'tblProducts'
    Left = 104
    Top = 168
  end
  object tblService: TADOTable
    Connection = ADOConnectionM
    CursorType = ctStatic
    TableName = 'tblService'
    Left = 168
    Top = 168
  end
  object tblPurchaserecord: TADOTable
    Connection = ADOConnectionM
    CursorType = ctStatic
    TableName = 'tblPurchaseRecord'
    Left = 248
    Top = 168
  end
  object tblTransaction: TADOTable
    Connection = ADOConnectionM
    CursorType = ctStatic
    TableName = 'tblTransaction'
    Left = 336
    Top = 168
  end
  object tblClient: TADOTable
    Connection = ADOConnectionM
    CursorType = ctStatic
    TableName = 'tblClient'
    Left = 416
    Top = 168
  end
  object dsrProducts: TDataSource
    DataSet = tblProducts
    Left = 112
    Top = 232
  end
  object dsrService: TDataSource
    DataSet = tblService
    Left = 184
    Top = 232
  end
  object dsrPurchaserecord: TDataSource
    DataSet = tblPurchaserecord
    Left = 256
    Top = 232
  end
  object dsrTransaction: TDataSource
    DataSet = tblTransaction
    Left = 344
    Top = 232
  end
  object dsrClient: TDataSource
    DataSet = tblClient
    Left = 416
    Top = 232
  end
  object tblAnimalDonations: TADOTable
    Connection = ADOConnectionM
    TableName = 'tblAnimalDonations'
    Left = 504
    Top = 168
  end
  object dsrAnimalDonations: TDataSource
    DataSet = tblAnimalDonations
    Left = 504
    Top = 232
  end
  object qrStore: TADOQuery
    Connection = ADOConnectionM
    Parameters = <>
    Left = 32
    Top = 32
  end
  object dsrStore: TDataSource
    DataSet = qrStore
    Left = 32
    Top = 96
  end
end
