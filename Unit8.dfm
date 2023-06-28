object Form8: TForm8
  Left = 99
  Top = 129
  Width = 1247
  Height = 573
  Caption = 'Form Semester'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 158
    Height = 25
    Caption = 'Form Semester'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 62
    Height = 19
    Caption = 'ID Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 104
    Width = 53
    Height = 19
    Caption = 'ID Poin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 136
    Width = 93
    Height = 19
    Caption = 'ID Wali Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 168
    Width = 98
    Height = 19
    Caption = 'ID Orang Tua'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 232
    Width = 57
    Height = 19
    Caption = 'Tanggal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 40
    Top = 264
    Width = 65
    Height = 19
    Caption = 'Semester'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 40
    Top = 296
    Width = 43
    Height = 19
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 40
    Top = 328
    Width = 94
    Height = 19
    Caption = 'Tingkat Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 40
    Top = 200
    Width = 58
    Height = 19
    Caption = 'ID Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cbb1: TComboBox
    Left = 216
    Top = 72
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object Button1: TButton
    Left = 504
    Top = 368
    Width = 89
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 608
    Top = 368
    Width = 89
    Height = 49
    Caption = 'EDIT'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 712
    Top = 368
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 816
    Top = 368
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 920
    Top = 368
    Width = 89
    Height = 49
    Caption = 'REPORT'
    TabOrder = 5
    OnClick = Button5Click
  end
  object dbgrd1: TDBGrid
    Left = 350
    Top = 72
    Width = 843
    Height = 273
    DataSource = ds1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object Button6: TButton
    Left = 400
    Top = 368
    Width = 89
    Height = 49
    Caption = 'BARU'
    TabOrder = 7
    OnClick = Button6Click
  end
  object cbb2: TComboBox
    Left = 216
    Top = 104
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 8
  end
  object cbb3: TComboBox
    Left = 216
    Top = 136
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 9
  end
  object cbb4: TComboBox
    Left = 216
    Top = 168
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 10
  end
  object cbb5: TComboBox
    Left = 216
    Top = 200
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 11
  end
  object cbb6: TComboBox
    Left = 216
    Top = 264
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    Items.Strings = (
      'Semester 1'
      'Semester 2')
  end
  object dtp1: TDateTimePicker
    Left = 216
    Top = 232
    Width = 121
    Height = 21
    Date = 45105.928386157410000000
    Time = 45105.928386157410000000
    TabOrder = 13
  end
  object Edit1: TEdit
    Left = 216
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object cbb7: TComboBox
    Left = 216
    Top = 328
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Items.Strings = (
      '10'
      '11'
      '12')
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'visual2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'G:\Kuliah\Visual 2 Semester 4\TugasAkhir\libmysql.dll'
    Left = 56
    Top = 384
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_semester')
    Params = <>
    Left = 120
    Top = 384
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 168
    Top = 384
  end
  object frxDBsiswa: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 88
    Top = 440
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45102.887726504600000000
    ReportOptions.LastChange = 45105.957299733800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 440
    Datasets = <
      item
        DataSet = frxDBsiswa
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'Arial'
        Font.Style = []
        Height = 56.692950000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 151.181200000000000000
          Top = 11.338590000000000000
          Width = 453.543600000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA SEMESTER')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 98.267780000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 49.133890000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID SISWA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID POIN')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 226.771800000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID WALI')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 302.362400000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID KELAS')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 377.953000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 453.543600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'SEMESTER')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 529.134200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 604.724800000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TINGKAT KELAS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 740.409927000000000000
        DataSet = frxDBsiswa
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 49.133890000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_siswa'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_siswa"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_poin'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_poin"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 226.771800000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_wali'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_wali"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 302.362400000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_kelas'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_kelas"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 377.953000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 453.543600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'semester'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."semester"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 529.134200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 604.724800000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tingkat_kelas'
          DataSet = frxDBsiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tingkat_kelas"]')
          ParentFont = False
        end
      end
    end
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from table_siswa')
    Params = <>
    Left = 216
    Top = 384
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_poin')
    Params = <>
    Left = 264
    Top = 384
  end
  object zqry4: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_wali_kelas')
    Params = <>
    Left = 304
    Top = 384
  end
  object zqry5: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_ortu')
    Params = <>
    Left = 216
    Top = 440
  end
  object zqry6: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_kelas')
    Params = <>
    Left = 264
    Top = 440
  end
end
