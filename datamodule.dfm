object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 202
  Width = 270
  object MyConnection1: TMyConnection
    Database = 'tablo'
    Username = 'root'
    Password = 'ender16'
    Server = 'localhost'
    Connected = True
    Left = 24
    Top = 24
  end
  object MyQuery1: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT * FROM veri')
    Active = True
    Left = 96
    Top = 24
    object MyQuery1No: TIntegerField
      FieldName = 'No'
      Origin = 'veri.No'
    end
    object MyQuery1Ad: TStringField
      FieldName = 'Ad'
      Origin = 'veri.Ad'
      Size = 50
    end
    object MyQuery1Soyad: TStringField
      FieldName = 'Soyad'
      Origin = 'veri.Soyad'
      Size = 50
    end
    object MyQuery1Sehir: TStringField
      FieldName = 'Sehir'
      Origin = 'veri.Sehir'
      Size = 50
    end
    object MyQuery1Numara: TIntegerField
      FieldName = 'Numara'
      Origin = 'veri.Numara'
    end
    object MyQuery1cinsiyet: TStringField
      FieldName = 'cinsiyet'
      Origin = 'veri.cinsiyet'
      Size = 50
    end
  end
end
