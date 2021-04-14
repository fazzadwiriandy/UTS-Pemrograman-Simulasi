object Form1: TForm1
  Left = 250
  Top = 204
  Width = 908
  Height = 443
  Caption = 'Form1'
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 96
    Top = 104
    Width = 692
    Height = 25
    Caption = 
      'Aplikasi Fuzzy Forecasting Produksi untuk Meramalkan Jumlah Prod' +
      'uksi Harian'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btn2: TBitBtn
    Left = 248
    Top = 168
    Width = 145
    Height = 57
    Caption = 'Set Var, Rules'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 464
    Top = 168
    Width = 129
    Height = 57
    Caption = 'Start Simulasi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btn3Click
  end
end
