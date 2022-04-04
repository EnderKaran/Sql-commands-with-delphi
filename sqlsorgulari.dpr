program sqlsorgulari;

uses
  Forms,
  Tablo in 'Tablo.pas' {Form1},
  selectkomutu in 'selectkomutu.pas' {Form2},
  datamodule in 'datamodule.pas' {DataModule1: TDataModule},
  wherekomutu in 'wherekomutu.pas' {Form3},
  orderbykomutu in 'orderbykomutu.pas' {Form4},
  inkomutu in 'inkomutu.pas' {Form5},
  sqlcount in 'sqlcount.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
