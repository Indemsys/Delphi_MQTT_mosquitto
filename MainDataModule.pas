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
  FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageBin, dxmdaset;

const
  INI = 'Ini.json';
  CLIENTS = 'Clients.json';
  RECEIVED = 'Received.json';
  SENDED = 'Sended.json';
  PROPS = 'Props.json';

type
  Tdm = class(TDataModule)
    ds_tbl_Settings: TDataSource;
    tbl_Settings: TFDMemTable;
    tbl_Settings_main_form_props: TBlobField;
    tbl_Settings_du_props: TBlobField;
    tbl_SettingsAutoConnect: TBooleanField;
    cxPropertiesStore: TcxPropertiesStore;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    fdmtbl_SendedMessages: TFDMemTable;
    ds_ReceivedMessages: TDataSource;
    ds_SendedMessages: TDataSource;
    fdmtbl_SendedMessagesTime: TDateTimeField;
    fdmtbl_ReceivedMessages: TFDMemTable;
    fdmtbl_ReceivedMessagesTime: TDateTimeField;
    fdmtbl_ConnectionProfiles: TFDMemTable;
    ds_ConnectionProfiles: TDataSource;
    fdmtbl_ConnectionProfilesHostName: TStringField;
    fdmtbl_ConnectionProfilesHostPort: TIntegerField;
    fdmtbl_ConnectionProfilesKeepAlive: TIntegerField;
    fdmtbl_ConnectionProfilesUserID: TStringField;
    fdmtbl_ConnectionProfilesCleanSession: TBooleanField;
    fdmtbl_ConnectionProfilesUserName: TStringField;
    fdmtbl_ConnectionProfilesPassword: TStringField;
    fdmtbl_ConnectionProfilesWillRetain: TBooleanField;
    fdmtbl_ConnectionProfilesWillQoS: TStringField;
    fdmtbl_SendedMessagesTopic: TWideStringField;
    fdmtbl_SendedMessagesPayload: TWideMemoField;
    fdmtbl_ReceivedMessagesTopic: TWideStringField;
    fdmtbl_ReceivedMessagesPayload: TWideMemoField;
    tbl_SettingsPubPayload: TWideMemoField;
    fdmtbl_ConnectionProfilesWillTopic: TWideStringField;
    fdmtbl_ConnectionProfilesWillPayload: TWideStringField;
    tblAppProps: TFDMemTable;
    tblAppPropsName: TStringField;
    tblAppPropsProps: TBlobField;
    fdmtbl_ReceivedMessagesmid: TIntegerField;
    fdmtbl_ReceivedMessagesQoS: TIntegerField;
    fdmtbl_ReceivedMessagesRetain: TBooleanField;
    tbl_SettingsPubTopicMRU: TWideMemoField;
    tbl_SettingsSubTopicMRU: TWideMemoField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    app_path: string;
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
  app_path := ExtractFilePath(Application.ExeName);

  if FileExists(app_path + INI, False) = True then
    try
      tbl_Settings.LoadFromFile(app_path + INI)
    except
      tbl_Settings.Open
    end
  else
    tbl_Settings.Open;

  if FileExists(app_path + CLIENTS, False) = True then
    try
      fdmtbl_ConnectionProfiles.LoadFromFile(app_path + CLIENTS);
    finally
      fdmtbl_ConnectionProfiles.Open
    end
  else
    fdmtbl_ConnectionProfiles.Open;

  if FileExists(app_path + SENDED, False) = True then
    try
      fdmtbl_SendedMessages.LoadFromFile(app_path + SENDED);
    finally
      fdmtbl_SendedMessages.Open
    end
  else
    fdmtbl_SendedMessages.Open;

   if FileExists(app_path + RECEIVED, False) = True then
    try
      fdmtbl_ReceivedMessages.LoadFromFile(app_path + RECEIVED);
    finally
      fdmtbl_ReceivedMessages.Open
    end
  else
    fdmtbl_ReceivedMessages.Open;

   if FileExists(app_path + PROPS, False) = True then
    try
      tblAppProps.LoadFromFile(app_path + PROPS);
    finally
      tblAppProps.Open
    end
  else
    tblAppProps.Open;


  strm := TMemoryStream.Create;
  try
    tbl_Settings_du_props.SaveToStream(strm);
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
  fldn: string;
  ss: TStringStream;
  tag : Integer;

begin
  ss := TStringStream.Create;
  try
    tag := frm.Tag;
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
    if frm.Tag <> tag then
    begin
      frm.Tag := tag;
      Exit;
    end;


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

  finally
    ss.Free;
  end;
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
  fldn: string;
  ss: TStringStream;

begin
  // Ищем на форме компонент типа TcxPropertiesStore и выполяем ему операцию сохранения

  ss := TStringStream.Create;
  try

    for i := 0 to frm.ComponentCount - 1 do
    begin
      comp := frm.Components[i];

      if (comp is TcxPropertiesStore) or (comp is TcxGridDBTableView) then
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

      end;

      if comp is TcxGridDBTableView then
      begin
        tview := TcxGridDBTableView(comp);
        ss.Clear;
        tview.StoreToStream(ss);
        tblAppProps.Edit;
        tblAppPropsProps.LoadFromStream(ss);
        tblAppProps.Post;
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
    tbl_Settings.Edit;
    tbl_Settings_du_props.LoadFromStream(strm);
    tbl_Settings.Post;
  finally
    strm.Free;
  end;

  tbl_Settings.SaveToFile(app_path + INI);
  fdmtbl_ConnectionProfiles.SaveToFile(app_path + CLIENTS);
  fdmtbl_ReceivedMessages.SaveToFile(app_path + RECEIVED);
  fdmtbl_SendedMessages.SaveToFile(app_path + SENDED);
  tblAppProps.SaveToFile(app_path + PROPS);
end;


end.
