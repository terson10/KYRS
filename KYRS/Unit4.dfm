object Sprav: TSprav
  Left = 195
  Top = 114
  Width = 796
  Height = 570
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 782
    Height = 534
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1058#1086#1074#1072#1088
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 774
        Height = 360
        Align = alClient
        DataSource = DataModule1.DataSTovari
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1090#1086#1074#1072#1088#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072'_'#1090#1086#1074#1072#1088#1072
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072'_'#1082#1072#1090#1077#1075#1086#1088#1110#1111
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1062#1110#1085#1072'_'#1075#1088#1085
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1054#1087#1080#1089
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 360
        Width = 774
        Height = 71
        Align = alBottom
        TabOrder = 1
        object Label7: TLabel
          Left = 488
          Top = 8
          Width = 114
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1085#1072#1079#1074#1110' '#1090#1086#1074#1072#1088#1091
        end
        object Button2: TButton
          Left = 167
          Top = 8
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button16: TButton
          Left = 246
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1074#1110#1090
          TabOrder = 1
          OnClick = Button16Click
        end
        object Button18: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 2
          OnClick = Button18Click
        end
        object Button19: TButton
          Left = 88
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 3
          OnClick = Button19Click
        end
        object Edit6: TEdit
          Left = 616
          Top = 8
          Width = 121
          Height = 21
          TabOrder = 4
          OnChange = Edit6Change
        end
        object Button6: TButton
          Left = 624
          Top = 41
          Width = 105
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1072
          TabOrder = 5
          OnClick = Button6Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 431
        Width = 774
        Height = 75
        Align = alBottom
        TabOrder = 2
        Visible = False
        object Label2: TLabel
          Left = 24
          Top = 12
          Width = 32
          Height = 13
          Caption = #1053#1072#1079#1074#1072
        end
        object Label3: TLabel
          Left = 10
          Top = 35
          Width = 49
          Height = 13
          Caption = #1050#1072#1090#1077#1075#1086#1088#1110#1103
        end
        object Label5: TLabel
          Left = 303
          Top = 11
          Width = 22
          Height = 13
          Caption = #1062#1110#1085#1072
        end
        object Label1: TLabel
          Left = 303
          Top = 35
          Width = 26
          Height = 13
          Caption = #1054#1087#1080#1089
        end
        object Edit1: TEdit
          Left = 88
          Top = 8
          Width = 145
          Height = 21
          TabOrder = 0
        end
        object Edit4: TEdit
          Left = 352
          Top = 8
          Width = 145
          Height = 21
          TabOrder = 1
          Text = '0'
        end
        object Button4: TButton
          Left = 528
          Top = 36
          Width = 105
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 2
          OnClick = Button4Click
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 88
          Top = 32
          Width = 145
          Height = 21
          KeyField = #1050#1086#1076'_'#1082#1072#1090#1077#1075#1086#1088#1110#1111
          ListField = #1053#1072#1079#1074#1072'_'#1082#1072#1090#1077#1075#1086#1088#1110#1111
          ListSource = DataModule1.DataSCategory
          TabOrder = 3
        end
        object Button1: TButton
          Left = 528
          Top = 8
          Width = 105
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 4
          OnClick = Button1Click
        end
        object Edit2: TEdit
          Left = 352
          Top = 32
          Width = 145
          Height = 21
          TabOrder = 5
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1050#1072#1090#1077#1075#1086#1088#1110#1111
      ImageIndex = 4
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 313
        DataSource = DataModule1.DataSCategory
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1082#1072#1090#1077#1075#1086#1088#1110#1111
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072'_'#1082#1072#1090#1077#1075#1086#1088#1110#1111
            Width = 662
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 463
        Width = 774
        Height = 43
        Align = alBottom
        TabOrder = 1
        object Button14: TButton
          Left = 168
          Top = 8
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 0
          OnClick = Button14Click
        end
        object Button15: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 1
          OnClick = Button15Click
        end
        object Button17: TButton
          Left = 88
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 2
          OnClick = Button17Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 774
        Height = 463
        Align = alClient
        DataSource = DataModule1.DataSPers
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1087#1077#1088#1089#1086#1085#1072#1083#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1030#1041
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1086#1089#1072#1076#1072
            Width = 229
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1077#1083#1077#1092#1086#1085
            Width = 127
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 463
        Width = 774
        Height = 43
        Align = alBottom
        TabOrder = 1
        object Button7: TButton
          Left = 168
          Top = 8
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 0
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 1
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 88
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 2
          OnClick = Button9Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 463
        Width = 774
        Height = 43
        Align = alBottom
        TabOrder = 0
        object Button3: TButton
          Left = 16
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1074#1110#1090
          TabOrder = 0
          OnClick = Button3Click
        end
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 345
        DataSource = DataModule1.DataSProdazi
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1087#1088#1086#1076#1072#1078#1110
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072'_'#1090#1086#1074#1072#1088#1072
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1062#1110#1085#1072'_'#1075#1088#1085
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1047#1085#1080#1078#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1110#1083#1100#1082#1110#1089#1090#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1030#1041
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1095#1077#1082#1072
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1063#1077#1082
      ImageIndex = 3
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 697
        Height = 409
        DataSource = DataModule1.DataSCheck
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel5: TPanel
        Left = 0
        Top = 463
        Width = 774
        Height = 43
        Align = alBottom
        TabOrder = 1
      end
    end
  end
end
