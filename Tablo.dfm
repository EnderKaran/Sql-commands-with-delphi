object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'SQL Sorgular'#305
  ClientHeight = 188
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 16
    Top = 16
    Width = 97
    Height = 41
    Caption = 'Select Komutu'
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 128
    Top = 16
    Width = 97
    Height = 41
    Caption = 'Where Komutu'
    TabOrder = 1
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 240
    Top = 16
    Width = 113
    Height = 41
    Caption = 'ORDER BY Komutu'
    TabOrder = 2
    OnClick = cxButton3Click
  end
  object cxButton4: TcxButton
    Left = 16
    Top = 80
    Width = 97
    Height = 41
    Caption = 'SQL IN Komutu'
    TabOrder = 3
    OnClick = cxButton4Click
  end
  object cxButton5: TcxButton
    Left = 128
    Top = 80
    Width = 97
    Height = 41
    Caption = 'SQL COUNT Komutu'
    TabOrder = 4
    OnClick = cxButton5Click
  end
  object cxButton7: TcxButton
    Left = 240
    Top = 155
    Width = 75
    Height = 25
    Caption = #199#305'k'#305#351
    TabOrder = 5
    OnClick = cxButton7Click
  end
end
