unit MainDataModule;

interface

uses
  Windows, System.Classes, System.SysUtils,
  Winapi.Messages, Vcl.Dialogs, System.UITypes, System.StrUtils,
  Vcl.Forms,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxClasses, cxPropertiesStore, cxStorage,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, dxBar,
  FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageBin, dxmdaset, Vcl.ExtCtrls,
  dxDockControl, dxDockPanel, dxSkinsdxDockControlPainter,
  CodeSiteLogging;

const
  INI = 'Ini.json';
  CLIENTS = 'Clients.json';
  RECEIVED = 'Received.json';
  SENDED = 'Sended.json';
  PROPS = 'Props.json';
  AUTOPUB = 'Autopub.json';
  SUBLIST = 'SubList.json';
  VARSTBL = 'Variables.json';

type
  Tdm = class(TDataModule)
    ds_tbl_Settings: TDataSource;
    tblSettings: TFDMemTable;
    tblSettings_main_form_props: TBlobField;
    tblSettings_du_props: TBlobField;
    tblSettingsAutoConnect: TBooleanField;
    cxPropertiesStore: TcxPropertiesStore;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    tblSendedMessages: TFDMemTable;
    ds_ReceivedMessages: TDataSource;
    ds_SendedMessages: TDataSource;
    tblSendedMessagesTime: TDateTimeField;
    tblReceivedMessages: TFDMemTable;
    tblReceivedMessagesTime: TDateTimeField;
    tblConnectionProfiles: TFDMemTable;
    ds_ConnectionProfiles: TDataSource;
    tblConnectionProfilesHostName: TStringField;
    tblConnectionProfilesHostPort: TIntegerField;
    tblConnectionProfilesKeepAlive: TIntegerField;
    tblConnectionProfilesUserID: TStringField;
    tblConnectionProfilesCleanSession: TBooleanField;
    tblConnectionProfilesUserName: TStringField;
    tblConnectionProfilesPassword: TStringField;
    tblConnectionProfilesWillRetain: TBooleanField;
    tblConnectionProfilesWillQoS: TStringField;
    tblSendedMessagesTopic: TWideStringField;
    tblSendedMessagesPayload: TWideMemoField;
    tblReceivedMessagesTopic: TWideStringField;
    tblReceivedMessagesPayload: TWideMemoField;
    tblSettingsPubPayload: TWideMemoField;
    tblConnectionProfilesWillTopic: TWideStringField;
    tblConnectionProfilesWillPayload: TWideStringField;
    tblAppProps: TFDMemTable;
    tblAppPropsName: TStringField;
    tblAppPropsProps: TBlobField;
    tblReceivedMessagesmid: TIntegerField;
    tblReceivedMessagesQoS: TIntegerField;
    tblReceivedMessagesRetain: TBooleanField;
    tblSettingsPubTopicMRU: TWideMemoField;
    tblSettingsSubTopicMRU: TWideMemoField;
    tblPeriodicalSending: TFDMemTable;
    tblPeriodicalSendingTopic: TWideStringField;
    tblPeriodicalSendingPayload: TWideMemoField;
    tblPeriodicalSendingQoS: TIntegerField;
    tblPeriodicalSendingPeriodicity: TIntegerField;
    tblPeriodicalSendingFuncType: TStringField;
    tblPeriodicalSendingEnabled: TBooleanField;
    tblPeriodicalSendingMin: TStringField;
    tblPeriodicalSendingMax: TStringField;
    ds_PeriodicalSending: TDataSource;
    tblSendedMessagesQoS: TIntegerField;
    tblSendedMessagesRetain: TBooleanField;
    tblPeriodicalSendingRetain: TBooleanField;
    tblPeriodicalSendingFuncPeriod: TIntegerField;
    tblPeriodicalSendingFuncOffs: TIntegerField;
    tblSubscriptions: TFDMemTable;
    ds_Subscriptions: TDataSource;
    tblSubscriptionsTopic: TWideStringField;
    tblSubscriptionsQoS: TIntegerField;
    tblSubscriptionsSubscribe: TBooleanField;
    tblVariables: TFDMemTable;
    tblVariablesVarName: TWideStringField;
    tblVariablesWidgetClass: TStringField;
    ds_Variables: TDataSource;
    tblVariablesDockPanelName: TStringField;
    tblVariablesPanelProps: TBlobField;
    tblVariablesVarCaption: TWideStringField;
    tblVariablesMaxVal: TFloatField;
    tblVariablesMinVal: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    app_path: string;
    procedure OpenTable(tbl: TFDMemTable; filename: string);
  public
    procedure SaveFormProperties(frm: TForm);
    procedure RestoreFormProperties(frm: TForm);
  end;

var
  dm: Tdm;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure Tdm.DataModuleCreate(Sender: TObject);
var
  strm: TMemoryStream;
begin
  ReportMemoryLeaksOnShutdown := True;

  app_path := ExtractFilePath(Application.ExeName);

  OpenTable(tblSettings, INI);
  OpenTable(tblConnectionProfiles, CLIENTS);
  OpenTable(tblSendedMessages, SENDED);
  OpenTable(tblReceivedMessages, RECEIVED);
  OpenTable(tblAppProps, PROPS);
  OpenTable(tblPeriodicalSending, AUTOPUB);
  OpenTable(tblSubscriptions, SUBLIST);
  OpenTable(tblVariables, VARSTBL);

  strm := TMemoryStream.Create;
  try
    tblSettings_du_props.SaveToStream(strm);
    strm.Position := 0;
    cxPropertiesStore.StorageType := stStream;
    cxPropertiesStore.StorageStream := strm;
    cxPropertiesStore.RestoreFrom;
  finally
    strm.Free;
  end;

end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure Tdm.RestoreFormProperties(frm: TForm);
var
  i: Integer;
  comp: TComponent;
  stor: TcxPropertiesStore;
  tview: TcxGridDBTableView;
  dockman: TdxDockingManager;
  fldn: string;
  ss: TStringStream;
  tag: Integer;

begin
  ss := TStringStream.Create;
  try
    tag := frm.tag;
    // Ищем на форме компонент типа TcxPropertiesStore и выполяем ему операцию восстановления
    for i := 0 to frm.ComponentCount - 1 do
    begin
      comp := frm.Components[i];
      fldn := frm.Name + comp.Name;

      if comp is TcxPropertiesStore then
      begin
        stor := TcxPropertiesStore(comp);

        // Таблица tblAppProps здесь содержит строки с именем компонента на форме и его  потоком параметров
        if tblAppProps.Locate('Name', fldn, []) = True then
        begin
          ss.Clear;
          tblAppPropsProps.SaveToStream(ss);
          ss.Position := 0;
          stor.StorageStream := ss;
          stor.RestoreFrom; // Восстанавливаем все свойства компонентов формы собранные в  TcxPropertiesStore
        end;
      end;
    end;

    // Если не совпадает тэг формы и сохраненный тэг, то свойства таблиц  TcxGridDBTableView в форме не восстанавливаются
    // Это нужно для того чтобы корректно отображались новые версии таблиц с измененной структурой столбцов
    if frm.tag <> tag then
    begin
      frm.tag := tag;
    end
    else
    begin
      // Ищем на форме компоненты типа TcxGridDBTableView и выполяем ему операцию восстановления
      for i := 0 to frm.ComponentCount - 1 do
      begin
        comp := frm.Components[i];
        fldn := frm.Name + comp.Name;

        if comp is TcxGridDBTableView then
        begin
          tview := TcxGridDBTableView(comp);
          if tblAppProps.Locate('Name', fldn, []) = True then
          begin
            ss.Clear;
            tblAppPropsProps.SaveToStream(ss);
            ss.Position := 0;
            tview.RestoreFromStream(ss);
          end;
        end;
      end;
    end;

    for i := 0 to frm.ComponentCount - 1 do
    begin
      comp := frm.Components[i];
      fldn := frm.Name + comp.Name;
      if comp is TdxDockingManager then
      begin
        dockman := TdxDockingManager(comp);
        // Таблица tblAppProps здесь содержит строки с именем компонента на форме и его  потоком параметров
        if tblAppProps.Locate('Name', fldn, []) = True then
        begin
          ss.Clear;
          tblAppPropsProps.SaveToStream(ss);
          ss.Position :=0;
          dockman.LoadLayoutFromStream (ss);
        end;
      end;
    end;

  finally
    ss.Free;
  end;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure Tdm.OpenTable(tbl: TFDMemTable; filename: string);
begin
  if FileExists(app_path + filename, False) = True then
    try
      tbl.LoadFromFile(app_path + filename);
    except
      tbl.Open;
    end
  else
    tbl.Open;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure Tdm.SaveFormProperties(frm: TForm);
var
  i: Integer;
  comp: TComponent;
  stor: TcxPropertiesStore;
  tview: TcxGridDBTableView;
  dockman: TdxDockingManager;
  fldn: string;
  ss: TStringStream;

begin
  // Ищем на форме компонент типа TcxPropertiesStore и выполяем ему операцию сохранения

  ss := TStringStream.Create;
  try

    for i := 0 to frm.ComponentCount - 1 do
    begin
      comp := frm.Components[i];

      if (comp is TcxPropertiesStore) or (comp is TcxGridDBTableView) or (comp is TdxDockingManager) then
      begin
        fldn := frm.Name + comp.Name;

        if tblAppProps.Active = False then
          tblAppProps.Active := True;

        if tblAppProps.Locate('Name', fldn, []) = False then
        begin
          tblAppProps.Append;
          tblAppProps.FieldByName('Name').Value := fldn;
          tblAppProps.Post;
        end;

        if comp is TcxPropertiesStore then
        begin
          stor := TcxPropertiesStore(comp);
          // Ищем поле в таблице dxMemData
          ss.Clear;
          stor.StorageStream := ss;
          stor.StoreTo;
          tblAppProps.Edit;
          tblAppPropsProps.LoadFromStream(ss);
          tblAppProps.Post;

        end
        else if comp is TcxGridDBTableView then
        begin
          tview := TcxGridDBTableView(comp);
          ss.Clear;
          tview.StoreToStream(ss);
          tblAppProps.Edit;
          tblAppPropsProps.LoadFromStream(ss);
          tblAppProps.Post;
        end
        else if comp is TdxDockingManager then
        begin
          dockman := TdxDockingManager(comp);
          ss.Clear;
          dockman.SaveLayoutToStream(ss);
          tblAppProps.Edit;
          tblAppPropsProps.LoadFromStream(ss);
          tblAppProps.Post;
        end;
      end;
    end;
  finally
    ss.Free;
  end;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure Tdm.DataModuleDestroy(Sender: TObject);
var
  strm: TMemoryStream;
begin
  strm := TMemoryStream.Create;
  try
    cxPropertiesStore.StorageStream := strm;
    cxPropertiesStore.StoreTo;
    tblSettings.Edit;
    tblSettings_du_props.LoadFromStream(strm);
    tblSettings.Post;
  finally
    strm.Free;
  end;

  tblSettings.SaveToFile(app_path + INI);
  tblConnectionProfiles.SaveToFile(app_path + CLIENTS);
  tblReceivedMessages.SaveToFile(app_path + RECEIVED);
  tblSendedMessages.SaveToFile(app_path + SENDED);
  tblPeriodicalSending.SaveToFile(app_path + AUTOPUB);
  tblSubscriptions.SaveToFile(app_path + SUBLIST);
  tblAppProps.SaveToFile(app_path + PROPS);
  tblVariables.SaveToFile(app_path + VARSTBL);

end;

end.
