object Form4: TForm4
  Left = 113
  Top = 131
  Width = 1195
  Height = 706
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel
    Left = 864
    Top = 8
    Width = 268
    Height = 32
    Caption = 'Proses Simulasi Fuzzy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 16
    Top = 40
    Width = 58
    Height = 13
    Caption = '[0] Fuzzy init'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 16
    Top = 328
    Width = 63
    Height = 13
    Caption = '[1] Fuzzifikasi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 704
    Top = 40
    Width = 55
    Height = 13
    Caption = '[3] Implikasi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 8
    Top = 528
    Width = 81
    Height = 13
    Caption = '[2] Operasi Fuzzy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 704
    Top = 352
    Width = 106
    Height = 13
    Caption = '[5] Defuzzifikasi Diskrit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 704
    Top = 488
    Width = 54
    Height = 13
    Caption = '[6] Centroid'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 704
    Top = 504
    Width = 131
    Height = 13
    Caption = 'Hasil taksiran kemasan/hari'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 24
    Top = 16
    Width = 59
    Height = 13
    Caption = 'Permintaan :'
  end
  object lbl11: TLabel
    Left = 216
    Top = 16
    Width = 89
    Height = 13
    Caption = 'Persediaan barang'
  end
  object lbl12: TLabel
    Left = 496
    Top = 648
    Width = 161
    Height = 13
    Caption = 'batas atas nilai persediaan barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lbl13: TLabel
    Left = 688
    Top = 648
    Width = 161
    Height = 13
    Caption = 'batas atas nilai persediaan barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lbl14: TLabel
    Left = 512
    Top = 608
    Width = 137
    Height = 13
    Caption = 'batas bawah nilai permintaan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lbl15: TLabel
    Left = 696
    Top = 608
    Width = 137
    Height = 13
    Caption = 'batas bawah nilai persediaan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lbl16: TLabel
    Left = 904
    Top = 648
    Width = 113
    Height = 13
    Caption = 'batas atas nilai produksi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lbl17: TLabel
    Left = 896
    Top = 608
    Width = 125
    Height = 13
    Caption = 'batas bawah nilai produksi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lbl6: TLabel
    Left = 704
    Top = 200
    Width = 55
    Height = 13
    Caption = '[4] Implikasi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object smdbgrd1: TSMDBGrid
    Left = 16
    Top = 56
    Width = 457
    Height = 121
    DataSource = DM1.ds1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
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
  object smdbgrd2: TSMDBGrid
    Left = 16
    Top = 192
    Width = 457
    Height = 121
    DataSource = DM1.ds2
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
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
  object btn1: TBitBtn
    Left = 480
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Edit Var'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 480
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Edit Rules'
    TabOrder = 3
    OnClick = btn2Click
  end
  object smdbgrd3: TSMDBGrid
    Left = 704
    Top = 56
    Width = 449
    Height = 145
    DataSource = DM1.ds4
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
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
    DefaultRowHeight = 24
    ScrollBars = ssHorizontal
  end
  object cht1: TChart
    Left = 16
    Top = 344
    Width = 249
    Height = 169
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Permintaan')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 0.800000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.000000000000000000
    TabOrder = 5
    object lnsrsSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'uNaik'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object lnsrsSeries2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Title = 'uTurun'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object lnsrsSeries5: TLineSeries
      Active = False
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clYellow
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object cht2: TChart
    Left = 280
    Top = 344
    Width = 281
    Height = 169
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Persediaan Barang')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 0.800000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 0.800000000000000000
    TabOrder = 6
    object lnsrsSeries3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'uBanyak'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object lnsrsSeries4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Title = 'uSedikit'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object smdbgrd4: TSMDBGrid
    Left = 8
    Top = 544
    Width = 457
    Height = 121
    DataSource = DM1.ds3
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 7
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
    DefaultRowHeight = 24
    ScrollBars = ssHorizontal
  end
  object smdbgrd6: TSMDBGrid
    Left = 704
    Top = 368
    Width = 457
    Height = 121
    DataSource = DM1.ds5
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 8
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
  object btn3: TBitBtn
    Left = 984
    Top = 528
    Width = 75
    Height = 25
    Caption = 'Forecast'
    TabOrder = 9
    OnClick = btn3Click
  end
  object edt1: TEdit
    Left = 704
    Top = 528
    Width = 265
    Height = 21
    TabOrder = 10
  end
  object btn4: TBitBtn
    Left = 1048
    Top = 592
    Width = 105
    Height = 41
    Caption = 'Selesai'
    TabOrder = 11
    OnClick = btn4Click
  end
  object edt_soal: TEdit
    Left = 88
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 12
    Text = '4000'
  end
  object edt2: TEdit
    Left = 320
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 13
    Text = '300'
  end
  object btn5: TBitBtn
    Left = 448
    Top = 16
    Width = 75
    Height = 33
    Caption = 'Generate'
    TabOrder = 14
    OnClick = btn5Click
  end
  object edt3: TEdit
    Left = 536
    Top = 624
    Width = 89
    Height = 21
    TabOrder = 15
    Visible = False
  end
  object edt4: TEdit
    Left = 728
    Top = 624
    Width = 89
    Height = 21
    TabOrder = 16
    Visible = False
  end
  object edt5: TEdit
    Left = 728
    Top = 664
    Width = 89
    Height = 21
    TabOrder = 17
    Visible = False
  end
  object edt6: TEdit
    Left = 536
    Top = 664
    Width = 89
    Height = 21
    TabOrder = 18
    Visible = False
  end
  object edt7: TEdit
    Left = 920
    Top = 624
    Width = 89
    Height = 21
    TabOrder = 19
    Visible = False
  end
  object edt8: TEdit
    Left = 920
    Top = 664
    Width = 89
    Height = 21
    TabOrder = 20
    Visible = False
  end
  object smdbgrd5: TSMDBGrid
    Left = 704
    Top = 216
    Width = 449
    Height = 137
    DataSource = DM1.ds6
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 21
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
  object btn6: TBitBtn
    Left = 584
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Kembali'
    TabOrder = 22
    OnClick = btn6Click
  end
end
