unit orderbykomutu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxLabel, Menus, StdCtrls, cxButtons,datamodule, DBAccess,
  MyAccess;

type
  TForm4 = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    MyDataSource1: TMyDataSource;
    cxGrid1DBTableView1No: TcxGridDBColumn;
    cxGrid1DBTableView1Ad: TcxGridDBColumn;
    cxGrid1DBTableView1Soyad: TcxGridDBColumn;
    cxGrid1DBTableView1Sehir: TcxGridDBColumn;
    cxGrid1DBTableView1Numara: TcxGridDBColumn;
    cxGrid1DBTableView1cinsiyet: TcxGridDBColumn;
    cxLabel2: TcxLabel;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.cxButton1Click(Sender: TObject);
begin
 with DataModule1.MyConnection1 do
     begin
       with DataModule1.MyQuery1 do
        begin
            DataModule1.MyQuery1.Close;
            DataModule1.MyQuery1.SQL.Clear;
            DataModule1.MyQuery1.SQL.Add('SELECT * FROM veri ORDER BY ad');
            DataModule1.MyQuery1.Open;
        end;
 end;
end;

procedure TForm4.cxButton2Click(Sender: TObject);
begin
  with DataModule1.MyConnection1 do
     begin
       with DataModule1.MyQuery1 do
        begin
            DataModule1.MyQuery1.Close;
            DataModule1.MyQuery1.SQL.Clear;
            DataModule1.MyQuery1.SQL.Add('SELECT * FROM veri WHERE Ad LIKE "e%"');
            DataModule1.MyQuery1.Open;
        end;
 end;
end;

end.
