inherited fStatist: TfStatist
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fStatist'
  ClientHeight = 583
  ClientWidth = 836
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  ExplicitWidth = 852
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 293
    Width = 836
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -2
    ExplicitTop = 413
    ExplicitWidth = 861
  end
  object Label5: TLabel [1]
    Left = 31
    Top = 152
    Width = 11
    Height = 13
    Caption = #1057':'
  end
  object Label6: TLabel [2]
    Left = 25
    Top = 179
    Width = 17
    Height = 13
    Caption = #1055#1086':'
  end
  inherited PanelFind: TPanel
    Left = 217
    Width = 619
    Height = 293
    ExplicitLeft = 217
    ExplicitWidth = 619
    ExplicitHeight = 293
    inherited PanelFindGrid: TPanel
      Width = 617
      Height = 250
      ExplicitWidth = 617
      ExplicitHeight = 250
      inherited DBGridPerson: TDBGrid
        Width = 615
        Height = 248
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
            Width = 88
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
    inherited PanelFindMenu: TPanel
      Width = 617
      ExplicitWidth = 617
    end
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 0
    Width = 217
    Height = 293
    Align = alLeft
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 1
    object Label1: TLabel
      Left = 48
      Top = 29
      Width = 94
      Height = 13
      Caption = #1044#1072#1090#1072' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103':'
    end
    object Label2: TLabel
      Left = 31
      Top = 56
      Width = 11
      Height = 13
      Caption = #1057':'
    end
    object Label3: TLabel
      Left = 25
      Top = 83
      Width = 17
      Height = 13
      Caption = #1055#1086':'
    end
    object Label4: TLabel
      Left = 48
      Top = 125
      Width = 84
      Height = 13
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
    end
    object DTPickerAdd1: TDateTimePicker
      Left = 48
      Top = 56
      Width = 134
      Height = 21
      Date = 45063.981355983800000000
      Time = 45063.981355983800000000
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object DTPickerAdd2: TDateTimePicker
      Left = 48
      Top = 83
      Width = 134
      Height = 21
      Date = 45063.981355983800000000
      Time = 45063.981355983800000000
      TabOrder = 1
    end
    object Button1: TButton
      Left = 107
      Top = 240
      Width = 75
      Height = 25
      Caption = #1055#1086#1080#1089#1082
      TabOrder = 2
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 31
      Top = 124
      Width = 19
      Height = 17
      TabOrder = 3
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 31
      Top = 28
      Width = 19
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = CheckBox2Click
    end
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 296
    Width = 836
    Height = 287
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 2
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 834
      Height = 285
      Align = alClient
      Caption = 'PanelFindGrid'
      TabOrder = 0
      object Splitter2: TSplitter
        Left = 500
        Top = 1
        Width = 5
        Height = 283
        ExplicitLeft = 523
        ExplicitTop = 0
        ExplicitHeight = 168
      end
      object DBGrid1: TDBGrid
        Left = 505
        Top = 1
        Width = 328
        Height = 283
        Align = alClient
        DataSource = ds_GetPeopleRecord
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
            FieldName = 'id_People'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Thing'
            Title.Caption = #1055#1088#1077#1076#1084#1077#1090
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qty'
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ExpDate'
            Title.Caption = #1057#1088#1086#1082' '#1075#1086#1076#1085#1086#1089#1090#1080
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'r.AddDate'
            Visible = False
          end>
      end
      object DBGrid10People: TDBGrid
        Left = 1
        Top = 1
        Width = 499
        Height = 283
        Align = alLeft
        DataSource = ds_GetPeopleBirthAdd
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid10PeopleCellClick
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
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Family'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Surname'
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BirthDate'
            Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AddDate'
            Title.Caption = #1044#1072#1090#1072' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103
            Width = 108
            Visible = True
          end>
      end
    end
  end
  object DTPickerBirth1: TDateTimePicker [6]
    Left = 48
    Top = 152
    Width = 134
    Height = 21
    Date = 45063.981355983800000000
    Time = 45063.981355983800000000
    Enabled = False
    TabOrder = 3
  end
  object DTPickerBirth2: TDateTimePicker [7]
    Left = 48
    Top = 179
    Width = 134
    Height = 21
    Date = 45063.981355983800000000
    Time = 45063.981355983800000000
    Enabled = False
    TabOrder = 4
  end
  object ds_GetPeopleBirthAdd: TDataSource
    DataSet = q_GetPeopleBirthAdd
    Left = 136
    Top = 446
  end
  object q_GetPeopleBirthAdd: TADOQuery
    Active = True
    Connection = fDBUnit.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Birth1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Birth2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Add1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Add2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *  FROM People'
      'WHERE BirthDate  BETWEEN :Birth1 AND :Birth2'
      'AND AddDate BETWEEN :Add1 AND :Add2'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 136
    Top = 392
  end
  object q_GetPeopleRecord: TADOQuery
    Active = True
    Connection = fDBUnit.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'id_People'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  *'
      ' FROM Record as r'
      ' INNER JOIN People as p on p.Id = r.id_People'
      'WHERE id_People= :id_People')
    Left = 552
    Top = 392
  end
  object ds_GetPeopleRecord: TDataSource
    DataSet = q_GetPeopleRecord
    Left = 552
    Top = 448
  end
end
