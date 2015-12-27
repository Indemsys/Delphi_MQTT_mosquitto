object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 578
  Width = 788
  object ds_tbl_Settings: TDataSource
    DataSet = tblSettings
    Left = 160
    Top = 152
  end
  object tblSettings: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 160
    Top = 96
    object tblSettings_main_form_props: TBlobField
      FieldName = 'main_form_props'
    end
    object tblSettings_du_props: TBlobField
      FieldName = 'du_props'
    end
    object tblSettingsAutoConnect: TBooleanField
      DefaultExpression = 'False'
      FieldName = 'AutoConnect'
    end
    object tblSettingsPubPayload: TWideMemoField
      FieldName = 'PubPayload'
      BlobType = ftWideMemo
      Size = 4096
    end
    object tblSettingsPubTopicMRU: TWideMemoField
      FieldName = 'PubTopicMRU'
      BlobType = ftWideMemo
      Size = 1024
    end
    object tblSettingsSubTopicMRU: TWideMemoField
      FieldName = 'SubTopicMRU'
      BlobType = ftWideMemo
      Size = 1024
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
  object tblSendedMessages: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 448
    Top = 152
    object tblSendedMessagesTime: TDateTimeField
      FieldName = 'Time'
      DisplayFormat = 'hh.mm.ss:zzz'
    end
    object tblSendedMessagesTopic: TWideStringField
      FieldName = 'Topic'
      Size = 256
    end
    object tblSendedMessagesPayload: TWideMemoField
      FieldName = 'Payload'
      BlobType = ftWideMemo
      Size = 4096
    end
    object tblSendedMessagesQoS: TIntegerField
      FieldName = 'QoS'
    end
    object tblSendedMessagesRetain: TBooleanField
      FieldName = 'Retain'
    end
  end
  object ds_ReceivedMessages: TDataSource
    DataSet = tblReceivedMessages
    Left = 632
    Top = 216
  end
  object ds_SendedMessages: TDataSource
    DataSet = tblSendedMessages
    Left = 440
    Top = 216
  end
  object tblReceivedMessages: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 632
    Top = 160
    object tblReceivedMessagesTime: TDateTimeField
      FieldName = 'Time'
      DisplayFormat = 'hh.mm.ss:zzz'
    end
    object tblReceivedMessagesmid: TIntegerField
      FieldName = 'mid'
    end
    object tblReceivedMessagesTopic: TWideStringField
      FieldName = 'Topic'
      Size = 256
    end
    object tblReceivedMessagesPayload: TWideMemoField
      FieldName = 'Payload'
      BlobType = ftWideMemo
      Size = 4096
    end
    object tblReceivedMessagesQoS: TIntegerField
      FieldName = 'QoS'
    end
    object tblReceivedMessagesRetain: TBooleanField
      FieldName = 'Retain'
    end
  end
  object tblConnectionProfiles: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.Persistent = True
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 448
    Top = 24
    object tblConnectionProfilesHostName: TStringField
      FieldName = 'HostName'
      Size = 255
    end
    object tblConnectionProfilesHostPort: TIntegerField
      DefaultExpression = '1883'
      FieldName = 'HostPort'
    end
    object tblConnectionProfilesKeepAlive: TIntegerField
      DefaultExpression = '60'
      FieldName = 'KeepAlive'
    end
    object tblConnectionProfilesUserID: TStringField
      FieldName = 'UserID'
      Size = 255
    end
    object tblConnectionProfilesCleanSession: TBooleanField
      DefaultExpression = 'False'
      FieldName = 'CleanSession'
    end
    object tblConnectionProfilesWillTopic: TWideStringField
      FieldName = 'WillTopic'
      Size = 256
    end
    object tblConnectionProfilesWillPayload: TWideStringField
      FieldName = 'WillPayload'
      Size = 256
    end
    object tblConnectionProfilesWillRetain: TBooleanField
      DefaultExpression = 'False'
      FieldName = 'WillRetain'
    end
    object tblConnectionProfilesWillQoS: TStringField
      DefaultExpression = 'QoS 0'
      FieldName = 'WillQoS'
      Size = 10
    end
    object tblConnectionProfilesUserName: TStringField
      FieldName = 'UserName'
      Size = 255
    end
    object tblConnectionProfilesPassword: TStringField
      FieldName = 'Password'
      Size = 255
    end
  end
  object ds_ConnectionProfiles: TDataSource
    DataSet = tblConnectionProfiles
    Left = 448
    Top = 72
  end
  object tblAppProps: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
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
  object tblPeriodicalSending: TFDMemTable
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode, rvStorePrettyPrint]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 440
    Top = 336
    object tblPeriodicalSendingEnabled: TBooleanField
      FieldName = 'Enabled'
    end
    object tblPeriodicalSendingTopic: TWideStringField
      FieldName = 'Topic'
      Required = True
      Size = 256
    end
    object tblPeriodicalSendingPayload: TWideMemoField
      FieldName = 'Payload'
      Required = True
      BlobType = ftWideMemo
      Size = 1024
    end
    object tblPeriodicalSendingQoS: TIntegerField
      DefaultExpression = '0'
      FieldName = 'QoS'
      Required = True
    end
    object tblPeriodicalSendingRetain: TBooleanField
      FieldName = 'Retain'
    end
    object tblPeriodicalSendingPeriodicity: TIntegerField
      DefaultExpression = '1000'
      FieldName = 'Periodicity'
      Required = True
    end
    object tblPeriodicalSendingFuncType: TStringField
      FieldName = 'FuncType'
      Required = True
      Size = 64
    end
    object tblPeriodicalSendingMin: TStringField
      FieldName = 'Min'
      Size = 32
    end
    object tblPeriodicalSendingMax: TStringField
      FieldName = 'Max'
      Size = 32
    end
    object tblPeriodicalSendingFuncPeriod: TIntegerField
      FieldName = 'FuncPeriod'
    end
    object tblPeriodicalSendingFuncOffs: TIntegerField
      FieldName = 'FuncOffs'
    end
  end
  object ds_PeriodicalSending: TDataSource
    DataSet = tblPeriodicalSending
    Left = 440
    Top = 392
  end
  object tblSubscriptions: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 608
    Top = 336
    object tblSubscriptionsSubscribe: TBooleanField
      FieldName = 'Subscribe'
    end
    object tblSubscriptionsTopic: TWideStringField
      FieldName = 'Topic'
      Size = 256
    end
    object tblSubscriptionsQoS: TIntegerField
      FieldName = 'QoS'
    end
  end
  object ds_Subscriptions: TDataSource
    DataSet = tblSubscriptions
    Left = 608
    Top = 400
  end
end
