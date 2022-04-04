unit datamodule;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS;

type
  TDataModule1 = class(TDataModule)
    MyConnection1: TMyConnection;
    MyQuery1: TMyQuery;
    MyQuery1No: TIntegerField;
    MyQuery1Ad: TStringField;
    MyQuery1Soyad: TStringField;
    MyQuery1Sehir: TStringField;
    MyQuery1Numara: TIntegerField;
    MyQuery1cinsiyet: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
