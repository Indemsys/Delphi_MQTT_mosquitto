unit VisualWidgetsTbl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPropertiesStore, cxDropDownEdit;

type
  TfrmVisWidgetsTbl = class(TForm)
    cxg_VisualWidgets: TcxGrid;
    cxg_VisualWidgetsDBTableView1: TcxGridDBTableView;
    cxg_VisualWidgetsLevel1: TcxGridLevel;
    cxg_VisualWidgetsDBTableView1VarName: TcxGridDBColumn;
    cxg_VisualWidgetsDBTableView1WidgetClass: TcxGridDBColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    cxg_VisualWidgetsDBTableView1DockPanelName: TcxGridDBColumn;
    cxg_VisualWidgetsDBTableView1VarCaption: TcxGridDBColumn;
    cxg_VisualWidgetsDBTableView1MaxVal: TcxGridDBColumn;
    cxg_VisualWidgetsDBTableView1MinVal: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVisWidgetsTbl: TfrmVisWidgetsTbl;

implementation

{$R *.dfm}

uses MainDataModule;


procedure TfrmVisWidgetsTbl.FormCreate(Sender: TObject);
begin
  dm.RestoreFormProperties(Self);
end;

procedure TfrmVisWidgetsTbl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmVisWidgetsTbl.FormDestroy(Sender: TObject);
begin
  dm.SaveFormProperties(Self);
end;

end.
