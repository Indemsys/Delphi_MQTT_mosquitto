unit MainDataModule;

interface

uses
  Windows, System.Classes, System.SysUtils,
  Winapi.Messages, Vcl.Dialogs, System.UITypes, System.StrUtils,
  Vcl.Forms,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxClasses, cxPropertiesStore, cxStorage, FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageBin;

const
  INI = 'Ini.json';
  CLIENTS = 'Clients.json';
  RECEIVED = 'Received.json';
  SENDED = 'Sended.json';

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
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    app_path: string;
  public
    { Public declarations }
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
end;

end.
