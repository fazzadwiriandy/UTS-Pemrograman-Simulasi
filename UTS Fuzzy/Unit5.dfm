object DM1: TDM1
  OldCreateOrder = False
  Left = 65535
  Top = 148
  Height = 287
  Width = 428
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'pemsim'
    User = 'root'
    Protocol = 'mysql'
    Left = 16
    Top = 16
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from myFuzzy')
    Params = <>
    Left = 16
    Top = 72
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 16
    Top = 128
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from variabel')
    Params = <>
    Left = 56
    Top = 72
  end
  object ds2: TDataSource
    DataSet = zqry2
    Left = 56
    Top = 128
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from operasifuzzy')
    Params = <>
    Left = 96
    Top = 72
  end
  object ds3: TDataSource
    DataSet = zqry3
    Left = 96
    Top = 128
  end
  object zqry4: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from implikasi')
    Params = <>
    Left = 136
    Top = 72
  end
  object ds4: TDataSource
    DataSet = zqry4
    Left = 136
    Top = 128
  end
  object zqry5: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from defuzifikasi'
      '')
    Params = <>
    Left = 176
    Top = 72
  end
  object ds5: TDataSource
    DataSet = zqry5
    Left = 176
    Top = 128
  end
  object zqry6: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from implikasi_2'
      '')
    Params = <>
    Left = 216
    Top = 72
  end
  object ds6: TDataSource
    DataSet = zqry6
    Left = 216
    Top = 128
  end
end
