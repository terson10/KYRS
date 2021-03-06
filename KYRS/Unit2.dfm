object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 682
  Top = 114
  Height = 464
  Width = 450
  object ADOQTovari: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Tovari.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1072', Tovari.'#1053#1072#1079#1074#1072'_'#1090#1086#1074#1072#1088#1072', Category.'#1053#1072#1079#1074#1072'_'#1082#1072 +
        #1090#1077#1075#1086#1088#1110#1111', Tovari.'#1062#1110#1085#1072'_'#1075#1088#1085', Tovari.'#1054#1087#1080#1089
      
        '  FROM Category INNER JOIN Tovari ON Category.['#1050#1086#1076'_'#1082#1072#1090#1077#1075#1086#1088#1110#1111'] = ' +
        'Tovari.['#1050#1086#1076'_'#1082#1072#1090#1077#1075#1086#1088#1110#1111'] ORDER BY Tovari.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1072)
    Left = 104
    Top = 16
  end
  object DataSTovari: TDataSource
    DataSet = ADOQTovari
    Left = 192
    Top = 16
  end
  object ADOTPers: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Personal'
    Left = 104
    Top = 136
  end
  object DataSPers: TDataSource
    DataSet = ADOTPers
    Left = 192
    Top = 136
  end
  object ADOQCheck: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Check.['#1050#1086#1076'_'#1095#1077#1082#1072'], Check.['#1044#1072#1090#1072'], Check.['#1057#1091#1084#1072']'
      'FROM [Check];')
    Left = 104
    Top = 200
  end
  object DataSCheck: TDataSource
    DataSet = ADOQCheck
    Left = 192
    Top = 200
  end
  object ADOTCategory: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Category'
    Left = 104
    Top = 80
  end
  object DataSCategory: TDataSource
    DataSet = ADOTCategory
    Left = 192
    Top = 80
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=KYRS.' +
      'mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:S' +
      'ystem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database ' +
      'Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking M' +
      'ode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk ' +
      'Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Crea' +
      'te System Database=False;Jet OLEDB:Encrypt Database=False;Jet OL' +
      'EDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without' +
      ' Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 16
  end
  object ADOQWork: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 104
    Top = 256
  end
  object DataSWork: TDataSource
    DataSet = ADOQWork
    Left = 192
    Top = 256
  end
  object ADOQProdazi: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Prodazi.'#1050#1086#1076'_'#1087#1088#1086#1076#1072#1078#1110', Tovari.'#1053#1072#1079#1074#1072'_'#1090#1086#1074#1072#1088#1072', Tovari.'#1062#1110#1085#1072'_'#1075#1088#1085 +
        ', Prodazi.'#1050#1110#1083#1100#1082#1110#1089#1090#1100', Personal.'#1055#1030#1041', Prodazi.'#1050#1086#1076'_'#1095#1077#1082#1072', Prodazi.'#1047#1085#1080 +
        #1078#1082#1072
      
        'FROM (Category INNER JOIN Tovari ON Category.'#1050#1086#1076'_'#1082#1072#1090#1077#1075#1086#1088#1110#1111' = Tov' +
        'ari.'#1050#1086#1076'_'#1082#1072#1090#1077#1075#1086#1088#1110#1111') INNER JOIN ([Check] INNER JOIN (Personal INNE' +
        'R JOIN Prodazi ON Personal.'#1050#1086#1076'_'#1087#1077#1088#1089#1086#1085#1072#1083#1072' = Prodazi.'#1050#1086#1076'_'#1087#1077#1088#1089#1086#1085#1072#1083#1072 +
        ') ON Check.'#1050#1086#1076'_'#1095#1077#1082#1072' = Prodazi.'#1050#1086#1076'_'#1095#1077#1082#1072') ON Tovari.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1072' = P' +
        'rodazi.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1072';')
    Left = 104
    Top = 312
  end
  object DataSProdazi: TDataSource
    DataSet = ADOQProdazi
    Left = 192
    Top = 312
  end
  object ADOQRep: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Tovari.'#1053#1072#1079#1074#1072'_'#1090#1086#1074#1072#1088#1072', Prodazi.'#1050#1110#1083#1100#1082#1110#1089#1090#1100', Prodazi.'#1062#1110#1085#1072', Tov' +
        'ari.'#1062#1110#1085#1072'_'#1075#1088#1085
      
        'FROM [Check] INNER JOIN (Tovari INNER JOIN Prodazi ON Tovari.'#1050#1086#1076 +
        '_'#1090#1086#1074#1072#1088#1072' = Prodazi.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1072') ON Check.'#1050#1086#1076'_'#1095#1077#1082#1072' = Prodazi.'#1050#1086#1076'_'#1095#1077 +
        #1082#1072';')
    Left = 104
    Top = 368
  end
  object ADOQProd1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 264
    Top = 16
  end
  object DataSProd1: TDataSource
    DataSet = ADOQProd1
    Left = 352
    Top = 16
  end
  object ADOQProd2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Prodazi.'#1050#1086#1076'_'#1087#1088#1086#1076#1072#1078#1110', Check.'#1044#1072#1090#1072', Tovari.'#1053#1072#1079#1074#1072'_'#1090#1086#1074#1072#1088#1072', Pro' +
        'dazi.'#1050#1110#1083#1100#1082#1110#1089#1090#1100', Prodazi.'#1062#1110#1085#1072', Personal.'#1055#1030#1041', Prodazi.'#1050#1086#1076'_'#1095#1077#1082#1072
      
        'FROM [Check] INNER JOIN ((Category INNER JOIN Tovari ON Category' +
        '.'#1050#1086#1076'_'#1082#1072#1090#1077#1075#1086#1088#1110#1111' = Tovari.'#1050#1086#1076'_'#1082#1072#1090#1077#1075#1086#1088#1110#1111') INNER JOIN (Personal INNE' +
        'R JOIN Prodazi ON Personal.'#1050#1086#1076'_'#1087#1077#1088#1089#1086#1085#1072#1083#1072' = Prodazi.'#1050#1086#1076'_'#1087#1077#1088#1089#1086#1085#1072#1083#1072 +
        ') ON Tovari.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1072' = Prodazi.'#1050#1086#1076'_'#1090#1086#1074#1072#1088#1072') ON Check.'#1050#1086#1076'_'#1095#1077#1082#1072' =' +
        ' Prodazi.'#1050#1086#1076'_'#1095#1077#1082#1072
      'WHERE (((Prodazi.'#1050#1086#1076'_'#1095#1077#1082#1072')=0));'
      '')
    Left = 264
    Top = 80
  end
  object DataSProd2: TDataSource
    DataSet = ADOQProd2
    Left = 352
    Top = 80
  end
end
