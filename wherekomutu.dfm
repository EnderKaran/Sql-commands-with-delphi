object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Where Komutu'
  ClientHeight = 429
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 229
    Width = 635
    Height = 200
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 136
    ExplicitTop = 176
    ExplicitWidth = 250
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
  object cxLabel1: TcxLabel
    Left = 40
    Top = 32
    Caption = 'Where Komutu'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxButton1: TcxButton
    Left = 24
    Top = 72
    Width = 161
    Height = 25
    Caption = 'Ara'
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxLabel2: TcxLabel
    Left = 384
    Top = 32
    Caption = 'SQL AND Operat'#246'r'#252
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxButton2: TcxButton
    Left = 384
    Top = 72
    Width = 185
    Height = 25
    Caption = 'Ara'
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object MyDataSource1: TMyDataSource
    DataSet = DataModule1.MyQuery1
    Left = 568
    Top = 176
  end
end
