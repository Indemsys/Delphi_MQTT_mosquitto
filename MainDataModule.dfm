object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 578
  Width = 788
  object ds_tbl_Settings: TDataSource
    DataSet = tbl_Settings
    Left = 160
    Top = 152
  end
  object tbl_Settings: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 160
    Top = 96
    object tbl_Settings_main_form_props: TBlobField
      FieldName = 'main_form_props'
    end
    object tbl_Settings_du_props: TBlobField
      FieldName = 'du_props'
    end
    object tbl_SettingsAutoConnect: TBooleanField
      DefaultExpression = 'False'
      FieldName = 'AutoConnect'
    end
    object tbl_SettingsPubPayload: TWideMemoField
      FieldName = 'PubPayload'
      BlobType = ftWideMemo
      Size = 4096
    end
  end
  object cxPropertiesStore: TcxPropertiesStore
    Active = False
    Components = <
      item
        Properties.Strings = (
          'Baud'
          'ComNumber'
          'DataBits'
          'DeviceLayer'
          'DTR'
          'HWFlowOptions'
          'LogAllHex'
          'Logging'
          'LogHex'
          'LogName'
          'LogSize'
          'Parity'
          'RTS'
          'StopBits'
          'SWFlowOptions'
          'TraceAllHex'
          'TraceHex'
          'TraceName'
          'TraceSize'
          'Tracing'
          'WsAddress'
          'WsPort'
          'XOffChar'
          'XOnChar')
      end>
    StorageName = 'cxPropertiesStore'
    StorageType = stStream
    Left = 160
    Top = 32
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 160
    Top = 224
  end
  object fdmtbl_SendedMessages: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 448
    Top = 152
    object fdmtbl_SendedMessagesTime: TDateTimeField
      FieldName = 'Time'
      DisplayFormat = 'hh.mm.ss:zzz'
    end
    object fdmtbl_SendedMessagesTopic: TWideStringField
      FieldName = 'Topic'
      Size = 256
    end
    object fdmtbl_SendedMessagesPayload: TWideMemoField
      FieldName = 'Payload'
      BlobType = ftWideMemo
      Size = 4096
    end
  end
  object ds_ReceivedMessages: TDataSource
    DataSet = fdmtbl_ReceivedMessages
    Left = 632
    Top = 216
  end
  object ds_SendedMessages: TDataSource
    DataSet = fdmtbl_SendedMessages
    Left = 440
    Top = 216
  end
  object fdmtbl_ReceivedMessages: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 632
    Top = 160
    object fdmtbl_ReceivedMessagesTime: TDateTimeField
      FieldName = 'Time'
      DisplayFormat = 'hh.mm.ss:zzz'
    end
    object fdmtbl_ReceivedMessagesTopic: TWideStringField
      FieldName = 'Topic'
      Size = 256
    end
    object fdmtbl_ReceivedMessagesPayload: TWideMemoField
      FieldName = 'Payload'
      BlobType = ftWideMemo
      Size = 4096
    end
  end
  object fdmtbl_ConnectionProfiles: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 448
    Top = 24
    object fdmtbl_ConnectionProfilesHostName: TStringField
      FieldName = 'HostName'
      Size = 255
    end
    object fdmtbl_ConnectionProfilesHostPort: TIntegerField
      DefaultExpression = '1883'
      FieldName = 'HostPort'
    end
    object fdmtbl_ConnectionProfilesKeepAlive: TIntegerField
      DefaultExpression = '60'
      FieldName = 'KeepAlive'
    end
    object fdmtbl_ConnectionProfilesUserID: TStringField
      FieldName = 'UserID'
      Size = 255
    end
    object fdmtbl_ConnectionProfilesCleanSession: TBooleanField
      DefaultExpression = 'False'
      FieldName = 'CleanSession'
    end
    object fdmtbl_ConnectionProfilesWillTopic: TWideStringField
      FieldName = 'WillTopic'
      Size = 256
    end
    object fdmtbl_ConnectionProfilesWillPayload: TWideStringField
      FieldName = 'WillPayload'
      Size = 256
    end
    object fdmtbl_ConnectionProfilesWillRetain: TBooleanField
      DefaultExpression = 'False'
      FieldName = 'WillRetain'
    end
    object fdmtbl_ConnectionProfilesWillQoS: TStringField
      DefaultExpression = 'QoS 0'
      FieldName = 'WillQoS'
      Size = 10
    end
    object fdmtbl_ConnectionProfilesUserName: TStringField
      FieldName = 'UserName'
      Size = 255
    end
    object fdmtbl_ConnectionProfilesPassword: TStringField
      FieldName = 'Password'
      Size = 255
    end
  end
  object ds_ConnectionProfiles: TDataSource
    DataSet = fdmtbl_ConnectionProfiles
    Left = 448
    Top = 72
  end
  object tblAppProps: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 624
    Top = 64
    object tblAppPropsName: TStringField
      FieldName = 'Name'
      Size = 256
    end
    object tblAppPropsProps: TBlobField
      FieldName = 'Props'
    end
  end
end
