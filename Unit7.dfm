object Form7: TForm7
  Left = 211
  Top = 70
  Width = 1096
  Height = 619
  Caption = 'Form Hubungan'
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
    Width = 167
    Height = 25
    Caption = 'Form Hubungan'
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
    Width = 54
    Height = 19
    Caption = 'ID Ortu'
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
    Width = 158
    Height = 19
    Caption = 'Status Hubungan Ortu'
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
    Width = 79
    Height = 19
    Caption = 'Keterangan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 200
    Width = 124
    Height = 19
    Caption = 'Status Orang Tua'
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
    Left = 152
    Top = 360
    Width = 89
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 360
    Width = 89
    Height = 49
    Caption = 'EDIT'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 360
    Top = 360
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 464
    Top = 360
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 568
    Top = 360
    Width = 89
    Height = 49
    Caption = 'REPORT'
    TabOrder = 5
    OnClick = Button5Click
  end
  object dbgrd1: TDBGrid
    Left = 351
    Top = 72
    Width = 682
    Height = 273
    DataSource = ds1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_hub'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_siswa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_ortu'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_hubungan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'keterangan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_ortu'
        Visible = True
      end>
  end
  object Button6: TButton
    Left = 48
    Top = 360
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
    Items.Strings = (
      'Kandung'
      'Sambung')
  end
  object cbb4: TComboBox
    Left = 216
    Top = 168
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      'Ayah'
      'Ibu'
      'Paman'
      'Bibi'
      'Kakek'
      'Nenek')
  end
  object cbb5: TComboBox
    Left = 216
    Top = 200
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 11
    Items.Strings = (
      'Hidup'
      'Almarhum')
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
    Top = 440
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_hubungan')
    Params = <>
    Left = 120
    Top = 440
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 168
    Top = 440
  end
  object frxDBsiswa: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 88
    Top = 496
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
    ReportOptions.LastChange = 45105.645832442100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 496
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
            'LAPORAN DATA HUBUNGAN')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 98.267780000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 124.724490000000000000
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
          Left = 151.181200000000000000
          Width = 86.929190000000000000
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
          Left = 238.110390000000000000
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
            'ID ORANG TUA')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 332.598640000000000000
          Width = 120.944960000000000000
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
            'STATUS HUBUNGAN')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 453.543600000000000000
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
            'KETERANGAN')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 548.031850000000000000
          Width = 113.385900000000000000
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
            'STATUS ORANG TUA')
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
          Left = 124.724490000000000000
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
          Left = 151.181200000000000000
          Width = 86.929190000000000000
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
          Left = 238.110390000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_ortu'
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
            '[frxDBDataset1."id_ortu"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 332.598640000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status_hubungan'
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
            '[frxDBDataset1."status_hubungan"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 453.543600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'keterangan'
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
            '[frxDBDataset1."keterangan"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 548.031850000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status_ortu'
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
            '[frxDBDataset1."status_ortu"]')
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
    Top = 440
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_ortu')
    Params = <>
    Left = 264
    Top = 440
  end
end
