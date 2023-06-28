object Form2: TForm2
  Left = 282
  Top = 150
  Width = 713
  Height = 543
  Caption = 'Form Kelas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 117
    Height = 25
    Caption = 'Form Kelas'
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
  object Label3: TLabel
    Left = 40
    Top = 104
    Width = 76
    Height = 19
    Caption = 'Jenis Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 40
    Top = 136
    Width = 55
    Height = 19
    Caption = 'Jurusan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 152
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 152
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 160
    Top = 376
    Width = 89
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 376
    Width = 89
    Height = 49
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 368
    Top = 376
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 472
    Top = 376
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 576
    Top = 376
    Width = 89
    Height = 49
    Caption = 'REPORT'
    TabOrder = 6
    OnClick = Button5Click
  end
  object dbgrd1: TDBGrid
    Left = 293
    Top = 72
    Width = 372
    Height = 289
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object Button6: TButton
    Left = 56
    Top = 376
    Width = 89
    Height = 49
    Caption = 'BARU'
    TabOrder = 8
    OnClick = Button6Click
  end
  object cbb1: TComboBox
    Left = 152
    Top = 136
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'IPA'
      'IPS')
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'visual2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'G:\Kuliah\Visual 2 Semester 4\TugasAkhir\libmysql.dll'
    Left = 48
    Top = 176
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_kelas')
    Params = <>
    Left = 112
    Top = 176
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 160
    Top = 176
  end
  object frxDBkelas1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 64
    Top = 240
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45102.845091296300000000
    ReportOptions.LastChange = 45105.952502824080000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 136
    Top = 240
    Datasets = <
      item
        DataSet = frxDBkelas1
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
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 200.315090000000000000
          Top = 18.897650000000000000
          Width = 366.614410000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA KELAS')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 117.165430000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 177.637910000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 204.094620000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tingkat Kelas')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 328.819110000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Kelas')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 453.543600000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jurusan')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 740.409927000000000000
        DataSet = frxDBkelas1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 177.637910000000000000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSet = frxDBkelas1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 204.094620000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxDBkelas1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 328.819110000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'jenis'
          DataSet = frxDBkelas1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jenis"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 453.543600000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'jurusan'
          DataSet = frxDBkelas1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jurusan"]')
          ParentFont = False
        end
      end
    end
  end
end
