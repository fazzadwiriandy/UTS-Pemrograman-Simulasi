object Form3: TForm3
  Left = 152
  Top = 118
  Width = 1001
  Height = 533
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 72
    Width = 140
    Height = 25
    Caption = 'Nama Variabel :'
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
    Width = 336
    Height = 32
    Caption = 'Input Variabel Fuzzy Data - 2'
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
    Width = 116
    Height = 25
    Caption = 'Tipe Variabel'
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
    Width = 151
    Height = 25
    Caption = 'Batas Bawah Var'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 16
    Top = 240
    Width = 157
    Height = 25
    Caption = 'Batas Bawah Nilai'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 16
    Top = 288
    Width = 131
    Height = 25
    Caption = 'Batas Atas Var'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 16
    Top = 336
    Width = 137
    Height = 25
    Caption = 'Batas Atas Nilai'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 16
    Top = 384
    Width = 63
    Height = 25
    Caption = 'Satuan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edt_namarule: TEdit
    Left = 192
    Top = 72
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object edt_bbv1: TEdit
    Left = 192
    Top = 184
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object edt_bbn1: TEdit
    Left = 192
    Top = 240
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object edt_bav: TEdit
    Left = 192
    Top = 288
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object edt_ban: TEdit
    Left = 192
    Top = 336
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object edt_satuan: TEdit
    Left = 192
    Top = 392
    Width = 193
    Height = 21
    TabOrder = 5
  end
  object smdbgrd1: TSMDBGrid
    Left = 408
    Top = 48
    Width = 497
    Height = 345
    DataSource = DM1.ds2
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
  end
  object cbb1: TComboBox
    Left = 192
    Top = 136
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Text = 'Pilih Tipe'
    Items.Strings = (
      'Output'
      'Input')
  end
  object btn1: TBitBtn
    Left = 824
    Top = 408
    Width = 89
    Height = 41
    Caption = 'Mulai Simulasi'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 688
    Top = 416
    Width = 97
    Height = 33
    Caption = 'Tambah Variabel'
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
  object btn4: TBitBtn
    Left = 8
    Top = 424
    Width = 89
    Height = 33
    Caption = 'Kembali'
    TabOrder = 11
    OnClick = btn4Click
  end
end
