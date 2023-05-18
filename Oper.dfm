inherited fOper: TfOper
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1054#1087#1077#1088#1072#1090#1086#1088
  ClientHeight = 648
  ClientWidth = 861
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  ExplicitWidth = 877
  ExplicitHeight = 687
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 413
    Width = 861
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 411
  end
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 0
    Width = 257
    Height = 413
    ActivePage = TabSheet1
    Align = alLeft
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1095#1077#1083#1086#1074#1077#1082#1072
      object Label1: TLabel
        Left = 94
        Top = 71
        Width = 23
        Height = 13
        Caption = #1048#1084#1103':'
      end
      object Label2: TLabel
        Left = 94
        Top = 25
        Width = 48
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103':'
      end
      object Label3: TLabel
        Left = 94
        Top = 124
        Width = 53
        Height = 13
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
      end
      object Label4: TLabel
        Left = 56
        Top = 180
        Width = 84
        Height = 13
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
      end
      object ButtonAddPerson: TButton
        Left = 149
        Top = 258
        Width = 75
        Height = 25
        Caption = #1057#1086#1079#1076#1072#1090#1100
        TabOrder = 0
        OnClick = ButtonAddPersonClick
      end
      object EditBirthDate: TDateTimePicker
        Left = 38
        Top = 199
        Width = 186
        Height = 21
        Date = 45062.933931643520000000
        Time = 45062.933931643520000000
        TabOrder = 1
      end
      object EditName: TEdit
        Left = 38
        Top = 90
        Width = 186
        Height = 21
        TabOrder = 2
      end
      object EditSurname: TEdit
        Left = 38
        Top = 143
        Width = 186
        Height = 21
        TabOrder = 3
      end
      object DBComboBox1: TDBComboBox
        Left = 38
        Top = 44
        Width = 186
        Height = 21
        TabOrder = 4
      end
      object EditFamily: TEdit
        Left = 38
        Top = 44
        Width = 186
        Height = 21
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1047#1072#1085#1077#1089#1090#1080' '#1089#1087#1088#1072#1074#1082#1091
      ImageIndex = 1
      object Label5: TLabel
        Left = 94
        Top = 127
        Width = 64
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
      end
      object Label7: TLabel
        Left = 94
        Top = 25
        Width = 29
        Height = 13
        Caption = #1050#1086#1084#1091':'
      end
      object Label9: TLabel
        Left = 94
        Top = 180
        Width = 79
        Height = 13
        Caption = #1057#1088#1086#1082' '#1075#1086#1076#1085#1086#1089#1090#1080':'
      end
      object Label8: TLabel
        Left = 94
        Top = 73
        Width = 48
        Height = 13
        Caption = #1055#1088#1077#1076#1084#1077#1090':'
      end
      object ButtonAddRecord: TButton
        Left = 149
        Top = 258
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 0
        OnClick = ButtonAddRecordClick
      end
      object DateTimePickerExpDate: TDateTimePicker
        Left = 38
        Top = 199
        Width = 186
        Height = 21
        Date = 45062.933931643520000000
        Time = 45062.933931643520000000
        TabOrder = 1
      end
      object SpinEditQty: TSpinEdit
        Left = 37
        Top = 146
        Width = 187
        Height = 22
        MaxValue = 10000000
        MinValue = 1
        TabOrder = 2
        Value = 1
      end
      object EditThing: TEdit
        Left = 37
        Top = 92
        Width = 186
        Height = 21
        TabOrder = 3
      end
      object EditPerson: TEdit
        Left = 37
        Top = 44
        Width = 187
        Height = 21
        ReadOnly = True
        TabOrder = 4
        Text = #1042#1099#1087#1086#1083#1085#1080#1090#1077' '#1087#1086#1080#1089#1082'...'
      end
    end
  end
  inherited PanelFind: TPanel
    Left = 257
    Width = 604
    Height = 413
    TabOrder = 1
    ExplicitLeft = 257
    ExplicitWidth = 604
    ExplicitHeight = 413
    inherited PanelFindGrid: TPanel
      Width = 602
      Height = 370
      ExplicitLeft = 1
      ExplicitTop = 42
      ExplicitWidth = 602
      ExplicitHeight = 370
      inherited DBGridPerson: TDBGrid
        Width = 600
        Height = 368
        OnCellClick = DBGridPersonCellClick
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
            Width = 112
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
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AddDate'
            Title.Caption = #1044#1072#1090#1072' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103
            Width = 160
            Visible = True
          end>
      end
    end
    inherited PanelFindMenu: TPanel
      Width = 602
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 602
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 416
    Width = 861
    Height = 232
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 2
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 859
      Height = 230
      Align = alClient
      Caption = 'PanelFindGrid'
      TabOrder = 0
      object Splitter2: TSplitter
        Left = 500
        Top = 1
        Width = 5
        Height = 228
        ExplicitLeft = 523
        ExplicitTop = 0
        ExplicitHeight = 168
      end
      object DBGrid1: TDBGrid
        Left = 505
        Top = 1
        Width = 353
        Height = 228
        Align = alClient
        DataSource = ds_Get10PeopleRecord
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
        Height = 228
        Align = alLeft
        DataSource = ds_Get10People
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
  object q_AddPerson: TADOQuery [4]
    Connection = fDBUnit.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Name'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Family'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Surname'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'BirthDate'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO People'
      '(Name, Family, Surname, BirthDate, AddDate)'
      'VALUES'
      ' (:Name, :Family, :Surname, :BirthDate, Now())')
    Left = 24
    Top = 264
  end
  object q_AddRecord: TADOQuery [5]
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
      end
      item
        Name = 'Thing'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Qty'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'ExpDate'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO Record'
      '(id_People, Thing, Qty, ExpDate, AddDate)'
      'VALUES'
      ' (:id_People, :Thing, :Qty, :ExpDate, Now())')
    Left = 96
    Top = 264
  end
  object q_Get10People: TADOQuery [7]
    Active = True
    Connection = fDBUnit.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT top 10 *'
      ' FROM People'
      'order by Id DESC')
    Left = 64
    Top = 440
  end
  object ds_Get10People: TDataSource [8]
    DataSet = q_Get10People
    Left = 64
    Top = 488
  end
  object q_Get10PeopleRecord: TADOQuery [9]
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
    Left = 560
    Top = 440
  end
  object ds_Get10PeopleRecord: TDataSource [10]
    DataSet = q_Get10PeopleRecord
    Left = 560
    Top = 488
  end
end
