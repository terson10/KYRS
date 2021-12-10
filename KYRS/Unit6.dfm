object Check: TCheck
  Left = 580
  Top = 282
  Width = 825
  Height = 431
  Caption = #1063#1077#1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TDBGrid
    Left = 0
    Top = 1
    Width = 809
    Height = 336
    DataSource = DataModule1.DataSProd2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076'_'#1087#1088#1086#1076#1072#1078#1110
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1072#1079#1074#1072'_'#1090#1086#1074#1072#1088#1072
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1050#1110#1083#1100#1082#1110#1089#1090#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1062#1110#1085#1072
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1030#1041
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1050#1086#1076'_'#1095#1077#1082#1072
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
  object Panel: TPanel
    Left = 0
    Top = 344
    Width = 809
    Height = 49
    TabOrder = 1
    object Label12: TLabel
      Left = 344
      Top = 16
      Width = 91
      Height = 16
      Caption = #1057#1091#1084#1072' '#1087#1086' '#1095#1077#1082#1091':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object But2: TButton
      Left = 8
      Top = 8
      Width = 113
      Height = 25
      Caption = #1042#1080#1076#1072#1083#1080#1090#1080
      TabOrder = 0
      OnClick = But2Click
    end
    object But3: TButton
      Left = 152
      Top = 8
      Width = 113
      Height = 25
      Caption = #1056#1086#1079#1076#1088#1091#1082#1091#1074#1072#1090#1080
      TabOrder = 1
      OnClick = But3Click
    end
  end
end
