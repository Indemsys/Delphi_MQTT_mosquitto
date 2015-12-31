object frmVisWidgetsTbl: TfrmVisWidgetsTbl
  Left = 0
  Top = 0
  Caption = #1058#1072#1073#1083#1080#1094#1072' '#1074#1080#1079#1091#1072#1083#1100#1085#1099#1093' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1086#1074
  ClientHeight = 337
  ClientWidth = 979
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object cxg_VisualWidgets: TcxGrid
    Left = 0
    Top = 0
    Width = 979
    Height = 337
    Align = alClient
    TabOrder = 0
    object cxg_VisualWidgetsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dm.ds_Variables
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.DataRowSizing = True
      OptionsView.IndicatorWidth = 20
      object cxg_VisualWidgetsDBTableView1VarName: TcxGridDBColumn
        Caption = 'Variable name'
        DataBinding.FieldName = 'VarName'
        HeaderHint = #1048#1084#1103' '#1087#1077#1088#1077#1084#1077#1085#1085#1086#1081' '#1074' JSON '#1086#1073#1098#1077#1082#1090#1077
        Width = 179
      end
      object cxg_VisualWidgetsDBTableView1VarCaption: TcxGridDBColumn
        Caption = 'Variable Caption'
        DataBinding.FieldName = 'VarCaption'
        HeaderHint = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1077#1088#1077#1084#1077#1085#1085#1086#1081' '#1085#1072' '#1074#1080#1079#1091#1072#1083#1100#1085#1086#1084' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1077
        Width = 100
      end
      object cxg_VisualWidgetsDBTableView1WidgetClass: TcxGridDBColumn
        Caption = 'Widget Class'
        DataBinding.FieldName = 'WidgetClass'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          'Chart'
          'CircularScale'
          'HalfScale'
          'QLeftfScale'
          'Digital'
          'Linear')
        HeaderHint = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1083#1072#1089#1089#1072' '#1074#1080#1079#1091#1072#1083#1100#1085#1086#1075#1086' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072
        Width = 125
      end
      object cxg_VisualWidgetsDBTableView1DockPanelName: TcxGridDBColumn
        DataBinding.FieldName = 'DockPanelName'
        HeaderHint = #1059#1085#1080#1082#1072#1083#1100#1085#1086#1077' '#1080#1084#1103' '#1074#1080#1079#1091#1072#1083#1100#1085#1086#1075#1086' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072
        Options.Editing = False
        Options.Focusing = False
        Width = 180
      end
      object cxg_VisualWidgetsDBTableView1MaxVal: TcxGridDBColumn
        Caption = 'Max. value'
        DataBinding.FieldName = 'MaxVal'
        HeaderHint = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1087#1088#1080#1085#1080#1084#1072#1077#1084#1086#1077' '#1087#1077#1088#1077#1084#1077#1085#1085#1086#1081
      end
      object cxg_VisualWidgetsDBTableView1MinVal: TcxGridDBColumn
        Caption = 'Min. value'
        DataBinding.FieldName = 'MinVal'
        HeaderHint = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1087#1088#1080#1085#1080#1084#1072#1077#1084#1086#1077' '#1087#1077#1088#1077#1084#1077#1085#1085#1086#1081
      end
    end
    object cxg_VisualWidgetsLevel1: TcxGridLevel
      GridView = cxg_VisualWidgetsDBTableView1
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
    Left = 464
  end
end
