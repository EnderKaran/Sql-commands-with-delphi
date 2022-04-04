unit sqlcount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, Menus, StdCtrls, cxButtons,
  DBAccess, MyAccess, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,datamodule;

type
  TForm6 = class(TForm)
    cxLabel3: TcxLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    MyDataSource1: TMyDataSource;
    cxButton1: TcxButton;
    cxGrid1DBTableView1No: TcxGridDBColumn;
    cxGrid1DBTableView1Ad: TcxGridDBColumn;
    cxGrid1DBTableView1Soyad: TcxGridDBColumn;
    cxGrid1DBTableView1Sehir: TcxGridDBColumn;
    cxGrid1DBTableView1Numara: TcxGridDBColumn;
    cxGrid1DBTableView1cinsiyet: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxButton2: TcxButton;
    cxLabel2: TcxLabel;
    cxButton3: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.cxButton1Click(Sender: TObject);
begin
   with DataModule1.MyConnection1 do
     begin
       with DataModule1.MyQuery1 do
        begin
            DataModule1.MyQuery1.Close;
            DataModule1.MyQuery1.SQL.Clear;
            DataModule1.MyQuery1.SQL.Add('Select MAX(Numara) AS EnyuksekPuan FROM veri');

            DataModule1.MyQuery1.Open;
        end;
 end;
end;

procedure TForm6.cxButton2Click(Sender: TObject);
begin
   with DataModule1.MyConnection1 do
     begin
       with DataModule1.MyQuery1 do
        begin
            DataModule1.MyQuery1.Close;
            DataModule1.MyQuery1.SQL.Clear;
            DataModule1.MyQuery1.SQL.Add('Select MIN(Numara) AS EndusukPuan FROM veri');

            DataModule1.MyQuery1.Open;
        end;
 end;
end;

procedure TForm6.cxButton3Click(Sender: TObject);
begin
   with DataModule1.MyConnection1 do
     begin
       with DataModule1.MyQuery1 do
        begin
            DataModule1.MyQuery1.Close;
            DataModule1.MyQuery1.SQL.Clear;
            DataModule1.MyQuery1.SQL.Add('SELECT COUNT(*) FROM veri;');

            DataModule1.MyQuery1.Open;
        end;
 end;
end;

end.
