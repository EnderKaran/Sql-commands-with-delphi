unit selectkomutu;

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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  Menus, cxButtons,datamodule, DBAccess, MyAccess, cxContainer, cxLabel;

type
  TForm2 = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Label1: TLabel;
    cxButton1: TcxButton;
    MyDataSource1: TMyDataSource;
    cxLabel1: TcxLabel;
    cxButton2: TcxButton;
    cxGrid1DBTableView1No: TcxGridDBColumn;
    cxGrid1DBTableView1Ad: TcxGridDBColumn;
    cxGrid1DBTableView1Soyad: TcxGridDBColumn;
    cxGrid1DBTableView1Sehir: TcxGridDBColumn;
    cxGrid1DBTableView1Numara: TcxGridDBColumn;
    cxGrid1DBTableView1cinsiyet: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.cxButton1Click(Sender: TObject);
begin
 with DataModule1.MyConnection1 do
     begin
       with DataModule1.MyQuery1 do
        begin
            DataModule1.MyQuery1.Close;
            DataModule1.MyQuery1.SQL.Clear;
            DataModule1.MyQuery1.SQL.Add('SELECT  no,ad,soyad,Sehir ,Numara,cinsiyet FROM veri');
            DataModule1.MyQuery1.Open;
        end;
 end;
end;

procedure TForm2.cxButton2Click(Sender: TObject);
begin
   with DataModule1.MyConnection1 do
     begin
       with DataModule1.MyQuery1 do
        begin
            DataModule1.MyQuery1.Close;
            DataModule1.MyQuery1.SQL.Clear;
            DataModule1.MyQuery1.SQL.Add('SELECT DISTINCT no,sehir FROM veri;');
            DataModule1.MyQuery1.Open;
        end;
 end;
end;

end.
