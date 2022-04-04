object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 402
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel3: TcxLabel
    Left = 35
    Top = 24
    Caption = 'SQL MAX Kullan'#305'm'#305
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 202
    Width = 725
    Height = 200
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 264
    ExplicitTop = 160
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
  object cxButton1: TcxButton
    Left = 24
    Top = 64
    Width = 201
    Height = 25
    Caption = 'Listele'
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxLabel1: TcxLabel
    Left = 291
    Top = 24
    Caption = 'SQL MIN Kullan'#305'm'#305
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxButton2: TcxButton
    Left = 280
    Top = 64
    Width = 177
    Height = 25
    Caption = 'Listele'
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object cxLabel2: TcxLabel
    Left = 507
    Top = 24
    Caption = 'SQL COUNT Kullan'#305'm'#305
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxButton3: TcxButton
    Left = 496
    Top = 64
    Width = 201
    Height = 25
    Caption = 'Listele'
    TabOrder = 6
    OnClick = cxButton3Click
  end
  object MyDataSource1: TMyDataSource
    DataSet = DataModule1.MyQuery1
    Left = 576
    Top = 144
  end
end
