unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.AnsiStrings, System.WideStrUtils, System.Contnrs,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  MOSQUITTO,
  cxPropertiesStore, cxStorage, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxCheckBox, dxLayoutControl,
  dxLayoutControlAdapters, Vcl.Menus, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons, cxTextEdit,
  dxSkinsdxStatusBarPainter, dxStatusBar, cxGroupBox, cxRadioGroup, cxMaskEdit, cxSpinEdit,
  CodeSiteLogging, dxBarBuiltInMenu, cxMemo, cxPC, cxDropDownEdit, cxMRUEdit, cxSplitter, cxStyles, dxLayoutLookAndFeels, dxBevel, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, cxDBEdit, RxTimerLst;

type
  T_user_obj = record
    Data: Integer;
  end;

  P_user_obg = ^T_user_obj;

const
  WM_MQTT_MESSAGES = WM_USER + 1;

type
  T_mqtt_msg_id = (ON_CONNECT_ID, ON_DISCONNECT_ID, ON_PUBLISH_ID, ON_MESSAGE_ID, ON_SUBSCRIBE_ID, ON_UNSUBSCRIBE_ID, ON_LOG_ID);

type
  T_MQTTMessage = record
    description: string;
    id: T_mqtt_msg_id;
    rc: Integer; // Код с причиной вызова
    mosquitto_message: P_mosquitto_message;
  end;

type
  P_MQTTMessage = ^T_MQTTMessage;

type
  TfrmMain = class(TForm)
    cxPropertiesStore: TcxPropertiesStore;
    dxlc_Group_Root: TdxLayoutGroup;
    dxlc_: TdxLayoutControl;
    dxlc_GroupConnectionAttr: TdxLayoutGroup;
    dxlc_ConnDisconnButtons: TdxLayoutGroup;
    cxb_Connect: TcxButton;
    dxlc_Item2: TdxLayoutItem;
    ActionList1: TActionList;
    act_Connect: TAction;
    cxImgl_big: TcxImageList;
    act_Disconnect: TAction;
    cxb_Disconnect: TcxButton;
    dxlc_Item3: TdxLayoutItem;
    dxStatusBar: TdxStatusBar;
    dxlc_StatusBar: TdxLayoutItem;
    dxlc_GroupWillConfig: TdxLayoutGroup;
    dxlc_Group3: TdxLayoutAutoCreatedGroup;
    dxlc_Group4: TdxLayoutAutoCreatedGroup;
    dxlc_Group5: TdxLayoutGroup;
    dxlc_Group6: TdxLayoutAutoCreatedGroup;
    dxlc_Group_ConnectionParams: TdxLayoutGroup;
    cxPageControl1: TcxPageControl;
    dxlc_PageControl: TdxLayoutItem;
    cxts_1: TcxTabSheet;
    cxm_Log: TcxMemo;
    dxlc_PSGroup_Root: TdxLayoutGroup;
    dxlc_PS: TdxLayoutControl;
    dxlc_PS_Publish: TdxLayoutGroup;
    dxlc_PS_Subscribe: TdxLayoutGroup;
    cxm_PubPayload: TcxMemo;
    dxlc_PSItem3: TdxLayoutItem;
    cxmru_PubTopic: TcxMRUEdit;
    dxlc_PSItem5: TdxLayoutItem;
    cxmru_SubTopic: TcxMRUEdit;
    dxlc_PSItem1: TdxLayoutItem;
    cxrg_PubQoS: TcxRadioGroup;
    dxlc_PSItem2: TdxLayoutItem;
    cxrg_SubQoS: TcxRadioGroup;
    dxlc_PSItem6: TdxLayoutItem;
    cxchb_PubRetain: TcxCheckBox;
    dxlc_PSItem7: TdxLayoutItem;
    dxlc_PSGroup1: TdxLayoutAutoCreatedGroup;
    dxlc_PSGroup2: TdxLayoutAutoCreatedGroup;
    cxb_Publish: TcxButton;
    dxlc_PSItem9: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    cxStyleRepository1: TcxStyleRepository;
    dxlc_PSSplitterItem1: TdxLayoutSplitterItem;
    dxBevel1: TdxBevel;
    cxb_Subscribe: TcxButton;
    dxlc_PSItem10: TdxLayoutItem;
    cxb_Unsubscribe: TcxButton;
    dxlc_PSItem11: TdxLayoutItem;
    act_Publish: TAction;
    act_Subscribe: TAction;
    act_Unsubscribe: TAction;
    dxlc_Log: TdxLayoutItem;
    cxg_SendedDBTableView1: TcxGridDBTableView;
    cxg_SendedLevel1: TcxGridLevel;
    cxg_Sended: TcxGrid;
    dxlc_SendedTable: TdxLayoutItem;
    dxlc_SplitterItem1: TdxLayoutSplitterItem;
    cxg_ReceivedDBTableView1: TcxGridDBTableView;
    cxg_ReceivedLevel1: TcxGridLevel;
    cxg_Received: TcxGrid;
    dxlc_Item6: TdxLayoutItem;
    dxlc_SplitterItem2: TdxLayoutSplitterItem;
    cxg_SendedDBTableView1Time: TcxGridDBColumn;
    cxg_SendedDBTableView1Topic: TcxGridDBColumn;
    cxg_SendedDBTableView1Payload: TcxGridDBColumn;
    cxg_ReceivedDBTableView1Time: TcxGridDBColumn;
    cxg_ReceivedDBTableView1Topic: TcxGridDBColumn;
    cxg_ReceivedDBTableView1Payload: TcxGridDBColumn;
    cxnav_ConnProfiles: TcxDBNavigator;
    dxlc_Item5: TdxLayoutItem;
    cxImgl_small: TcxImageList;
    cxte_HostName: TcxDBTextEdit;
    dxlc_HostName: TdxLayoutItem;
    cxsped_HostPort: TcxDBSpinEdit;
    dxlc_HostPort: TdxLayoutItem;
    cxsped_KeepAlive: TcxDBSpinEdit;
    dxlc_KeepAlive: TdxLayoutItem;
    cxte_UserID: TcxDBTextEdit;
    dxlc_UserID: TdxLayoutItem;
    cxte_UserName: TcxDBTextEdit;
    dxlc_ItemUserName: TdxLayoutItem;
    cxte_Password: TcxDBTextEdit;
    dxlc_ItemPassword: TdxLayoutItem;
    cxte_WillTopic: TcxDBTextEdit;
    dxlc_WillTopic: TdxLayoutItem;
    cxte_WillPayload: TcxDBTextEdit;
    dxlc_WillPayload: TdxLayoutItem;
    cxchb_CleanSession: TcxDBCheckBox;
    dxlc_Item4: TdxLayoutItem;
    cxchb_WillRetain: TcxDBCheckBox;
    dxlc_Item1: TdxLayoutItem;
    cxrg_WillQoS: TcxDBRadioGroup;
    dxlc_WillQoS: TdxLayoutItem;
    cxb_1: TcxButton;
    dxlc_Item7: TdxLayoutItem;
    cxb_2: TcxButton;
    dxlc_Item8: TdxLayoutItem;
    cxb_3: TcxButton;
    dxlc_Item9: TdxLayoutItem;
    ActionList_small: TActionList;
    act_ClearLog: TAction;
    act_ClearSended: TAction;
    act_ClearReceived: TAction;
    dxlc_GroupLog: TdxLayoutGroup;
    dxlc_GroupSended: TdxLayoutGroup;
    dxlc_GroupReveived: TdxLayoutGroup;
    cxg_ReceivedDBTableView1mid: TcxGridDBColumn;
    cxg_ReceivedDBTableView1QoS: TcxGridDBColumn;
    cxg_ReceivedDBTableView1Retain: TcxGridDBColumn;
    cxts_2: TcxTabSheet;
    dxlc_1Group_Root: TdxLayoutGroup;
    dxlc_1: TdxLayoutControl;
    cxg_PeriodicalSendingDBTableView1: TcxGridDBTableView;
    cxg_PeriodicalSendingLevel1: TcxGridLevel;
    cxg_PeriodicalSending: TcxGrid;
    dxlc_1Item1: TdxLayoutItem;
    cxb_4: TcxButton;
    dxlc_1Item2: TdxLayoutItem;
    act_StartPeriodicSending: TAction;
    act_StopPeriodicSending: TAction;
    cxb_5: TcxButton;
    dxlc_1Item3: TdxLayoutItem;
    dxlc_1Group1: TdxLayoutAutoCreatedGroup;
    cxg_PeriodicalSendingDBTableView1Topic: TcxGridDBColumn;
    cxg_PeriodicalSendingDBTableView1Payload: TcxGridDBColumn;
    cxg_PeriodicalSendingDBTableView1QoS: TcxGridDBColumn;
    cxg_PeriodicalSendingDBTableView1Periodicity: TcxGridDBColumn;
    cxg_PeriodicalSendingDBTableView1FuncType: TcxGridDBColumn;
    cxg_PeriodicalSendingDBTableView1Min: TcxGridDBColumn;
    cxg_PeriodicalSendingDBTableView1Max: TcxGridDBColumn;
    cxg_PeriodicalSendingDBTableView1Enabled: TcxGridDBColumn;
    RxTimerList1: TRxTimerList;
    cxg_SendedDBTableView1QoS: TcxGridDBColumn;
    cxg_SendedDBTableView1Retain: TcxGridDBColumn;
    cxg_PeriodicalSendingDBTableView1Retain: TcxGridDBColumn;
    cxg_PeriodicalSendingDBTableView1FuncPeriod: TcxGridDBColumn;
    dxlc_Group2: TdxLayoutGroup;
    dxlc_SplitterItem3: TdxLayoutSplitterItem;
    cxg_PeriodicalSendingDBTableView1FuncOffs: TcxGridDBColumn;
    cxts_3: TcxTabSheet;
    dxlc_2Group_Root: TdxLayoutGroup;
    dxlc_2: TdxLayoutControl;
    cxg_SubscribeListDBTableView1: TcxGridDBTableView;
    cxg_SubscribeListLevel1: TcxGridLevel;
    cxg_SubscribeList: TcxGrid;
    dxlc_2Item1: TdxLayoutItem;
    cxg_SubscribeListDBTableView1Subscribe: TcxGridDBColumn;
    cxg_SubscribeListDBTableView1Topic: TcxGridDBColumn;
    cxg_SubscribeListDBTableView1QoS: TcxGridDBColumn;
    cxb_6: TcxButton;
    dxlc_2Item2: TdxLayoutItem;
    act_SubscribeByList: TAction;
    cxchb_LogEnable: TcxCheckBox;
    dxlc_Item10: TdxLayoutItem;
    dxlc_Group1: TdxLayoutAutoCreatedGroup;
    cxchb_SendedTblEnable: TcxCheckBox;
    dxlc_Item11: TdxLayoutItem;
    dxlc_Group7: TdxLayoutAutoCreatedGroup;
    cxchb_ReceivedTblEnable: TcxCheckBox;
    dxlc_Item12: TdxLayoutItem;
    dxlc_Group8: TdxLayoutAutoCreatedGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure act_ConnectExecute(Sender: TObject);
    procedure act_DisconnectExecute(Sender: TObject);
    procedure act_PublishExecute(Sender: TObject);
    procedure act_SubscribeExecute(Sender: TObject);
    procedure act_UnsubscribeExecute(Sender: TObject);
    procedure cxnav_ConnProfilesButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure act_ClearLogExecute(Sender: TObject);
    procedure act_ClearSendedExecute(Sender: TObject);
    procedure act_ClearReceivedExecute(Sender: TObject);
    procedure act_StartPeriodicSendingExecute(Sender: TObject);
    procedure act_StopPeriodicSendingExecute(Sender: TObject);
    procedure act_SubscribeByListExecute(Sender: TObject);
  private
    f_mosq: Pmosquitto;

    f_session_started: Boolean;
    f_clean_session: Byte;
    f_retain: Byte;

    f_user_obj: T_user_obj;
    f_user_id: AnsiString;
    f_will_payload: AnsiString;
    f_will_payload_len: Integer;
    f_will_topic: AnsiString;
    f_user_name: AnsiString;
    f_user_password: AnsiString;

    f_hostname: AnsiString;
    f_port: Integer;
    f_keepalive: Integer;

    f_connected: Boolean;
    f_connect_result: Integer;
    f_disconnect_result: Integer;

    f_pub_id: Integer;
    f_pub_topic: AnsiString;
    f_pub_payload_len: Integer;
    f_pub_payload: AnsiString;
    f_pub_qos: Integer;
    f_pub_retain: Byte;

    f_sub_id: Integer;
    f_sub_topic: AnsiString;
    f_sub_qos: Integer;

    f_autosending: Boolean;

    AutoPubObjs: TObjectList;

    procedure Start_session;
    procedure Stop_session;
    procedure Dispose_parameters;
    procedure UpdateStatusBar;
    procedure Gather_session_parameters;
    procedure Gather_parameters;

    function ConvertStringToUTF8(const str: string; var utf8str: AnsiString): Integer;
    procedure Convert_Topic_To_String(const utf8str: PAnsiChar; var str: string);
    procedure Convert_Payload_To_String(const utf8str: PAnsiChar; sz: Integer; var str: string);

    procedure MessagesgHandler(var Message: TMessage); message WM_MQTT_MESSAGES;
    procedure Log_sended_packet(topic: string; payload: string; QoS: Integer; Retain: Boolean);
    procedure Publish(topic: string; payload: string; QoS: Integer; Retain: Boolean);

  public
    { Public declarations }
  end;

function Callback_tls_set(buf: PChar; size: Integer; rwflag: Integer; userdata: Pointer): Integer; cdecl;
procedure Callback_on_connect(mosq: Pmosquitto; obj: Pointer; rc: Integer); cdecl;
procedure Callback_on_disconnect(mosq: Pmosquitto; obj: Pointer; rc: Integer); cdecl;
procedure Callback_on_publish(mosq: Pmosquitto; obj: Pointer; mid: Integer); cdecl;
procedure Callback_on_message(mosq: Pmosquitto; obj: Pointer; mosquitto_message: P_mosquitto_message); cdecl;
procedure Callback_on_subscribe(mosq: Pmosquitto; obj: Pointer; mid: Integer; qos_count: Integer; granted_qos: PInteger); cdecl;
procedure Callback_on_unsubscribe(mosq: Pmosquitto; obj: Pointer; mid: Integer); cdecl;
procedure Callback_on_log(mosq: Pmosquitto; obj: Pointer; level: Integer; str: PAnsiChar); cdecl;
procedure SendMessagetoForm(description: string; id: T_mqtt_msg_id; rc: Integer; mosquitto_message: P_mosquitto_message); cdecl;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses MainDataModule, ConnProfilesTbl, PeriodicPublishObj;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.FormCreate(Sender: TObject);
var
  res: Integer;
  major: Integer;
  minor: Integer;
  revision: Integer;
begin

  dm.RestoreFormProperties(Self);
  cxmru_PubTopic.Properties.LookupItems.Text := dm.tblSettingsPubTopicMRU.Value;
  cxmru_SubTopic.Properties.LookupItems.Text := dm.tblSettingsSubTopicMRU.Value;

  dxStatusBar.Panels[0].Text := 'Disconnected';

  res := mosquitto_lib_init;
  if res <> MOSQ_ERR_SUCCESS then
  begin
    MessageBox(0, PWideChar('Library initialisation error: ' + IntToStr(res)), 'Mosquitto library ', MB_ICONSTOP or MB_OK);
  end;

  mosquitto_lib_version(@major, @minor, @revision);
  caption := 'Mosquitto library ' + IntToStr(major) + '.' + IntToStr(minor) + '.' + IntToStr(revision) + ' test client';

  f_mosq := Nil;
  f_connected := False;
  f_session_started := False;
  act_Disconnect.Enabled := False;

  act_Publish.Enabled := False;
  act_Subscribe.Enabled := False;
  act_Unsubscribe.Enabled := False;
  act_StartPeriodicSending.Enabled := False;
  act_StopPeriodicSending.Enabled := False;
  act_SubscribeByList.Enabled := False;

end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
function TfrmMain.ConvertStringToUTF8(const str: string; var utf8str: AnsiString): Integer;
var
  L, SL: Integer;
begin
  SL := Length(str);
  L := SL * SizeOf(Char);
  L := L + 1;

  SetLength(utf8str, L);
  UnicodeToUtf8(PAnsiChar(utf8str), L, PWideChar(str), SL);
  ConvertStringToUTF8 := System.SysUtils.StrLen(PAnsiChar(utf8str));

end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.Convert_Topic_To_String(const utf8str: PAnsiChar; var str: string);
var
  L: Integer;
  Temp: UnicodeString;
begin
  L := System.SysUtils.StrLen(utf8str);

  str := '';
  if L = 0 then
    Exit;
  SetLength(Temp, L);

  L := System.Utf8ToUnicode(PWideChar(Temp), L + 1, utf8str, L);
  if L > 0 then
    SetLength(Temp, L - 1)
  else
    Temp := '';
  str := Temp;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.Convert_Payload_To_String(const utf8str: PAnsiChar; sz: Integer; var str: string);
var
  L: Integer;
  Temp: UnicodeString;
begin
  str := '';
  if sz = 0 then
    Exit;
  SetLength(Temp, sz);

  L := System.Utf8ToUnicode(PWideChar(Temp), sz + 1, utf8str, sz);
  if L > 0 then
    SetLength(Temp, L - 1)
  else
    Temp := '';
  str := Temp;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.Gather_session_parameters;
begin
  if cxte_UserID.Text = '' then
  begin
    MessageBox(0, 'Недопустимо пустое значение User ID', 'Error', MB_ICONSTOP or MB_OK);
    cxte_UserID.SetFocus;
    Abort;
  end;

  if cxchb_CleanSession.Checked then
    f_clean_session := 1
  else
    f_clean_session := 0;

  // ------------------------------------

  ConvertStringToUTF8(cxte_UserID.Text, f_user_id);

end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.Gather_parameters;
begin

  if cxte_WillTopic.Text = '' then
  begin
    MessageBox(0, 'Недопустимо пустое значение Will Topic', 'Error', MB_ICONSTOP or MB_OK);
    cxte_WillTopic.SetFocus;
    Abort;
  end;
  if cxte_HostName.Text = '' then
  begin
    MessageBox(0, 'Недопустимо пустое значение Host Name', 'Error', MB_ICONSTOP or MB_OK);
    cxte_HostName.SetFocus;
    Abort;
  end;

  if cxchb_WillRetain.Checked then
    f_retain := 1
  else
    f_retain := 0;

  // ------------------------------------

  if cxte_WillTopic.Text = '' then
    f_will_topic := ''
  else
  begin
    ConvertStringToUTF8(cxte_WillTopic.Text, f_will_topic);
  end;

  // ------------------------------------

  if cxte_WillPayload.Text = '' then
  begin
    f_will_payload := '';
    f_will_payload_len := 0;
  end
  else
  begin
    f_will_payload_len := ConvertStringToUTF8(cxte_WillPayload.Text, f_will_payload);
  end;

  // ------------------------------------

  if cxte_UserName.Text = '' then
    f_user_name := ''
  else
  begin
    ConvertStringToUTF8(cxte_UserName.Text, f_user_name);
  end;

  // ------------------------------------
  if cxte_Password.Text = '' then
    f_user_password := ''
  else
  begin
    ConvertStringToUTF8(cxte_Password.Text, f_user_password);
  end;

  // ------------------------------------
  if cxte_HostName.Text = '' then
    f_hostname := ''
  else
  begin
    ConvertStringToUTF8(cxte_HostName.Text, f_hostname);
  end;

  f_port := cxsped_HostPort.Value;
  f_keepalive := cxsped_KeepAlive.Value;

end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.Start_session;
begin
  if f_session_started = True then
  begin
    mosquitto_destroy(f_mosq);
    f_mosq := Nil;
  end;

  f_mosq := mosquitto_new(PAnsiChar(f_user_id), f_clean_session, @f_user_obj);
  if f_mosq = Nil then
  begin
    MessageBox(0, 'Ошибка инициализации сессии MQTT клиента', 'Error', MB_ICONWARNING or MB_OK);
    Abort;
  end;

  mosquitto_connect_callback_set(f_mosq, Callback_on_connect);
  mosquitto_disconnect_callback_set(f_mosq, Callback_on_disconnect);
  mosquitto_publish_callback_set(f_mosq, Callback_on_publish);
  mosquitto_message_callback_set(f_mosq, Callback_on_message);
  mosquitto_subscribe_callback_set(f_mosq, Callback_on_subscribe);
  mosquitto_unsubscribe_callback_set(f_mosq, Callback_on_unsubscribe);
  mosquitto_log_callback_set(f_mosq, Callback_on_log);
  f_session_started := True;

end;

// ------------------------------------------------------------------------------
// Вызываем из FormDestroy
// ------------------------------------------------------------------------------
procedure TfrmMain.Stop_session;
begin
  if f_mosq <> Nil then
  begin
    if f_connected = True then
    begin
      mosquitto_disconnect(f_mosq);
      mosquitto_loop_stop(f_mosq, 1);
    end;
    mosquitto_destroy(f_mosq);
    f_mosq := Nil;
  end;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.act_ClearLogExecute(Sender: TObject);
begin
  cxm_Log.Clear;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.act_ClearReceivedExecute(Sender: TObject);
begin
  dm.tblReceivedMessages.EmptyDataSet;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.act_ClearSendedExecute(Sender: TObject);
begin
  dm.tblSendedMessages.EmptyDataSet;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.act_ConnectExecute(Sender: TObject);
var
  res: Integer;
  errdesc: string;

begin
  if dm.tblConnectionProfiles.RecordCount = 0 then
  begin
    MessageBox(0, PChar('Не создан профиль соединения. '#13#10'Используйте кнопу навигатора ''+'' для создания нового профиля.'), 'Error', MB_ICONWARNING or MB_OK);
    Abort;
  end;

  if dm.ds_ConnectionProfiles.State <> dsBrowse then
  begin
    MessageBox(0, PChar('Завершите операции по редактированию профиля подключения.'), 'Error', MB_ICONWARNING or MB_OK);
    Abort;
  end;

  Gather_session_parameters;
  Start_session;

  if f_connected = True then
    Abort;

  Gather_parameters;

  try
    // Предварительно уничтожаем старого лиента
    act_DisconnectExecute(Self);

    mosquitto_will_clear(f_mosq);
    res := mosquitto_will_set(f_mosq, PAnsiChar(f_will_topic), f_will_payload_len, PAnsiChar(f_will_payload), cxrg_WillQoS.ItemIndex, f_retain);

    if res <> MOSQ_ERR_SUCCESS then
    begin
      case res of
        MOSQ_ERR_INVAL:
          errdesc := 'The input parameters is invalid';
        MOSQ_ERR_NOMEM:
          errdesc := 'An out of memory condition occurred';
        MOSQ_ERR_PAYLOAD_SIZE:
          errdesc := 'Payloadlen is too large';
      else
        errdesc := 'Unknown error';
      end;
      MessageBox(0, PChar('Ошибка установки завещания: ' + errdesc), 'Error', MB_ICONWARNING or MB_OK);
      Abort;
    end;

    res := mosquitto_username_pw_set(f_mosq, PAnsiChar(f_user_name), PAnsiChar(f_user_password));

    if res <> MOSQ_ERR_SUCCESS then
    begin
      case res of
        MOSQ_ERR_INVAL:
          errdesc := 'The input parameters is invalid';
        MOSQ_ERR_NOMEM:
          errdesc := 'An out of memory condition occurred';
      else
        errdesc := 'Unknown error';
      end;
      MessageBox(0, PChar('Ошибка установки User name и Password: ' + errdesc), 'Error', MB_ICONWARNING or MB_OK);
      Abort;
    end;

    Screen.Cursor := crHourGlass;

    res := mosquitto_connect(f_mosq, PAnsiChar(f_hostname), f_port, f_keepalive);
    // res := mosquitto_connect_async(f_mosq, f_hostname, f_port, f_keepalive);

    if res <> MOSQ_ERR_SUCCESS then
    begin
      case res of
        MOSQ_ERR_INVAL:
          errdesc := 'The input parameters is invalid';
        MOSQ_ERR_ERRNO:
          errdesc := 'Connection error';
      else
        errdesc := 'Unknown error';
      end;
      MessageBox(0, PChar('Ошибка соединения: ' + errdesc), 'Error', MB_ICONWARNING or MB_OK);
      Screen.Cursor := crDefault;
      Abort;
    end;

    res := mosquitto_loop_start(f_mosq);
    if res <> MOSQ_ERR_SUCCESS then
    begin
      case res of
        MOSQ_ERR_INVAL:
          errdesc := 'The input parameters is invalid';
        MOSQ_ERR_NOT_SUPPORTED:
          errdesc := 'Thread support is not available';
      else
        errdesc := 'Unknown error';
      end;
      MessageBox(0, PChar('Ошибка соединения: ' + errdesc), 'Error', MB_ICONWARNING or MB_OK);
      Screen.Cursor := crDefault;
      Abort;
    end;

  finally

    UpdateStatusBar;
  end;

end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.act_DisconnectExecute(Sender: TObject);
var
  res: Integer;
begin
  try
    if f_mosq <> Nil then
    begin
      if f_connected = True then
      begin
        Screen.Cursor := crHourGlass;

        res := mosquitto_disconnect(f_mosq);
        if res <> MOSQ_ERR_SUCCESS then
          if cxchb_LogEnable.Checked then
            cxm_Log.Lines.Add('mosquitto_disconnect = ' + IntToStr(res));

        // Обязательно делаем вызов  mosquitto_loop_write, иначе  disconnect задержится до следующего прихода пакета Ping от сервера
        // Посылка mosquitto_loop_read или mosquitto_loop_misc здесь не помогают
        res := mosquitto_loop_write(f_mosq, 1);
        if res <> MOSQ_ERR_SUCCESS then
          if cxchb_LogEnable.Checked then
            cxm_Log.Lines.Add('mosquitto_loop_write = ' + IntToStr(res));
      end;
    end;
  finally
    UpdateStatusBar;
  end;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.act_PublishExecute(Sender: TObject);
var
  res: Integer;
  errdesc: string;

begin
  if f_connected = False then
    Abort;

  try
    inc(f_pub_id);

    if cxmru_PubTopic.Text = '' then
    begin
      MessageBox(0, 'Недопустимо пустое значение Pulished Topic', 'Error', MB_ICONSTOP or MB_OK);
      cxmru_PubTopic.SetFocus;
      Abort;
    end;

    // ------------------------------------
    if cxchb_PubRetain.Checked then
      f_pub_retain := 1
    else
      f_pub_retain := 0;
    // ------------------------------------
    f_pub_qos := cxrg_PubQoS.ItemIndex;
    // ------------------------------------
    if cxmru_PubTopic.Text = '' then
      f_pub_topic := ''
    else
    begin
      ConvertStringToUTF8(cxmru_PubTopic.Text, f_pub_topic);
    end;
    // ------------------------------------
    if cxm_PubPayload.Text = '' then
      f_pub_payload := ''
    else
    begin
      f_pub_payload_len := ConvertStringToUTF8(cxm_PubPayload.Text, f_pub_payload);
    end;
    // ------------------------------------
    res := mosquitto_publish(f_mosq, @f_pub_id, PAnsiChar(f_pub_topic), f_pub_payload_len, Pointer(f_pub_payload), f_pub_qos, f_pub_retain);
    if res <> MOSQ_ERR_SUCCESS then
    begin
      case res of
        MOSQ_ERR_INVAL:
          errdesc := 'The input parameters is invalid';
        MOSQ_ERR_NOMEM:
          errdesc := 'An out of memory condition occurred';
        MOSQ_ERR_NO_CONN:
          errdesc := 'The client isn''t connected to a broker';
        MOSQ_ERR_PROTOCOL:
          errdesc := 'There is a protocol error communicating with the broker';
        MOSQ_ERR_PAYLOAD_SIZE:
          errdesc := 'The payloadlen is too large';
      else
        errdesc := 'Unknown error';
      end;
      MessageBox(0, PChar('Ошибка выполнения Publish: ' + errdesc), 'Error', MB_ICONWARNING or MB_OK);
      Abort;
    end;

    // Обязательно делаем вызов  mosquitto_loop_write, иначе  пересылка задержится до следующего прихода пакета Ping от сервера
    res := mosquitto_loop_write(f_mosq, 1);
    if res <> MOSQ_ERR_SUCCESS then
    begin
      if cxchb_LogEnable.Checked then
        cxm_Log.Lines.Add('mosquitto_loop_write = ' + IntToStr(res));
    end;
    Log_sended_packet(cxmru_PubTopic.Text, cxm_PubPayload.Text, f_pub_qos, cxchb_PubRetain.Checked);
  finally

  end;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.Publish(topic, payload: string; QoS: Integer; Retain: Boolean);
var
  res: Integer;
  errdesc: string;
begin
  if f_connected = False then
    Abort;

  inc(f_pub_id);

  // ------------------------------------
  f_pub_qos := QoS;
  // ------------------------------------
  if Retain then
    f_pub_retain := 1
  else
    f_pub_retain := 0;
  // ------------------------------------
  if topic = '' then
    f_pub_topic := ''
  else
  begin
    ConvertStringToUTF8(topic, f_pub_topic);
  end;
  // ------------------------------------
  if payload = '' then
    f_pub_payload := ''
  else
  begin
    f_pub_payload_len := ConvertStringToUTF8(payload, f_pub_payload);
  end;
  // ------------------------------------

  res := mosquitto_publish(f_mosq, @f_pub_id, PAnsiChar(f_pub_topic), f_pub_payload_len, Pointer(f_pub_payload), f_pub_qos, f_pub_retain);
  if res <> MOSQ_ERR_SUCCESS then
  begin
    case res of
      MOSQ_ERR_INVAL:
        errdesc := 'The input parameters is invalid';
      MOSQ_ERR_NOMEM:
        errdesc := 'An out of memory condition occurred';
      MOSQ_ERR_NO_CONN:
        errdesc := 'The client isn''t connected to a broker';
      MOSQ_ERR_PROTOCOL:
        errdesc := 'There is a protocol error communicating with the broker';
      MOSQ_ERR_PAYLOAD_SIZE:
        errdesc := 'The payloadlen is too large';
    else
      errdesc := 'Unknown error';
    end;
    if cxchb_LogEnable.Checked then
      cxm_Log.Lines.Add('Ошибка выполнения Publish: ' + errdesc);
    Abort;
  end;

  // Обязательно делаем вызов  mosquitto_loop_write, иначе  пересылка задержится до следующего прихода пакета Ping от сервера
  res := mosquitto_loop_write(f_mosq, 1);
  if res <> MOSQ_ERR_SUCCESS then
  begin
    if cxchb_LogEnable.Checked then
      cxm_Log.Lines.Add('mosquitto_loop_write = ' + IntToStr(res));
  end;

  Log_sended_packet(topic, payload, QoS, Retain);
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.Log_sended_packet(topic: string; payload: string; QoS: Integer; Retain: Boolean);
begin
  // Записываем в таблицу
  if cxchb_SendedTblEnable.Checked = False then
    Exit;

  dm.tblSendedMessages.Insert;
  dm.tblSendedMessagesTime.Value := Now;
  dm.tblSendedMessagesTopic.Value := topic;
  dm.tblSendedMessagesPayload.Value := payload;
  dm.tblSendedMessagesQoS.Value := QoS;
  dm.tblSendedMessagesRetain.Value := Retain;
  dm.tblSendedMessages.Post;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.act_StartPeriodicSendingExecute(Sender: TObject);
var
  ppo: TPeriodicPublishObj;
  timeout: Integer;
  topic: string;
  paylod: string;
  QoS: Integer;
  Retain: Boolean;
  func_type_str: string;
  func_type: Integer;
  minv: single;
  maxv: single;
  periodicityv: Integer;
  ofsv: Integer;

begin
  // Проходим по всей таблице заданий на периодическую публикацию и запукаем их

  with dm.tblPeriodicalSending do
  begin
    First;
    while not eof do
    begin
      if FieldByName('Enabled').Value = True then
      begin
        if AutoPubObjs = Nil then
          AutoPubObjs := TObjectList.Create;

        try
          timeout := FieldByName('Periodicity').Value;
          topic := FieldByName('Topic').AsString;
          paylod := FieldByName('Payload').AsString;
          QoS := FieldByName('QoS').AsInteger;
          Retain := FieldByName('Retain').AsBoolean;

          func_type_str := FieldByName('FuncType').AsString;

          if func_type_str = 'Random' then
            func_type := 0
          else if func_type_str = 'Sinus' then
            func_type := 1
          else
            func_type := 0;

          minv := FieldByName('Min').AsSingle;
          maxv := FieldByName('Max').AsSingle;
          periodicityv := FieldByName('FuncPeriod').AsInteger;
          ofsv := FieldByName('FuncOffs').AsInteger;

          ppo := TPeriodicPublishObj.Create(Nil, timeout, Publish);
          ppo.SetPackData(topic, paylod, QoS, Retain);
          ppo.SetFunction(func_type, minv, maxv, periodicityv, ofsv);
          try
            AutoPubObjs.Add(ppo);
            ppo.Enabled := True;
          except
            ppo.Free;
          end;
        except
          if cxchb_LogEnable.Checked then
            cxm_Log.Lines.Add('Ошибка в топике "' + FieldByName('Topic').AsString + '" таблицы периодической публикации');
        end;
      end;

      Next;
    end;
  end;
  f_autosending := True;
  act_StartPeriodicSending.Enabled := False;
  act_StopPeriodicSending.Enabled := True;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.act_StopPeriodicSendingExecute(Sender: TObject);
begin
  if AutoPubObjs <> Nil then
  begin
    AutoPubObjs.Free;
    AutoPubObjs := Nil;
  end;
  f_autosending := False;
  act_StartPeriodicSending.Enabled := True;
  act_StopPeriodicSending.Enabled := False;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.act_SubscribeByListExecute(Sender: TObject);
var
  topic: string;
  QoS: Integer;
  res: Integer;
  errdesc: string;
begin
  if f_connected = False then
    Abort;
  with dm.tblSubscriptions do
  begin
    First;
    while not eof do
    begin
      topic := '';
      try
        topic := FieldByName('Topic').AsString;
        QoS := FieldByName('QoS').AsInteger;
      except
        QoS := 0;
      end;
      if QoS > 2 then
        QoS := 0;

      if topic = '' then
      begin
        if cxchb_LogEnable.Checked then
          cxm_Log.Lines.Add('Subscription was skeeped. Empty Topic.');
        continue;
      end;

      ConvertStringToUTF8(topic, f_sub_topic);
      f_sub_qos := QoS;

      if FieldByName('Subscribe').AsBoolean = True then
      begin
        // Подписываемся
        res := mosquitto_subscribe(f_mosq, @f_sub_id, PAnsiChar(f_sub_topic), f_sub_qos);
      end
      else
      begin
        // Отписываемся
        res := mosquitto_unsubscribe(f_mosq, @f_sub_id, PAnsiChar(f_sub_topic));
      end;
      if res <> MOSQ_ERR_SUCCESS then
      begin
        case res of
          MOSQ_ERR_INVAL:
            errdesc := 'The input parameters is invalid';
          MOSQ_ERR_NOMEM:
            errdesc := 'An out of memory condition occurred';
          MOSQ_ERR_NO_CONN:
            errdesc := 'The client isn''t connected to a broker';
        else
          errdesc := 'Unknown error';
        end;
        if cxchb_LogEnable.Checked then
          cxm_Log.Lines.Add('Ошибка подписки из списка: ' + errdesc);
      end;
      // Обязательно делаем вызов  mosquitto_loop_write, иначе  пересылка задержится до следующего прихода пакета Ping от сервера
      res := mosquitto_loop_write(f_mosq, 1);
      if res <> MOSQ_ERR_SUCCESS then
        if cxchb_LogEnable.Checked then
          cxm_Log.Lines.Add('Ошибка подписки из списка: mosquitto_loop_write = ' + IntToStr(res));

      Next;
    end;
  end;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.act_SubscribeExecute(Sender: TObject);
var
  res: Integer;
  errdesc: string;
begin
  if f_connected = False then
    Abort;
  try

    inc(f_sub_id);

    if cxmru_SubTopic.Text = '' then
    begin
      MessageBox(0, 'Недопустимо пустое значение Subscribe Topic', 'Error', MB_ICONSTOP or MB_OK);
      cxmru_SubTopic.SetFocus;
      Abort;
    end;

    f_sub_qos := cxrg_SubQoS.ItemIndex;

    // ------------------------------------
    if cxmru_SubTopic.Text = '' then
      f_sub_topic := ''
    else
    begin
      ConvertStringToUTF8(cxmru_SubTopic.Text, f_sub_topic);
    end;

    res := mosquitto_subscribe(f_mosq, @f_sub_id, PAnsiChar(f_sub_topic), f_sub_qos);
    if res <> MOSQ_ERR_SUCCESS then
    begin
      case res of
        MOSQ_ERR_INVAL:
          errdesc := 'The input parameters is invalid';
        MOSQ_ERR_NOMEM:
          errdesc := 'An out of memory condition occurred';
        MOSQ_ERR_NO_CONN:
          errdesc := 'The client isn''t connected to a broker';
      else
        errdesc := 'Unknown error';
      end;
      MessageBox(0, PChar('Ошибка выполнения Subsribe: ' + errdesc), 'Error', MB_ICONWARNING or MB_OK);
      Abort;
    end;

    // Обязательно делаем вызов  mosquitto_loop_write, иначе  пересылка задержится до следующего прихода пакета Ping от сервера
    res := mosquitto_loop_write(f_mosq, 1);
    if res <> MOSQ_ERR_SUCCESS then
      if cxchb_LogEnable.Checked then
        cxm_Log.Lines.Add('mosquitto_loop_write = ' + IntToStr(res));

  finally

  end;

end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.act_UnsubscribeExecute(Sender: TObject);
var
  res: Integer;
  errdesc: string;
begin
  if f_connected = False then
    Abort;
  try

    inc(f_sub_id);

    if cxmru_SubTopic.Text = '' then
    begin
      MessageBox(0, 'Недопустимо пустое значение Subscribe Topic', 'Error', MB_ICONSTOP or MB_OK);
      cxmru_SubTopic.SetFocus;
      Abort;
    end;

    // ------------------------------------
    if cxmru_SubTopic.Text = '' then
      f_sub_topic := ''
    else
    begin
      ConvertStringToUTF8(cxmru_SubTopic.Text, f_sub_topic);
    end;

    res := mosquitto_unsubscribe(f_mosq, @f_sub_id, PAnsiChar(f_sub_topic));
    if res <> MOSQ_ERR_SUCCESS then
    begin
      case res of
        MOSQ_ERR_INVAL:
          errdesc := 'The input parameters is invalid';
        MOSQ_ERR_NOMEM:
          errdesc := 'An out of memory condition occurred';
        MOSQ_ERR_NO_CONN:
          errdesc := 'The client isn''t connected to a broker';
      else
        errdesc := 'Unknown error';
      end;
      MessageBox(0, PChar('Ошибка выполнения Subsribe: ' + errdesc), 'Error', MB_ICONWARNING or MB_OK);
      Abort;
    end;

    // Обязательно делаем вызов  mosquitto_loop_write, иначе  пересылка задержится до следующего прихода пакета Ping от сервера
    res := mosquitto_loop_write(f_mosq, 1);
    if res <> MOSQ_ERR_SUCCESS then
      if cxchb_LogEnable.Checked then
        cxm_Log.Lines.Add('mosquitto_loop_write = ' + IntToStr(res));

  finally

  end;

end;

procedure TfrmMain.cxnav_ConnProfilesButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  // CodeSite.Send(Sender.ClassName + ' AButtonIndex=' + IntToStr(AButtonIndex));
  if AButtonIndex = 16 then
  begin
    // Открыть таблицу профилей соедиения
    with TfrmConnProfilesTbl.Create(Self) do
    begin
      try
        ShowModal;
      finally
        Free;
      end;
    end;
  end;

end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.UpdateStatusBar;
begin
  if f_mosq <> nil then
  begin
    if f_connected = True then
    begin
      dxStatusBar.Panels[0].Text := 'Connected';
      dxStatusBar.Panels[0].PanelStyle.Color := clLime;
    end
    else
    begin
      dxStatusBar.Panels[0].Text := 'Disconnected' + Format(' (res=%d)', [f_connect_result]);
      dxStatusBar.Panels[0].PanelStyle.Color := clRed;
    end;
  end
  else
  begin
    dxStatusBar.Panels[0].Text := 'Client not created';
  end;
end;

// ------------------------------------------------------------------------------
// Обработка сообщений от асинхронных процедур клиента MQTT
// ------------------------------------------------------------------------------
procedure TfrmMain.MessagesgHandler(var Message: TMessage);
var
  mqttmsg: P_MQTTMessage;
  logstring: String;
  mosquitto_message: P_mosquitto_message;

  tmpstr: string;

begin
  mqttmsg := P_MQTTMessage(Message.LParam);

  logstring := mqttmsg^.description;

  try
    if mqttmsg^.id <> ON_LOG_ID then
    begin
      Screen.Cursor := crDefault;
    end;

    // Если не вызовем mosquitto_loop_stop при разрыве соединения, то не произойдет следующее корректное подключение
    if mqttmsg^.id = ON_DISCONNECT_ID then
    begin
      if mqttmsg^.rc <> 0 then
      begin
        // Непредусмотренное рассоединение
        mosquitto_disconnect(f_mosq);
        mosquitto_loop_stop(f_mosq, 1);
      end
      else
      begin
        mosquitto_loop_stop(f_mosq, 0);
      end;
    end;

    if mqttmsg^.id = ON_PUBLISH_ID then
    begin
      logstring := logstring + ' mid=' + IntToStr(mqttmsg^.rc);
    end;

    if mqttmsg^.id = ON_SUBSCRIBE_ID then
    begin
      logstring := logstring + ' mid=' + IntToStr(mqttmsg^.rc);
    end;

    if mqttmsg^.id = ON_MESSAGE_ID then
    begin
      mosquitto_message := mqttmsg^.mosquitto_message;

      if cxchb_ReceivedTblEnable.Checked then
      begin
        // Записываем в таблицу
        dm.tblReceivedMessages.Insert;
        dm.tblReceivedMessagesTime.Value := Now();
        Convert_Topic_To_String(mosquitto_message^.topic, tmpstr);
        dm.tblReceivedMessagesTopic.Value := tmpstr;
        Convert_Payload_To_String(mosquitto_message^.payload, mosquitto_message^.payloadlen, tmpstr);
        dm.tblReceivedMessagesPayload.Value := tmpstr;
        dm.tblReceivedMessagesmid.Value := mosquitto_message^.mid;
        dm.tblReceivedMessagesQoS.Value := mosquitto_message^.QoS;
        dm.tblReceivedMessagesRetain.Value := Boolean(mosquitto_message^.Retain);
        dm.tblReceivedMessages.Post;
      end;

      mosquitto_message_clear(mosquitto_message);
      FreeMem(mosquitto_message);
    end;

    if f_connected = True then
    begin
      act_Connect.Enabled := False;
      act_Disconnect.Enabled := True;
      act_Publish.Enabled := True;
      act_Subscribe.Enabled := True;
      act_Unsubscribe.Enabled := True;
      act_SubscribeByList.Enabled := True;

      if f_autosending = False then
        act_StartPeriodicSending.Enabled := True;

      dm.tblConnectionProfiles.UpdateOptions.ReadOnly := True;
      cxnav_ConnProfiles.Enabled := False;
    end
    else
    begin
      try
        if f_autosending = True then
        begin
          act_StopPeriodicSending.OnExecute(Self);
          f_autosending := False;
        end;
      except
      end;

      act_Connect.Enabled := True;
      act_Disconnect.Enabled := False;
      act_Publish.Enabled := False;
      act_Subscribe.Enabled := False;
      act_Unsubscribe.Enabled := False;
      act_StartPeriodicSending.Enabled := False;
      act_StopPeriodicSending.Enabled := False;
      act_SubscribeByList.Enabled := False;

      dm.tblConnectionProfiles.UpdateOptions.ReadOnly := False;
      cxnav_ConnProfiles.Enabled := True;

    end;

    if cxchb_LogEnable.Checked then
      cxm_Log.Lines.Add(logstring);
    UpdateStatusBar;

  finally
    Dispose(mqttmsg);
  end;
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.Dispose_parameters;
begin

end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  if AutoPubObjs <> Nil then
    AutoPubObjs.Free;

  Stop_session;
  mosquitto_lib_cleanup;
  Dispose_parameters;

  try
    dm.tblSettings.Edit;
    dm.tblSettingsPubTopicMRU.Value := cxmru_PubTopic.Properties.LookupItems.Text;
    dm.tblSettingsSubTopicMRU.Value := cxmru_SubTopic.Properties.LookupItems.Text;
    dm.tblSettings.Post;
  except

  end;
  dm.SaveFormProperties(Self);
end;

// -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// ------------------------------------------------------------------------------
// Отправка сообщений от асинхронных процедур клиента MQTT  в окно приложения\
// ------------------------------------------------------------------------------
procedure SendMessagetoForm(description: string; id: T_mqtt_msg_id; rc: Integer; mosquitto_message: P_mosquitto_message);
var
  mqttmsg: P_MQTTMessage;
begin
  New(mqttmsg);
  mqttmsg^.description := description;
  mqttmsg^.id := id;
  mqttmsg^.rc := rc;
  mqttmsg^.mosquitto_message := mosquitto_message;

  PostMessage(frmMain.Handle, WM_MQTT_MESSAGES, 0, Integer(mqttmsg));
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
function Callback_tls_set(buf: PChar; size: Integer; rwflag: Integer; userdata: Pointer): Integer; cdecl;
begin

  Callback_tls_set := 0;
end;

// ------------------------------------------------------------------------------
//
// Callback Parameters:
// mosq - the mosquitto instance making the callback.
// obj - the user data provided in <mosquitto_new>
// rc -  the return code of the connection response, one of:
// 0 - success
// 1 - connection refused (unacceptable protocol version)
// 2 - connection refused (identifier rejected)
// 3 - connection refused (broker unavailable)
// 4-255 - reserved for future use
// ------------------------------------------------------------------------------
procedure Callback_on_connect(mosq: Pmosquitto; obj: Pointer; rc: Integer); cdecl;
begin
  frmMain.f_connect_result := rc;
  if rc = 0 then
  begin
    frmMain.f_connected := True;
  end;
  SendMessagetoForm('Callback_on_connect', ON_CONNECT_ID, rc, Nil);

end;

// ------------------------------------------------------------------------------
// Callback Parameters:
// mosq - the mosquitto instance making the callback.
// obj -  the user data provided in <mosquitto_new>
// rc -   integer value indicating the reason for the disconnect. A value of 0
// means the client has called <mosquitto_disconnect>. Any other value
// indicates that the disconnect is unexpected.
// ------------------------------------------------------------------------------
procedure Callback_on_disconnect(mosq: Pmosquitto; obj: Pointer; rc: Integer); cdecl;
begin
  frmMain.f_disconnect_result := rc;
  frmMain.f_connected := False;
  SendMessagetoForm('Callback_on_disconnect', ON_DISCONNECT_ID, rc, Nil);
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure Callback_on_publish(mosq: Pmosquitto; obj: Pointer; mid: Integer); cdecl;
begin

  SendMessagetoForm('Callback_on_publish', ON_PUBLISH_ID, mid, Nil);
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure Callback_on_message(mosq: Pmosquitto; obj: Pointer; mosquitto_message: P_mosquitto_message); cdecl;
var
  dst: P_mosquitto_message;
begin
  dst := AllocMem(SizeOf(T_mosquitto_message));
  // Сообщение по указателю mosquitto_message надо скопировать, поскольку сразу по выходу из этой процедуры оно будет уничтожено
  mosquitto_message_copy(dst, mosquitto_message);
  SendMessagetoForm('Callback_on_message', ON_MESSAGE_ID, 0, dst);

end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure Callback_on_subscribe(mosq: Pmosquitto; obj: Pointer; mid: Integer; qos_count: Integer; granted_qos: PInteger); cdecl;
begin

  SendMessagetoForm('Callback_on_subscribe', ON_SUBSCRIBE_ID, mid, Nil);
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure Callback_on_unsubscribe(mosq: Pmosquitto; obj: Pointer; mid: Integer); cdecl;
begin

  SendMessagetoForm('Callback_on_unsubscribe', ON_UNSUBSCRIBE_ID, mid, Nil);
end;

// ------------------------------------------------------------------------------
//
// ------------------------------------------------------------------------------
procedure Callback_on_log(mosq: Pmosquitto; obj: Pointer; level: Integer; str: PAnsiChar); cdecl;
var
  msgstr: string;
begin
  msgstr := String(str);
  SendMessagetoForm(msgstr, ON_LOG_ID, Integer(level), Nil);
end;

end.
