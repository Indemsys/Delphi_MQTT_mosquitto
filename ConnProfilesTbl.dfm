object frmConnProfilesTbl: TfrmConnProfilesTbl
  Left = 0
  Top = 0
  Caption = 'Connection profiles table'
  ClientHeight = 337
  ClientWidth = 1104
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object cxg_ConnProfiles: TcxGrid
    Left = 0
    Top = 0
    Width = 1104
    Height = 337
    Align = alClient
    TabOrder = 0
    object cxg_ConnProfilesDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dm.ds_ConnectionProfiles
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.DataRowSizing = True
      OptionsView.IndicatorWidth = 20
      object cxg_ConnProfilesDBTableView1HostName: TcxGridDBColumn
        DataBinding.FieldName = 'HostName'
        Width = 121
      end
      object cxg_ConnProfilesDBTableView1HostPort: TcxGridDBColumn
        DataBinding.FieldName = 'HostPort'
        Width = 64
      end
      object cxg_ConnProfilesDBTableView1KeepAlive: TcxGridDBColumn
        DataBinding.FieldName = 'KeepAlive'
        Width = 67
      end
      object cxg_ConnProfilesDBTableView1UserID: TcxGridDBColumn
        DataBinding.FieldName = 'UserID'
        Width = 100
      end
      object cxg_ConnProfilesDBTableView1UserName: TcxGridDBColumn
        DataBinding.FieldName = 'UserName'
        Width = 100
      end
      object cxg_ConnProfilesDBTableView1Password: TcxGridDBColumn
        DataBinding.FieldName = 'Password'
        Width = 100
      end
      object cxg_ConnProfilesDBTableView1CleanSession: TcxGridDBColumn
        DataBinding.FieldName = 'CleanSession'
        Width = 72
      end
      object cxg_ConnProfilesDBTableView1WillTopic: TcxGridDBColumn
        DataBinding.FieldName = 'WillTopic'
        Width = 122
      end
      object cxg_ConnProfilesDBTableView1WillPayload: TcxGridDBColumn
        DataBinding.FieldName = 'WillPayload'
        Width = 159
      end
      object cxg_ConnProfilesDBTableView1WillRetain: TcxGridDBColumn
        DataBinding.FieldName = 'WillRetain'
        Width = 55
      end
      object cxg_ConnProfilesDBTableView1WillQoS: TcxGridDBColumn
        DataBinding.FieldName = 'WillQoS'
        Width = 47
      end
    end
    object cxg_ConnProfilesLevel1: TcxGridLevel
      GridView = cxg_ConnProfilesDBTableView1
    end
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Active = False
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Position'
          'Top'
          'Width')
      end>
    StorageName = 'cxPropertiesStore1'
    StorageType = stStream
    Left = 832
    Top = 128
  end
end
