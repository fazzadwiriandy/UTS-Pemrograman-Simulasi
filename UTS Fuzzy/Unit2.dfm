object Form2: TForm2
  Left = 144
  Top = 144
  Width = 1008
  Height = 523
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 64
    Width = 107
    Height = 25
    Caption = 'Nama Rule :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 360
    Top = 8
    Width = 270
    Height = 32
    Caption = 'Input Rules Fuzzy Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 16
    Top = 136
    Width = 106
    Height = 25
    Caption = 'Parameter 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 16
    Top = 184
    Width = 153
    Height = 25
    Caption = 'Nilai  Parameter 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 16
    Top = 232
    Width = 106
    Height = 25
    Caption = 'Parameter 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 16
    Top = 280
    Width = 148
    Height = 25
    Caption = 'Nilai Parameter 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 16
    Top = 328
    Width = 106
    Height = 25
    Caption = 'Parameter 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 16
    Top = 376
    Width = 148
    Height = 25
    Caption = 'Nilai Parameter 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edt_namarule: TEdit
    Left = 192
    Top = 64
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object edt_param1: TEdit
    Left = 192
    Top = 136
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object edt_nilai1: TEdit
    Left = 192
    Top = 184
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object edt_param2: TEdit
    Left = 192
    Top = 232
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object edt_nilai2: TEdit
    Left = 192
    Top = 280
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object edt_param3: TEdit
    Left = 192
    Top = 328
    Width = 193
    Height = 21
    TabOrder = 5
  end
  object edt_nilai3: TEdit
    Left = 192
    Top = 376
    Width = 193
    Height = 21
    TabOrder = 6
  end
  object btn1: TBitBtn
    Left = 808
    Top = 424
    Width = 121
    Height = 41
    Caption = 'Selanjutnya'
    TabOrder = 7
    OnClick = btn1Click
  end
  object smdbgrid1: TDBGrid
    Left = 416
    Top = 80
    Width = 537
    Height = 337
    DataSource = DM1.ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btn2: TBitBtn
    Left = 680
    Top = 424
    Width = 99
    Height = 41
    Caption = 'Tambah Rules'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 8
    Top = 8
    Width = 107
    Height = 41
    Caption = 'Halaman Utama'
    TabOrder = 10
    OnClick = btn3Click
  end
end
