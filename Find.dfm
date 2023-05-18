object fFind: TfFind
  Left = 0
  Top = 0
  Caption = 'fFind'
  ClientHeight = 338
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFind: TPanel
    Left = 0
    Top = 0
    Width = 522
    Height = 338
    Align = alClient
    TabOrder = 0
    object PanelFindGrid: TPanel
      Left = 1
      Top = 42
      Width = 520
      Height = 295
      Align = alClient
      Caption = 'PanelFindGrid'
      TabOrder = 0
      object DBGridPerson: TDBGrid
        Left = 1
        Top = 1
        Width = 518
        Height = 293
        Align = alClient
        DataSource = ds_GetPeopleFamily
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Name'
            Title.Caption = #1048#1084#1103
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Family'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Surname'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BirthDate'
            Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AddDate'
            Title.Caption = #1044#1072#1090#1072' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103
            Visible = True
          end>
      end
    end
    object PanelFindMenu: TPanel
      Left = 1
      Top = 1
      Width = 520
      Height = 41
      Align = alTop
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      object LabelFind1: TLabel
        Left = 12
        Top = 14
        Width = 48
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103':'
      end
      object ButtonFind1: TButton
        Left = 256
        Top = 10
        Width = 75
        Height = 25
        Caption = #1055#1086#1080#1089#1082
        TabOrder = 0
        OnClick = ButtonFind1Click
      end
      object EditFindFamily: TEdit
        Left = 66
        Top = 11
        Width = 167
        Height = 21
        TabOrder = 1
      end
    end
  end
  object q_GetPeopleFamily: TADOQuery
    Connection = fDBUnit.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Family'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      ' FROM People'
      'WHERE Family = :Family')
    Left = 280
    Top = 88
  end
  object ds_GetPeopleFamily: TDataSource
    DataSet = q_GetPeopleFamily
    Left = 280
    Top = 144
  end
end
