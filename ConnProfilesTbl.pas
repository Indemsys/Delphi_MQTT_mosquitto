unit ConnProfilesTbl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPropertiesStore;

type
  TfrmConnProfilesTbl = class(TForm)
    cxg_ConnProfilesDBTableView1: TcxGridDBTableView;
    cxg_ConnProfilesLevel1: TcxGridLevel;
    cxg_ConnProfiles: TcxGrid;
    cxg_ConnProfilesDBTableView1HostName: TcxGridDBColumn;
    cxg_ConnProfilesDBTableView1HostPort: TcxGridDBColumn;
    cxg_ConnProfilesDBTableView1KeepAlive: TcxGridDBColumn;
    cxg_ConnProfilesDBTableView1UserID: TcxGridDBColumn;
    cxg_ConnProfilesDBTableView1CleanSession: TcxGridDBColumn;
    cxg_ConnProfilesDBTableView1WillTopic: TcxGridDBColumn;
    cxg_ConnProfilesDBTableView1WillPayload: TcxGridDBColumn;
    cxg_ConnProfilesDBTableView1WillRetain: TcxGridDBColumn;
    cxg_ConnProfilesDBTableView1WillQoS: TcxGridDBColumn;
    cxg_ConnProfilesDBTableView1UserName: TcxGridDBColumn;
    cxg_ConnProfilesDBTableView1Password: TcxGridDBColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConnProfilesTbl: TfrmConnProfilesTbl;

implementation

{$R *.dfm}

uses MainDataModule;


procedure TfrmConnProfilesTbl.FormCreate(Sender: TObject);
begin
  dm.RestoreFormProperties(Self);
end;

procedure TfrmConnProfilesTbl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TfrmConnProfilesTbl.FormDestroy(Sender: TObject);
begin
  dm.SaveFormProperties(Self);
end;

end.
