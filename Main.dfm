object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'fMain'
  ClientHeight = 597
  ClientWidth = 859
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 574
    Width = 859
    Height = 23
    Align = alBottom
    TabOrder = 0
    OnChange = PageControl1Change
  end
  object MainMenu1: TMainMenu
    Left = 720
    object N1: TMenuItem
      Caption = #1052#1077#1085#1102
      object N2: TMenuItem
        Caption = #1040#1056#1052' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1040#1056#1052' '#1089#1090#1072#1090#1080#1089#1090#1072
        OnClick = N3Click
      end
    end
  end
end
