unit DataWidgets;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, StdCtrls, System.Contnrs,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxGaugeLinearScale, dxGaugeCircularScale,
  dxGaugeQuantitativeScale, dxGaugeDigitalScale, cxClasses, dxGaugeCustomScale, dxGaugeControl, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControlAdapters, VclTee.TeeGDIPlus, VclTee.TeEngine,
  VclTee.Series, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart, dxLayoutLookAndFeels, dxLayoutControl, cxStyles, cxEdit, cxInplaceContainer, cxVGrid, cxOI, cxPC, dxDockControl, dxDockPanel,
  dxSkinsdxDockControlPainter, cxPropertiesStore, VclTee.TeeEdit, Vcl.Menus,
  CodeSiteLogging, System.ImageList, Vcl.ImgList,
  Main;

type
  TfrmWidgets = class(TForm)
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxDockSite1: TdxDockSite;
    dxDockingManager: TdxDockingManager;
    dxpd_Chart: TdxDockPanel;
    Chart1: TChart;
    Series1: TFastLineSeries;
    dxpd_CircularScale: TdxDockPanel;
    dxGaugeControl_CircularScale: TdxGaugeControl;
    dxGaugeControl1CircularScale1: TdxGaugeCircularScale;
    dxpd_HalfScale: TdxDockPanel;
    dxGaugeControl_CircularHalfScale: TdxGaugeControl;
    dxGaugeControl2CircularHalfScale1: TdxGaugeCircularHalfScale;
    dxpd_QLeftfScale: TdxDockPanel;
    dxGaugeControl_CircularQuarterLeftScale: TdxGaugeControl;
    dxGaugeControl3CircularQuarterLeftScale1: TdxGaugeCircularQuarterLeftScale;
    dxpd_Digital: TdxDockPanel;
    dxGaugeControl_DigitalScale: TdxGaugeControl;
    dxGaugeControl4DigitalScale1: TdxGaugeDigitalScale;
    dxpd_Linear: TdxDockPanel;
    dxGaugeControl_LinearScale: TdxGaugeControl;
    dxGaugeControl5LinearScale1: TdxGaugeLinearScale;
    cxPropertiesStore1: TcxPropertiesStore;
    pmenu_Chart: TPopupMenu;
    ChartEditor1: TChartEditor;
    menu_item_ChartEditor: TMenuItem;
    cxImgl_small: TcxImageList;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dxLayoutDockSite4: TdxLayoutDockSite;
    dxLayoutDockSite5: TdxLayoutDockSite;
    dxLayoutDockSite6: TdxLayoutDockSite;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure menu_item_ChartEditorClick(Sender: TObject);
  private
    F_panel_index: integer;
    F_widg_list: TStringList;
    procedure CreateWidgets;
    procedure HideReservedDockPanels;
    procedure FillSeries(Series: TFastLineSeries);
    // Chart CircularScale HalfScale QLeftfScale Digital Linear
    procedure CreateChartPanel;
    function CreatePanel: TdxDockPanel;
    procedure CreateScalePanel(srcpanel: TdxGaugeControl);
    function Generate_name_from_guid: string;
  public
    procedure AcceptMessage(msg: T_received_MQTT_msg);
  end;

var
  frmWidgets: TfrmWidgets;

implementation

{$R *.dfm}

uses MainDataModule, JSONparser;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmWidgets.FormCreate(Sender: TObject);
begin
  F_widg_list := TStringList.Create;
  FreeNotification(Owner);
  F_panel_index := 0;
  HideReservedDockPanels;
  dm.RestoreFormProperties(Self);

  CreateWidgets;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
function TfrmWidgets.Generate_name_from_guid: string;
var
  guid: TGUID;
begin
  CreateGUID(guid);
  Result := Format('N%0.8X%0.4X%0.4X%0.2X%0.2X%0.2X%0.2X%0.2X%0.2X%0.2X%0.2X', [guid.D1, guid.D2, guid.D3, guid.D4[0], guid.D4[1], guid.D4[2], guid.D4[3], guid.D4[4], guid.D4[5], guid.D4[6],
    guid.D4[7]]);
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
function TfrmWidgets.CreatePanel: TdxDockPanel;
var
  APanel: TdxDockPanel;
  i: integer;
  dock_pan_name: string;
  ss: TStringStream;

begin
  ss := TStringStream.Create;
  try
    with dm.tblVariables do
    begin
      // Сначала попытаемся найти панель с именем в существующей структуре панелей
      dock_pan_name := FieldByName('DockPanelName').AsString;

      if dock_pan_name <> '' then
        with dxDockingController do
        begin
          for i := 0 to DockControlCount - 1 do
          begin
            if DockControls[i] is TdxDockPanel then
            begin
              APanel := TdxDockPanel(DockControls[i]);
              if APanel.Name = dock_pan_name then
              begin
                APanel.Caption := FieldByName('VarCaption').AsString;
                Result := APanel;
                Exit;
                // begin
                // // Восстанавливаем содержимое панели из данных в таблице
                // dm.tblVariablesPanelProps.SaveToStream(ss);
                // ss.Position := 0;
                //
                //
                // Abort;
                // end;
              end;
            end;
          end;
        end;

      APanel := TdxDockPanel.Create(Self);
      APanel.Parent := dxDockSite1;

      APanel.Name := Generate_name_from_guid;
      APanel.Caption := FieldByName('VarCaption').AsString;
      APanel.Visible := True;
      Edit;
      FieldByName('DockPanelName').Value := APanel.Name;
      Post;

      // ALastIndex := dxDockSite1.Children[1].ChildCount;
      // APanel.DockTo(dxDockSite1.Children[1], dtClient, ALastIndex + 1);
      // APanel.DockTo(dxDockSite1, dtBottom, FIndex);
      APanel.MakeFloating;
      Result := APanel;
      // CodeSite.Send('Panel: Caption=' +APanel.Caption+ ',  Dock index=' + IntToStr(APanel.DockIndex)+ ', Dock Level=' + IntToStr(APanel.DockLevel) );
    end;

  finally
    ss.Free;
  end;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmWidgets.CreateChartPanel;
var
  APanel: TdxDockPanel;
  AChart: TChart;
  ASeries: TFastLineSeries;
begin
  APanel := CreatePanel;
  AChart := TChart.Create(Self);
  AChart.Parent := APanel;
  AChart.Assign(Chart1);
  AChart.Align := alClient;
  AChart.PopupMenu := pmenu_Chart;
  ASeries := TFastLineSeries.Create(Self);
  ASeries.ParentChart := AChart;
  ASeries.Assign(Series1);
  //FillSeries(ASeries);
  F_widg_list.AddObject(dm.tblVariablesVarName.AsString, ASeries);
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmWidgets.CreateScalePanel(srcpanel: TdxGaugeControl);
var
  APanel: TdxDockPanel;
  AGauge: TdxGaugeControl;
  cscl: TdxGaugeCircularScale;
  chscl: TdxGaugeCircularHalfScale;
  clscl: TdxGaugeLinearScale;
  cqlscl: TdxGaugeCircularQuarterLeftScale;
begin
  APanel := CreatePanel;
  AGauge := TdxGaugeControl.Create(Self);
  AGauge.Parent := APanel;
  AGauge.Assign(srcpanel);
  AGauge.Align := alClient;
  if not dm.tblVariablesMaxVal.IsNull then
  begin
    if AGauge.Scales[0].ClassName = 'TdxGaugeCircularScale' then
    begin
      cscl := TdxGaugeCircularScale(AGauge.Scales[0]);
      cscl.OptionsView.MaxValue := dm.tblVariablesMaxVal.AsSingle;
    end
    else if AGauge.Scales[0].ClassName = 'TdxGaugeCircularHalfScale' then
    begin
      chscl := TdxGaugeCircularHalfScale(AGauge.Scales[0]);
      chscl.OptionsView.MaxValue := dm.tblVariablesMaxVal.AsSingle;
    end
    else if AGauge.Scales[0].ClassName = 'TdxGaugeLinearScale' then
    begin
      clscl := TdxGaugeLinearScale(AGauge.Scales[0]);
      clscl.OptionsView.MaxValue := dm.tblVariablesMaxVal.AsSingle;
    end
    else if AGauge.Scales[0].ClassName = 'TdxGaugeCircularQuarterLeftScale' then
    begin
      cqlscl := TdxGaugeCircularQuarterLeftScale(AGauge.Scales[0]);
      cqlscl.OptionsView.MaxValue := dm.tblVariablesMaxVal.AsSingle;
    end;
  end;

  if not dm.tblVariablesMinVal.IsNull then
  begin
    if AGauge.Scales[0].ClassName = 'TdxGaugeCircularScale' then
    begin
      cscl := TdxGaugeCircularScale(AGauge.Scales[0]);
      cscl.OptionsView.MinValue := dm.tblVariablesMinVal.AsSingle;
    end
    else if AGauge.Scales[0].ClassName = 'TdxGaugeCircularHalfScale' then
    begin
      chscl := TdxGaugeCircularHalfScale(AGauge.Scales[0]);
      chscl.OptionsView.MinValue := dm.tblVariablesMinVal.AsSingle;
    end
    else if AGauge.Scales[0].ClassName = 'TdxGaugeLinearScale' then
    begin
      clscl := TdxGaugeLinearScale(AGauge.Scales[0]);
      clscl.OptionsView.MinValue := dm.tblVariablesMinVal.AsSingle;
    end
    else if AGauge.Scales[0].ClassName = 'TdxGaugeCircularQuarterLeftScale' then
    begin
      cqlscl := TdxGaugeCircularQuarterLeftScale(AGauge.Scales[0]);
      cqlscl.OptionsView.MinValue := dm.tblVariablesMinVal.AsSingle;
    end;
  end;

  F_widg_list.AddObject(dm.tblVariablesVarName.AsString, AGauge.Scales[0]);
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmWidgets.CreateWidgets;
var
  class_name: string;
begin
  // Создаем виджеты
  with dm.tblVariables do
  begin
    First;
    while not Eof do
    begin
      class_name := FieldByName('WidgetClass').AsString;
      // Chart CircularScale HalfScale QLeftfScale Digital Linear
      if class_name = 'Chart' then
        CreateChartPanel
      else if class_name = 'CircularScale' then
        CreateScalePanel(dxGaugeControl_CircularScale)
      else if class_name = 'HalfScale' then
        CreateScalePanel(dxGaugeControl_CircularHalfScale)
      else if class_name = 'QLeftfScale' then
        CreateScalePanel(dxGaugeControl_CircularQuarterLeftScale)
      else if class_name = 'Digital' then
        CreateScalePanel(dxGaugeControl_DigitalScale)
      else if class_name = 'Linear' then
        CreateScalePanel(dxGaugeControl_LinearScale);
      Next;
    end;
  end;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmWidgets.HideReservedDockPanels;
begin
  // for i := 0 to Self.ComponentCount - 1 do
  // begin
  // comp := Self.Components[i];
  // if (comp is TdxDockPanel) then
  // begin
  // TdxDockPanel(comp).Visible := False;
  // end;
  // end;

  dxpd_Chart.Visible := False;
  dxpd_Digital.Visible := False;
  dxpd_CircularScale.Visible := False;
  dxpd_HalfScale.Visible := False;
  dxpd_Linear.Visible := False;
  dxpd_QLeftfScale.Visible := False;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmWidgets.menu_item_ChartEditorClick(Sender: TObject);
var
  Chart: TChart;
begin
  // CodeSite.Send('menu_item_ChartEditorClick',pmenu_Chart.PopupComponent);
  if pmenu_Chart.PopupComponent is TChart then
  begin
    Chart := TChart(pmenu_Chart.PopupComponent);
    ChartEditor1.Chart := Chart;
    ChartEditor1.Execute;
  end;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmWidgets.FillSeries(Series: TFastLineSeries);
var
  i: integer;
begin
  for i := 0 to 100 do
  begin
    Series.AddXY(i, Random);
  end;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmWidgets.AcceptMessage(msg: T_received_MQTT_msg);
var
  list: TStringList;
  vname: string;
  i: integer;
  indx: integer;
  obj: TObject;
begin
  list := ParseJSON(msg.payload);
  if list.Count > 0 then
  begin
    for i := 0 to F_widg_list.Count - 1 do
    begin
      vname := F_widg_list[i];
      indx := list.IndexOfName(vname);
      if indx >= 0 then
      begin
        // Записываем переменную в визуальный компонент
        obj := F_widg_list.Objects[i];
        if Assigned(obj) then
        begin
          if obj.ClassName = 'TdxGaugeCircularScale' then
          begin
            TdxGaugeCircularScale(obj).Value := StrToFloat(list.ValueFromIndex[indx]);
          end
          else if obj.ClassName = 'TdxGaugeCircularHalfScale' then
          begin
            TdxGaugeCircularHalfScale(obj).Value := StrToFloat(list.ValueFromIndex[indx]);
          end
          else if obj.ClassName = 'TdxGaugeLinearScale' then
          begin
            TdxGaugeLinearScale(obj).Value := StrToFloat(list.ValueFromIndex[indx]);
          end
          else if obj.ClassName = 'TdxGaugeCircularQuarterLeftScale' then
          begin
            TdxGaugeCircularQuarterLeftScale(obj).Value := StrToFloat(list.ValueFromIndex[indx]);
          end
          else if obj.ClassName = 'TdxGaugeDigitalScale' then
          begin
            TdxGaugeDigitalScale(obj).Value := list.ValueFromIndex[indx];
          end
          else if obj.ClassName = 'TFastLineSeries' then
          begin
            TFastLineSeries(obj).AddY(StrToFloat(list.ValueFromIndex[indx]));
          end;
        end;
      end;
    end;
  end;

end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmWidgets.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmWidgets.FormDestroy(Sender: TObject);
begin
  F_widg_list.Free;
  dm.SaveFormProperties(Self);
end;

end.
