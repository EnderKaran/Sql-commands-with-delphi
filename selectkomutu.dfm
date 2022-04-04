object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Select Komutu'
  ClientHeight = 411
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 32
    Width = 202
    Height = 19
    Caption = 'S'#252'tunlar'#305#305' listelemek i'#231'in'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 211
    Width = 644
    Height = 200
    Align = alBottom
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = MyDataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1No: TcxGridDBColumn
        DataBinding.FieldName = 'No'
      end
      object cxGrid1DBTableView1Ad: TcxGridDBColumn
        DataBinding.FieldName = 'Ad'
      end
      object cxGrid1DBTableView1Soyad: TcxGridDBColumn
        DataBinding.FieldName = 'Soyad'
      end
      object cxGrid1DBTableView1Sehir: TcxGridDBColumn
        DataBinding.FieldName = 'Sehir'
      end
      object cxGrid1DBTableView1Numara: TcxGridDBColumn
        DataBinding.FieldName = 'Numara'
      end
      object cxGrid1DBTableView1cinsiyet: TcxGridDBColumn
        DataBinding.FieldName = 'cinsiyet'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 40
    Top = 88
    Width = 250
    Height = 25
    Caption = 'Listele'
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxLabel1: TcxLabel
    Left = 416
    Top = 32
    Caption = 'SQL SELECT DISTINCT'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxButton2: TcxButton
    Left = 408
    Top = 88
    Width = 217
    Height = 25
    Caption = 'Listele'
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object MyDataSource1: TMyDataSource
    DataSet = DataModule1.MyQuery1
    Left = 584
    Top = 160
  end
end
