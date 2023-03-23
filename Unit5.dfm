object Form5: TForm5
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cihaz Servis Kay'#305't Sorgulama'
  ClientHeight = 499
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 51
    Width = 85
    Height = 19
    Caption = 'TAK'#304'P NO :'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 56
    Top = 248
    Width = 37
    Height = 18
    Caption = #220'cret'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 376
    Top = 194
    Width = 64
    Height = 18
    Caption = 'A'#231#305'klama'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 56
    Top = 190
    Width = 93
    Height = 18
    Caption = 'Cihaz Sorunu'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 376
    Top = 131
    Width = 142
    Height = 18
    Caption = 'Tahmini Teslim Tarihi'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 56
    Top = 131
    Width = 132
    Height = 18
    Caption = 'Servise Kay'#305't Tarihi'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 376
    Top = 252
    Width = 98
    Height = 18
    Caption = 'Cihaz Durumu'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 296
    Top = 44
    Width = 105
    Height = 31
    Caption = 'SORGULA'
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 344
    Width = 765
    Height = 137
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MusteriId'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CihazId'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ServiseGeldigiTarih'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TahminiTeslimTarihi'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CihazSorunu'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Aciklama'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ucret'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TakipNo'
        Width = 80
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 161
    Top = 49
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object DBEdit7: TDBEdit
    Left = 208
    Top = 249
    Width = 121
    Height = 21
    DataField = 'Ucret'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit6: TDBEdit
    Left = 543
    Top = 195
    Width = 121
    Height = 21
    DataField = 'Aciklama'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 208
    Top = 191
    Width = 121
    Height = 21
    DataField = 'CihazSorunu'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 543
    Top = 132
    Width = 121
    Height = 21
    DataField = 'TahminiTeslimTarihi'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 208
    Top = 132
    Width = 121
    Height = 21
    DataField = 'ServiseGeldigiTarih'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 7
  end
  object DBEdit1: TDBEdit
    Left = 543
    Top = 249
    Width = 121
    Height = 21
    DataField = 'CihazDurum'
    DataSource = DataSource1
    TabOrder = 8
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\delphiproje\Tekn' +
      'ikServisTakip.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 440
    Top = 32
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'ServisBilgileri'
    Left = 536
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 624
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TakipNo'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from ServisBilgileri where TakipNo = :TakipNo')
    Left = 704
    Top = 32
    object ADOQuery1Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object ADOQuery1MusteriId: TIntegerField
      FieldName = 'MusteriId'
    end
    object ADOQuery1CihazId: TIntegerField
      FieldName = 'CihazId'
    end
    object ADOQuery1ServiseGeldigiTarih: TDateTimeField
      FieldName = 'ServiseGeldigiTarih'
    end
    object ADOQuery1TahminiTeslimTarihi: TDateTimeField
      FieldName = 'TahminiTeslimTarihi'
    end
    object ADOQuery1CihazSorunu: TWideStringField
      FieldName = 'CihazSorunu'
      Size = 255
    end
    object ADOQuery1Aciklama: TWideStringField
      FieldName = 'Aciklama'
      Size = 255
    end
    object ADOQuery1Ucret: TBCDField
      FieldName = 'Ucret'
      Precision = 19
    end
    object ADOQuery1TakipNo: TWideStringField
      FieldName = 'TakipNo'
      Size = 255
    end
    object ADOQuery1CihazDurum: TWideStringField
      FieldName = 'CihazDurum'
      Size = 255
    end
  end
end
