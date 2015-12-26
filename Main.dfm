object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Test MQTT client'
  ClientHeight = 665
  ClientWidth = 1317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object dxlc_: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1317
    Height = 665
    Align = alClient
    TabOrder = 0
    object cxb_Connect: TcxButton
      Left = 1184
      Top = 55
      Width = 130
      Height = 43
      Action = act_Connect
      TabOrder = 12
    end
    object cxb_Disconnect: TcxButton
      Left = 1184
      Top = 99
      Width = 130
      Height = 45
      Action = act_Disconnect
      TabOrder = 13
    end
    object cxPageControl1: TcxPageControl
      Left = 3
      Top = 185
      Width = 1311
      Height = 252
      TabOrder = 14
      Properties.ActivePage = cxts_2
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 248
      ClientRectLeft = 4
      ClientRectRight = 1307
      ClientRectTop = 24
      object cxts_1: TcxTabSheet
        Caption = 'Publis/Subscribe'
        ImageIndex = 0
        object dxBevel1: TdxBevel
          Left = 0
          Top = 22
          Width = 32
          Height = 33
        end
        object dxlc_PS: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 1303
          Height = 224
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
          object cxm_PubPayload: TcxMemo
            Left = 59
            Top = 43
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 1
            Height = 100
            Width = 502
          end
          object cxmru_PubTopic: TcxMRUEdit
            Left = 59
            Top = 21
            Hint = #1044#1083#1103' '#1086#1095#1080#1089#1090#1082#1080' '#1085#1072#1078#1072#1090#1100' Ctrl+E'
            ParentShowHint = False
            Properties.ClearKey = 16453
            Properties.DropDownSizeable = True
            Properties.ShowEllipsis = False
            ShowHint = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 0
            Width = 502
          end
          object cxmru_SubTopic: TcxMRUEdit
            Left = 628
            Top = 21
            Hint = #1044#1083#1103' '#1086#1095#1080#1089#1090#1082#1080' '#1085#1072#1078#1072#1090#1100' Ctrl+E'
            ParentShowHint = False
            Properties.ClearKey = 16453
            Properties.ShowEllipsis = False
            ShowHint = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 5
            Width = 644
          end
          object cxrg_PubQoS: TcxRadioGroup
            Left = 96
            Top = 144
            Caption = 'Quality of Service'
            Properties.Columns = 3
            Properties.Items = <
              item
                Caption = 'QoS 0'
              end
              item
                Caption = 'QoS 1'
              end
              item
                Caption = 'QoS 2'
              end>
            ItemIndex = 0
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            TabOrder = 3
            Height = 55
            Width = 200
          end
          object cxrg_SubQoS: TcxRadioGroup
            Left = 597
            Top = 43
            Caption = 'Quality of Service'
            Properties.Columns = 3
            Properties.Items = <
              item
                Caption = 'QoS 0'
              end
              item
                Caption = 'QoS 1'
              end
              item
                Caption = 'QoS 2'
              end>
            ItemIndex = 0
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            TabOrder = 6
            Height = 55
            Width = 200
          end
          object cxchb_PubRetain: TcxCheckBox
            Left = 15
            Top = 161
            Caption = 'Retain:'
            Properties.Alignment = taRightJustify
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 2
            Width = 80
          end
          object cxb_Publish: TcxButton
            Left = 451
            Top = 151
            Width = 110
            Height = 40
            Action = act_Publish
            TabOrder = 4
          end
          object cxb_Subscribe: TcxButton
            Left = 1067
            Top = 50
            Width = 110
            Height = 40
            Action = act_Subscribe
            TabOrder = 7
          end
          object cxb_Unsubscribe: TcxButton
            Left = 1178
            Top = 50
            Width = 110
            Height = 40
            Action = act_Unsubscribe
            TabOrder = 8
          end
          object dxlc_PSGroup_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxlc_PS_Publish: TdxLayoutGroup
            Parent = dxlc_PSGroup_Root
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Publish'
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = True
            SizeOptions.SizableVert = False
            SizeOptions.Width = 570
            ButtonOptions.Buttons = <>
            Index = 0
          end
          object dxlc_PS_Subscribe: TdxLayoutGroup
            Parent = dxlc_PSGroup_Root
            AlignHorz = ahClient
            CaptionOptions.Text = 'Subscribe'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            ButtonOptions.Buttons = <>
            Index = 2
          end
          object dxlc_PSItem3: TdxLayoutItem
            Parent = dxlc_PS_Publish
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Payload:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            Control = cxm_PubPayload
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxlc_PSItem5: TdxLayoutItem
            Parent = dxlc_PS_Publish
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Topic:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            Control = cxmru_PubTopic
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlc_PSItem1: TdxLayoutItem
            Parent = dxlc_PS_Subscribe
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Topic:'
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            Control = cxmru_SubTopic
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlc_PSItem2: TdxLayoutItem
            Parent = dxlc_PSGroup1
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxRadioGroup1'
            CaptionOptions.Visible = False
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            Control = cxrg_PubQoS
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxlc_PSItem6: TdxLayoutItem
            Parent = dxlc_PSGroup2
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxRadioGroup2'
            CaptionOptions.Visible = False
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            Control = cxrg_SubQoS
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlc_PSItem7: TdxLayoutItem
            Parent = dxlc_PSGroup1
            AlignVert = avCenter
            CaptionOptions.Visible = False
            SizeOptions.AssignedValues = [sovSizableHorz]
            SizeOptions.SizableHorz = True
            Control = cxchb_PubRetain
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlc_PSGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxlc_PS_Publish
            LayoutDirection = ldHorizontal
            Index = 2
            AutoCreated = True
          end
          object dxlc_PSGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxlc_PS_Subscribe
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
          object dxlc_PSSplitterItem1: TdxLayoutSplitterItem
            Parent = dxlc_PSGroup_Root
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Splitter'
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = True
            SizeOptions.SizableVert = False
            SizeOptions.Width = 10
            Index = 1
          end
          object dxlc_PSItem9: TdxLayoutItem
            Parent = dxlc_PSGroup1
            AlignHorz = ahRight
            AlignVert = avCenter
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = cxb_Publish
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxlc_PSItem10: TdxLayoutItem
            Parent = dxlc_PSGroup2
            AlignHorz = ahRight
            AlignVert = avCenter
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = cxb_Subscribe
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxlc_PSItem11: TdxLayoutItem
            Parent = dxlc_PSGroup2
            AlignHorz = ahRight
            AlignVert = avCenter
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = cxb_Unsubscribe
            ControlOptions.ShowBorder = False
            Index = 2
          end
        end
      end
      object cxts_2: TcxTabSheet
        Caption = #1055#1077#1088#1080#1086#1076#1080#1095#1077#1089#1082#1072#1103' '#1087#1091#1073#1083#1080#1082#1072#1094#1080#1103
        ImageIndex = 1
        object dxlc_1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 1303
          Height = 224
          Align = alClient
          TabOrder = 0
          object cxg_PeriodicalSending: TcxGrid
            Left = 10
            Top = 10
            Width = 1283
            Height = 153
            TabOrder = 0
            LookAndFeel.Kind = lfStandard
            LookAndFeel.NativeStyle = True
            LookAndFeel.SkinName = ''
            object cxg_PeriodicalSendingDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.InfoPanel.Visible = True
              Navigator.Visible = True
              DataController.DataSource = dm.ds_PeriodicalSending
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsCustomize.DataRowSizing = True
              OptionsSelection.MultiSelect = True
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 20
              object cxg_PeriodicalSendingDBTableView1Enabled: TcxGridDBColumn
                DataBinding.FieldName = 'Enabled'
                HeaderHint = #1056#1072#1079#1088#1077#1096#1077#1085#1080#1077' '#1076#1072#1085#1085#1086#1081' '#1087#1091#1073#1083#1080#1082#1072#1094#1080#1080
                Width = 52
              end
              object cxg_PeriodicalSendingDBTableView1Topic: TcxGridDBColumn
                DataBinding.FieldName = 'Topic'
                HeaderHint = 'Topic '#1087#1072#1082#1077#1090#1072
                Width = 177
              end
              object cxg_PeriodicalSendingDBTableView1Payload: TcxGridDBColumn
                DataBinding.FieldName = 'Payload'
                PropertiesClassName = 'TcxMemoProperties'
                HeaderHint = #1057#1090#1088#1086#1082#1072' '#1092#1086#1088#1084#1072#1090#1072' '#1076#1072#1085#1085#1099#1093' '#1087#1072#1082#1077#1090#1072' '
                Width = 210
              end
              object cxg_PeriodicalSendingDBTableView1QoS: TcxGridDBColumn
                DataBinding.FieldName = 'QoS'
                HeaderHint = #1040#1090#1090#1088#1080#1073#1091#1090' QoS '#1087#1072#1082#1077#1090#1072
                Width = 35
              end
              object cxg_PeriodicalSendingDBTableView1Retain: TcxGridDBColumn
                DataBinding.FieldName = 'Retain'
                HeaderHint = #1060#1083#1072#1075' Retain'
                Width = 45
              end
              object cxg_PeriodicalSendingDBTableView1Periodicity: TcxGridDBColumn
                Caption = 'Timeout (ms)'
                DataBinding.FieldName = 'Periodicity'
                HeaderHint = #1055#1077#1088#1080#1086#1076#1080#1095#1085#1086#1089#1090#1100' '#1087#1086#1089#1099#1083#1082#1080' (ms)'
                Width = 131
              end
              object cxg_PeriodicalSendingDBTableView1FuncType: TcxGridDBColumn
                Caption = 'Function'
                DataBinding.FieldName = 'FuncType'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'Random'
                  'Sinus')
                HeaderHint = #1058#1080#1087' '#1092#1091#1085#1082#1094#1080#1080
                Width = 100
              end
              object cxg_PeriodicalSendingDBTableView1Min: TcxGridDBColumn
                DataBinding.FieldName = 'Min'
                HeaderHint = #1052#1080#1085#1080#1084#1091#1084' '#1092#1091#1085#1082#1094#1080#1080
                Width = 47
              end
              object cxg_PeriodicalSendingDBTableView1Max: TcxGridDBColumn
                DataBinding.FieldName = 'Max'
                HeaderHint = #1052#1072#1082#1089#1080#1084#1091#1084' '#1092#1091#1085#1082#1094#1080#1080
                Width = 58
              end
              object cxg_PeriodicalSendingDBTableView1FuncPeriod: TcxGridDBColumn
                Caption = 'Period'
                DataBinding.FieldName = 'FuncPeriod'
                HeaderHint = #1055#1077#1088#1080#1086#1076' '#1092#1091#1085#1082#1094#1080#1080' ('#1074' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1077' '#1086#1090#1089#1095#1077#1090#1086#1074')'
                Width = 58
              end
              object cxg_PeriodicalSendingDBTableView1FuncOffs: TcxGridDBColumn
                Caption = 'Offs'
                DataBinding.FieldName = 'FuncOffs'
                HeaderHint = #1057#1084#1077#1097#1077#1085#1080#1077' '#1072#1088#1075#1091#1084#1077#1085#1090#1072' '#1092#1091#1085#1082#1094#1080#1080' ('#1074' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1077' '#1086#1090#1089#1095#1077#1090#1086#1074')'
              end
            end
            object cxg_PeriodicalSendingLevel1: TcxGridLevel
              GridView = cxg_PeriodicalSendingDBTableView1
            end
          end
          object cxb_4: TcxButton
            Left = 10
            Top = 169
            Width = 120
            Height = 45
            Action = act_StartPeriodicSending
            TabOrder = 1
          end
          object cxb_5: TcxButton
            Left = 136
            Top = 169
            Width = 120
            Height = 45
            Action = act_StopPeriodicSending
            TabOrder = 2
          end
          object dxlc_1Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxlc_1Item1: TdxLayoutItem
            Parent = dxlc_1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Visible = False
            Control = cxg_PeriodicalSending
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlc_1Item2: TdxLayoutItem
            Parent = dxlc_1Group1
            AlignHorz = ahLeft
            AlignVert = avBottom
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = cxb_4
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlc_1Item3: TdxLayoutItem
            Parent = dxlc_1Group1
            AlignHorz = ahLeft
            AlignVert = avBottom
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = cxb_5
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxlc_1Group1: TdxLayoutAutoCreatedGroup
            Parent = dxlc_1Group_Root
            AlignVert = avBottom
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
        end
      end
    end
    object cxnav_ConnProfiles: TcxDBNavigator
      Left = 764
      Top = 148
      Width = 407
      Height = 24
      Buttons.OnButtonClick = cxnav_ConnProfilesButtonsButtonClick
      Buttons.CustomButtons = <
        item
          Hint = #1054#1090#1082#1088#1099#1090#1100' '#1090#1072#1073#1083#1080#1094#1091' '#1087#1088#1086#1092#1080#1083#1077#1081
          ImageIndex = 0
        end>
      Buttons.Images = cxImgl_small
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = dm.ds_ConnectionProfiles
      TabOrder = 11
    end
    object cxte_HostName: TcxDBTextEdit
      Left = 72
      Top = 21
      DataBinding.DataField = 'HostName'
      DataBinding.DataSource = dm.ds_ConnectionProfiles
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 941
    end
    object cxsped_HostPort: TcxDBSpinEdit
      Left = 1045
      Top = 21
      DataBinding.DataField = 'HostPort'
      DataBinding.DataSource = dm.ds_ConnectionProfiles
      Properties.MaxValue = 65535.000000000000000000
      Properties.SpinButtons.Position = sbpHorzLeftRight
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 85
    end
    object cxsped_KeepAlive: TcxDBSpinEdit
      Left = 1243
      Top = 21
      DataBinding.DataField = 'KeepAlive'
      DataBinding.DataSource = dm.ds_ConnectionProfiles
      Properties.MaxValue = 10000.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.SpinButtons.Position = sbpHorzLeftRight
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 59
    end
    object cxte_UserID: TcxDBTextEdit
      Left = 72
      Top = 73
      DataBinding.DataField = 'UserID'
      DataBinding.DataSource = dm.ds_ConnectionProfiles
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 261
    end
    object cxte_UserName: TcxDBTextEdit
      Left = 60
      Top = 129
      DataBinding.DataField = 'UserName'
      DataBinding.DataSource = dm.ds_ConnectionProfiles
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 285
    end
    object cxte_Password: TcxDBTextEdit
      Left = 60
      Top = 151
      DataBinding.DataField = 'Password'
      DataBinding.DataSource = dm.ds_ConnectionProfiles
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 285
    end
    object cxte_WillTopic: TcxDBTextEdit
      Left = 402
      Top = 73
      DataBinding.DataField = 'WillTopic'
      DataBinding.DataSource = dm.ds_ConnectionProfiles
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 769
    end
    object cxte_WillPayload: TcxDBTextEdit
      Left = 402
      Top = 95
      DataBinding.DataField = 'WillPayload'
      DataBinding.DataSource = dm.ds_ConnectionProfiles
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 769
    end
    object cxchb_CleanSession: TcxDBCheckBox
      Left = 15
      Top = 95
      Caption = 'Clean session'
      DataBinding.DataField = 'CleanSession'
      DataBinding.DataSource = dm.ds_ConnectionProfiles
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 318
    end
    object cxchb_WillRetain: TcxDBCheckBox
      Left = 358
      Top = 134
      Caption = 'Retain'
      DataBinding.DataField = 'WillRetain'
      DataBinding.DataSource = dm.ds_ConnectionProfiles
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 71
    end
    object cxrg_WillQoS: TcxDBRadioGroup
      Left = 430
      Top = 117
      Caption = 'Quality of Service'
      DataBinding.DataField = 'WillQoS'
      DataBinding.DataSource = dm.ds_ConnectionProfiles
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'QoS 0'
        end
        item
          Caption = 'QoS 1'
        end
        item
          Caption = 'QoS 2'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 10
      Height = 55
      Width = 183
    end
    object dxStatusBar: TdxStatusBar
      Left = 3
      Top = 642
      Width = 1311
      Height = 23
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          MinWidth = 200
          Width = 400
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxm_Log: TcxMemo
      Left = 3
      Top = 464
      Properties.ScrollBars = ssBoth
      Properties.WordWrap = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Height = 159
      Width = 426
    end
    object cxb_1: TcxButton
      Left = 3
      Top = 616
      Width = 30
      Height = 25
      Action = act_ClearLog
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
    end
    object cxg_Sended: TcxGrid
      Left = 441
      Top = 464
      Width = 400
      Height = 161
      TabOrder = 17
      object cxg_SendedDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dm.ds_SendedMessages
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.DataRowSizing = True
        OptionsSelection.MultiSelect = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 20
        object cxg_SendedDBTableView1Time: TcxGridDBColumn
          DataBinding.FieldName = 'Time'
          Width = 65
        end
        object cxg_SendedDBTableView1Topic: TcxGridDBColumn
          DataBinding.FieldName = 'Topic'
          Width = 100
        end
        object cxg_SendedDBTableView1Payload: TcxGridDBColumn
          DataBinding.FieldName = 'Payload'
          Width = 100
        end
        object cxg_SendedDBTableView1QoS: TcxGridDBColumn
          DataBinding.FieldName = 'QoS'
          Width = 38
        end
        object cxg_SendedDBTableView1Retain: TcxGridDBColumn
          DataBinding.FieldName = 'Retain'
          Width = 45
        end
      end
      object cxg_SendedLevel1: TcxGridLevel
        GridView = cxg_SendedDBTableView1
      end
    end
    object cxb_2: TcxButton
      Left = 441
      Top = 618
      Width = 30
      Height = 23
      Action = act_ClearSended
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
    end
    object cxg_Received: TcxGrid
      Left = 853
      Top = 464
      Width = 461
      Height = 161
      TabOrder = 19
      object cxg_ReceivedDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dm.ds_ReceivedMessages
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.DataRowSizing = True
        OptionsSelection.MultiSelect = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 20
        object cxg_ReceivedDBTableView1Time: TcxGridDBColumn
          DataBinding.FieldName = 'Time'
          Width = 100
        end
        object cxg_ReceivedDBTableView1mid: TcxGridDBColumn
          Caption = 'MsgID'
          DataBinding.FieldName = 'mid'
        end
        object cxg_ReceivedDBTableView1Topic: TcxGridDBColumn
          DataBinding.FieldName = 'Topic'
          Width = 100
        end
        object cxg_ReceivedDBTableView1Payload: TcxGridDBColumn
          DataBinding.FieldName = 'Payload'
          Width = 100
        end
        object cxg_ReceivedDBTableView1QoS: TcxGridDBColumn
          DataBinding.FieldName = 'QoS'
        end
        object cxg_ReceivedDBTableView1Retain: TcxGridDBColumn
          DataBinding.FieldName = 'Retain'
        end
      end
      object cxg_ReceivedLevel1: TcxGridLevel
        GridView = cxg_ReceivedDBTableView1
      end
    end
    object cxb_3: TcxButton
      Left = 853
      Top = 618
      Width = 30
      Height = 23
      Action = act_ClearReceived
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
    end
    object dxlc_Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxlc_GroupConnectionAttr: TdxLayoutGroup
      Parent = dxlc_Group6
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = #1040#1090#1088#1080#1073#1091#1090#1099' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxlc_Group3: TdxLayoutAutoCreatedGroup
      Parent = dxlc_Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxlc_GroupWillConfig: TdxLayoutGroup
      Parent = dxlc_Group3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #1050#1086#1085#1092#1080#1075#1091#1088#1072#1094#1080#1103' '#1079#1072#1074#1077#1097#1072#1085#1080#1103
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxlc_Group4: TdxLayoutAutoCreatedGroup
      Parent = dxlc_GroupWillConfig
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxlc_Group5: TdxLayoutGroup
      Parent = dxlc_Group6
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxlc_Group6: TdxLayoutAutoCreatedGroup
      Parent = dxlc_Group3
      AlignHorz = ahLeft
      Index = 0
      AutoCreated = True
    end
    object dxlc_ConnDisconnButtons: TdxLayoutGroup
      Parent = dxlc_Group3
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 40
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxlc_Item2: TdxLayoutItem
      Parent = dxlc_ConnDisconnButtons
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxb_Connect
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlc_Item3: TdxLayoutItem
      Parent = dxlc_ConnDisconnButtons
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxb_Disconnect
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlc_Group_ConnectionParams: TdxLayoutGroup
      Parent = dxlc_Group_Root
      AlignVert = avTop
      CaptionOptions.Text = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxlc_PageControl: TdxLayoutItem
      Parent = dxlc_Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      Control = cxPageControl1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlc_Item5: TdxLayoutItem
      Parent = dxlc_Group4
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = #1053#1072#1074#1080#1075#1072#1094#1080#1103' '#1087#1086' '#1087#1088#1086#1092#1080#1083#1103#1084' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = cxnav_ConnProfiles
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlc_HostName: TdxLayoutItem
      Parent = dxlc_Group_ConnectionParams
      AlignHorz = ahClient
      CaptionOptions.Text = 'Host name:'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = cxte_HostName
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlc_HostPort: TdxLayoutItem
      Parent = dxlc_Group_ConnectionParams
      AlignHorz = ahRight
      CaptionOptions.Text = 'Port:'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Padding.Left = 5
      Padding.AssignedValues = [lpavLeft]
      Control = cxsped_HostPort
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlc_KeepAlive: TdxLayoutItem
      Parent = dxlc_Group_ConnectionParams
      AlignHorz = ahRight
      CaptionOptions.Text = 'Keepalive interval (s):'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Padding.Left = 5
      Padding.AssignedValues = [lpavLeft]
      Control = cxsped_KeepAlive
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxlc_UserID: TdxLayoutItem
      Parent = dxlc_GroupConnectionAttr
      CaptionOptions.Text = 'User ID:'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = cxte_UserID
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlc_ItemUserName: TdxLayoutItem
      Parent = dxlc_Group5
      CaptionOptions.Text = 'User name:'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = cxte_UserName
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlc_ItemPassword: TdxLayoutItem
      Parent = dxlc_Group5
      CaptionOptions.Text = 'Password:'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = cxte_Password
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlc_WillTopic: TdxLayoutItem
      Parent = dxlc_GroupWillConfig
      CaptionOptions.Text = 'Topic:'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = cxte_WillTopic
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlc_WillPayload: TdxLayoutItem
      Parent = dxlc_GroupWillConfig
      CaptionOptions.Text = 'Payload:'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = cxte_WillPayload
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlc_Item4: TdxLayoutItem
      Parent = dxlc_GroupConnectionAttr
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = cxchb_CleanSession
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlc_Item1: TdxLayoutItem
      Parent = dxlc_Group4
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clRight
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = cxchb_WillRetain
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlc_WillQoS: TdxLayoutItem
      Parent = dxlc_Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = cxrg_WillQoS
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlc_Group2: TdxLayoutGroup
      Parent = dxlc_Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxlc_SplitterItem3: TdxLayoutSplitterItem
      Parent = dxlc_Group_Root
      AlignVert = avTop
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = True
      SizeOptions.Height = 10
      Index = 3
    end
    object dxlc_StatusBar: TdxLayoutItem
      Parent = dxlc_Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = dxStatusBar
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxlc_GroupLog: TdxLayoutGroup
      Parent = dxlc_Group2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Log'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 286
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxlc_Log: TdxLayoutItem
      Parent = dxlc_GroupLog
      AlignVert = avClient
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Log:'
      CaptionOptions.Layout = clTop
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = cxm_Log
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlc_Item7: TdxLayoutItem
      Parent = dxlc_GroupLog
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxb_1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlc_GroupSended: TdxLayoutGroup
      Parent = dxlc_Group2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxlc_SendedTable: TdxLayoutItem
      Parent = dxlc_GroupSended
      AlignVert = avClient
      CaptionOptions.Text = #1054#1090#1087#1088#1072#1074#1083#1077#1085#1085#1099#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103':'
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = cxg_Sended
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlc_Item8: TdxLayoutItem
      Parent = dxlc_GroupSended
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxb_2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlc_GroupReveived: TdxLayoutGroup
      Parent = dxlc_Group2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 4
    end
    object dxlc_Item6: TdxLayoutItem
      Parent = dxlc_GroupReveived
      AlignVert = avClient
      CaptionOptions.Text = #1055#1088#1080#1085#1103#1090#1099#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103':'
      CaptionOptions.Layout = clTop
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      Control = cxg_Received
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlc_Item9: TdxLayoutItem
      Parent = dxlc_GroupReveived
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxb_3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlc_SplitterItem2: TdxLayoutSplitterItem
      Parent = dxlc_Group2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 10
      Index = 1
    end
    object dxlc_SplitterItem1: TdxLayoutSplitterItem
      Parent = dxlc_Group2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Width = 10
      Index = 3
    end
  end
  object cxPropertiesStore: TcxPropertiesStore
    Active = False
    Components = <
      item
        Component = cxchb_PubRetain
        Properties.Strings = (
          'Checked')
      end
      item
        Component = cxmru_PubTopic
        Properties.Strings = (
          'Properties.LookupItems'
          'Text')
      end
      item
        Component = cxmru_SubTopic
        Properties.Strings = (
          'Properties.LookupItems'
          'Text')
      end
      item
        Component = cxm_PubPayload
        Properties.Strings = (
          'Lines')
      end
      item
        Component = cxPageControl1
        Properties.Strings = (
          'Properties.ActivePage')
      end
      item
        Component = cxrg_PubQoS
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cxrg_SubQoS
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = dxlc_GroupLog
        Properties.Strings = (
          'SizeOptions.Width')
      end
      item
        Component = dxlc_GroupSended
        Properties.Strings = (
          'SizeOptions.Width')
      end
      item
        Component = dxlc_Log
        Properties.Strings = (
          'SizeOptions.Width')
      end
      item
        Component = dxlc_PageControl
        Properties.Strings = (
          'SizeOptions.Height')
      end
      item
        Component = dxlc_PS_Publish
        Properties.Strings = (
          'SizeOptions.Width')
      end
      item
        Component = dxlc_SendedTable
        Properties.Strings = (
          'SizeOptions.Width')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Position'
          'Top'
          'Width')
      end>
    StorageName = 'cxPropertiesStore'
    StorageType = stStream
    Left = 424
    Top = 65528
  end
  object ActionList1: TActionList
    Images = cxImgl_big
    Left = 352
    Top = 65528
    object act_Connect: TAction
      Caption = 'Connect'
      ImageIndex = 0
      OnExecute = act_ConnectExecute
    end
    object act_Disconnect: TAction
      Caption = 'Disconnect'
      ImageIndex = 1
      OnExecute = act_DisconnectExecute
    end
    object act_Publish: TAction
      Caption = 'Publish'
      ImageIndex = 5
      OnExecute = act_PublishExecute
    end
    object act_Subscribe: TAction
      Caption = 'Subscribe'
      ImageIndex = 3
      OnExecute = act_SubscribeExecute
    end
    object act_Unsubscribe: TAction
      Caption = 'Unsubscribe'
      ImageIndex = 4
      OnExecute = act_UnsubscribeExecute
    end
    object act_StartPeriodicSending: TAction
      Caption = #1057#1090#1072#1088#1090#1086#1074#1072#1090#1100
      ImageIndex = 6
      OnExecute = act_StartPeriodicSendingExecute
    end
    object act_StopPeriodicSending: TAction
      Caption = #1054#1089#1090#1072#1085#1086#1074#1080#1090#1100' '
      ImageIndex = 7
      OnExecute = act_StopPeriodicSendingExecute
    end
  end
  object cxImgl_big: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = -1048368
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000007000000110000
          0016000000160000001600000016000000160000001600000010000000060000
          0001000000000000000100000007000000110000001600000016000000160000
          0016000000160000001600000010000000060000000100000000000000000000
          000000000000000000000000000000000001000000080000001F000000390000
          00430000004300000043000000430000004300000042000000370000001E0000
          000800000001000000080000001F000000390000004300000043000000430000
          00430000004300000042000000370000001E0000000800000001000000000000
          0000000000000000000000000000000000060000001E0A0A0A564D4B4AFC4C4A
          49FF4C4A49FF4D4B4AFF454343FF3A3837FF3D3B3AFF3C3A39EF090808570000
          001E0000000D0000001E09090956434140FC3D3B3AFF3A3838FF42403FFF4D4B
          4AFF4C4A49FF4C4A49FF464443EF0B0A0A570000001F00000007000000000000
          0000000000000000000000000000000000100B0B0B505B5957FF979595FFB7B5
          B3FFB7B5B3FFB8B6B4FFBAB9B6FF9C9A98FF959390FF7C7A7AFF4B4948FF0808
          08530000002C090908534C4A48FF7D7B79FF959391FF979593FFB8B7B5FFB9B7
          B5FFB7B6B4FFB7B5B3FF989695FF5B5957FF0B0B0A5100000011000000000000
          000000000000000000000000000000000016545251EDA4A29FFFBBB9B8FF7B79
          78FF5F5E5FFF535253FF585656FF646260FF656361FF9D9B99FF8B8986FF4B49
          47F60000004D464443E88A8887FF9D9B99FF676562FF615F5DFF5A5858FF5756
          57FF626162FF7C7B7AFFBBBAB9FFA4A29FFF5B5958FC00000016000000000000
          000000000000000000000000000000000016615F5EFFD3D1CFFF838282FF8781
          77FFCCBFA6FFE0D1B5FF736F69FF575555FF565453FF555352FF565453FF5856
          55FF595655FF585655FF565453FF555352FF565453FF585656FF67625CFF9E86
          6BFF927D67FF72685FFF848383FFD3D1CFFF615F5EFF00000016000000000000
          000000000000000000000000000000000016676565FFE1DFDDFF7E7C7CFFAF9F
          89FFC6B396FFC8B497FF626161FFF3F3F4FFF0F0F1FFEFEFEFFFEFEFF0FFEFF0
          F0FFEFF0F0FFEFF0F0FFEFEFF0FFEFEFEFFFF0F0F1FFF3F4F5FF646363FFD8CB
          B4FFD5C9B2FFB9AF9DFF7E7D7CFFE1DFDDFF676564FF00000016000000040000
          000D000000150000001600000016000000266D6C6CFFEAE8E8FF959494FF9690
          85FFE4DBC7FFEFE4CEFF8A8682FF767472FF73706EFF716F6CFF72706EFF7372
          70FF737270FF737270FF726F6DFF716F6CFF73716EFF767472FF87837FFFD8C9
          B2FFD6C6B0FF8F8980FF969494FFEBE9E8FF6F6C6CFF000000100000000D0000
          002B0000003F0000004300000043000000486A6A6BF0CFCFCFFFE5E4E4FF9492
          92FF6C6B6BFF6E6C6DFF716F6FFF716F6EFF9F9D9CFFE8E7E6FFC9CACAFF8582
          7EFFDCCEB6FF7E7C7AFFD2D2D2FFE8E7E6FF979594FF716F6EFF717070FF6E6D
          6EFF6D6B6CFF9C9A9AFFE5E4E4FFC9C8C7FF6C6A68E90000000600000015695B
          4BC497836CFF95816BFF95816BFF96816AFF917E6AFF7E7E7FFFCCCBCCFFF3F2
          F2FFF3F3F2FFF4F3F3FFF5F4F4FFF4F4F3FFF3F3F2FFCCCCCDFF807F7EFF907D
          69FF957E66FF907D69FF7F8080FFCDCDCEFFF4F3F3FFF4F4F3FFF5F4F4FFF4F4
          F4FFF4F3F3FFF3F3F2FFCDCDCDFF848280FF0D0D0D2F00000001000000169783
          6EFFD1BA9DFFC7AF8FFFC6AD8EFFC5AD8EFFC6AD8DFFB7A387FF88837FFF7979
          7AFF7A797AFF7A797AFF7A797AFF7A797AFF79797AFF83817DFFB8A387FFC6AD
          8CFFC6AD8DFFC7AE8DFFBEAB90FF827F7BFF7C7C7CFF7A7979FF7A7979FF7A79
          79FF7B7A79FF7C7B7BFF8B8987FF998670FF0000001600000000000000169884
          6DFFD2BDA1FFD9D1BDFFECECE7FFEBECE9FFEBECE9FFEBECE9FFECECE9FFECEC
          E8FFECECE8FFECEBE8FFECEBE8FFECECE8FFEDECE8FFECECE9FFECECE9FFEBEC
          E9FFECECE7FFD9D2BDFFCEB89BFF947E65FFD3C5AFFFFFFFF4FFCEBFA8FFFFFF
          F3FFD0C1ABFFD2C4AEFFE1D6C6FF9C866DFF0000001600000000000000169984
          6EFFD6C2A8FFD2CBB8FFE18E24FFE3911EFFE99822FFEE9E22FFF3A422FFF8AA
          22FFFDB023FFFFB423FFFEB123FFF9AB22FFF5A622FFEFA022FFEA9922FFE693
          20FFE18919FFD2CCB9FFD1BDA2FF927D65FFFFFFF6FFCABCA6FFFFFAEEFFC9BB
          A5FFFFFCF0FFCEC0ABFFDFD7C7FF9B866EFF0000001600000000000000169985
          70FFDAC8B2FFCCC4B3FFE39531FFE79E3AFFE89D2FFFECA12EFFF1A82FFFF5AD
          2FFFFAB330FFFEB830FFFBB530FFF6AF2FFFF2A92FFFEEA42FFFE99E2FFFE598
          2CFFE18F23FFCCC5B5FFD7C3AAFF937D67FFCFC2ADFFFFFAEFFFC9BBA6FFFFF9
          EEFFCBBDA8FFCEC0ACFFE1D8CAFF9A856EFF0000001600000000000000169C87
          70FFDFCFB9FFC7BEACFFE29532FFE5A041FFEAA644FFECA537FFF0A630FFF3AC
          31FFF7B031FFFAB233FFF7B133FFF4AD32FFF1A832FFECA332FFE89E32FFE498
          2FFFE18F25FFC7BFAEFFDAC9B2FF958068FFFFFFF6FFCDBFAAFFFFFBEFFFCCBE
          A9FFFFFCF0FFCFC2ADFFE3DCCEFF9B866FFF0000001600000000000000169C88
          72FFE4D5C1FFC1B7A4FFE19130FFE39E3DFFE8A645FFEEAC4DFFEFAC45FFF1A9
          33FFF3AA2FFFF4AC30FFF3AC30FFF1A931FFEEA531FFEBA131FFE79C30FFE296
          2EFFE08D24FFC1B7A6FFDFD0BAFF97816BFFD5C6B4FFD1C2AFFFD0C1AEFFD0C2
          AFFFD0C1AEFFD1C2AFFFE7DED2FF9C8770FF0000001600000000000000169D89
          73FFE8DCC9FFBCB19DFFDF8E2EFFE1993CFFE6A142FFEAA849FFEDAF4FFFF0B4
          55FFF1B553FFF1AF44FFF0AB3BFFECA22CFFEBA02DFFE79B2CFFE3972BFFDF91
          29FFDF8921FFBCB09CFFE4D6C1FF99836DFFD8CAB6FFD5C6B2FFD4C5B1FFD4C6
          B0FFD4C6AFFFD2C5AFFFE8E0D5FF9D8871FF0000001600000000000000169F8B
          75FFEDE2D0FFB7A995FFDC8C2CFFDF973AFFE39D40FFE7A345FFEAA94BFFECAD
          51FFEEB257FFEFB55DFFEFB862FFF0B968FFEFBA6EFFEBB66AFFEBB66EFFEBB9
          78FFEAB573FFB6A792FFE9DCC9FFA08672FFE6CEBDFFE3CBB9FFDFCBB4FFE2D0
          AFFFE0CFAEFFD8C9AFFFEBE5D8FF9E8872FF000000160000000000000016A08B
          75FFF2E9D8FFB1A38EFFDA8629FFDC9238FFE0993FFFE39F43FFE6A448FFE8A8
          4DFFEAAC52FFEBAF57FFEBB15DFFEBB262FFEBB466FFEAB46CFFE9B571FFE8B3
          73FFE9AF6FFFB0A088FFF0E2D1FFAA8976FF008E42FF008C3DFFEFD1B6FF0018
          E7FF0017E6FFDFCEAEFFEEE6DAFF9F8973FF000000160000000000000016A18C
          77FFF8EEDFFFAC9C86FFD68227FFD88E35FFDC943DFFE09A41FFE29F46FFE4A3
          4BFFE6A650FFE7AA55FFE8AC5AFFE8AD5FFFE7AE63FFE7AF68FFE6B06DFFE6AF
          71FFE6AD6EFFAB9880FFF4E8D9FFAA8878FF00C856FF00C652FFECD0B6FF7966
          FFFF7665FFFFDECDAEFFF0E8DEFF9F8973FF000000160000000000000016A38E
          77FFFBF4E7FFA7967EFFD37D26FFD68732FFD98F39FFDD943EFFDF9945FFE29D
          48FFE3A14DFFE4A453FFE5A658FFE5A85DFFE5A962FFE4AC66FFE4AB6BFFE4AD
          70FFE5AC6EFFA69278FFF8EEE0FFA48A76FFE9CFC2FFE7CDC0FFE1CEBAFFE0D1
          B4FFDFD0B3FFD9CAB2FFF0EBE0FFA08A74FF000000160000000000000016A48E
          79FFFFFAEEFFA28D73FFD37920FFD47F29FFD78630FFDC8D35FFDD913BFFE197
          41FFE29A46FFE39D4CFFE4A151FFE4A356FFE4A55BFFE4A661FFE4A766FFE4A9
          6CFFE6A96DFFA18A6FFFFCF5E7FFA18B77FFC6AB8CFFC4AA8BFFC2AA8AFFC2AA
          88FFC1A886FFD8CAB6FFF2ECE4FFA08B74FF000000160000000000000015A690
          7AFFFFFFF5FF998061FF9B8669FF9B876CFF9A866CFF9A866BFF9A856BFF9A85
          6AFF99846AFF998469FF998469FF998368FF998368FF998367FF998367FF9A83
          66FF9A8264FF997F5FFFFFF8ECFFA28D76FFC2A988FFC0A786FFBFA686FFBFA6
          85FFBEA583FFD8CAB6FFF4EFE8FFA18C75FF00000016000000000000000DA893
          7DFFFFFFF7FFFFFFF4FFFFFFF6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFF
          F6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFF
          F6FFFFFFF5FFFFFFF4FFFFFEF3FFA28C76FFFFFFFFFFFDFBFAFFFCFAFAFFFCFA
          FAFFFDFAFAFFD7C8B5FFF6F0EAFFA28D76FF0000001600000000000000047466
          58B3A7927CFFCFC2ADFFCDC1ABFFCDC0ABFFCDC0ABFFCDC0ABFFCDC0ABFFCDC0
          ABFFCDC0ABFFCDC0ABFFCDC0ABFFCDC0AAFFCCC0AAFFCCC0AAFFCDC0AAFFCDC0
          ABFFCDC0ABFFCEC2ACFFA5907BFFBBA995FFDCCFBCFFDACCB9FFD9CBB8FFD9CB
          B8FFD9CBB8FFD8C9B6FFF7F4ECFFA38E77FF0000001600000000000000000000
          0004756759B0AD9983FFAC9782FFAC9782FFAC9782FFAC9782FFAC9782FFAC97
          82FFAC9782FFAC9782FFAC9782FFAB9680FFA8937DFFA8937DFFA9947FFFA994
          80FFAA9580FFAA9581FFB39E86FFC4AB8CFFC2A98AFFC1A889FFC1A889FFC0A8
          88FFBFA685FFDACCB9FFF9F5F0FFA48F78FF0000001600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000016A58F7AFFFEFBF6FFDECFBDFFC0A785FFC1A8
          86FFC1A886FFC1A887FFC1A786FFC0A786FFBFA686FFBFA686FFBFA686FFBFA6
          85FFBEA483FFDBCBB9FFFBF7F2FFA48F79FF0000001600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000016A5907AFFFCF9F6FFDACBB7FFFCFBF8FFFCFB
          F8FFFCFAF8FFFBFAF8FFFBFAF8FFFBFAF8FFFBFAF8FFFBFAF8FFFBFAF8FFFBFA
          F8FFFBFAF8FFDACAB6FFFBF8F4FFA59079FF0000001600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000015A6917BFFFCFAF7FFDACAB6FFDAC9B5FFDAC9
          B5FFDAC9B5FFDAC9B5FFDAC9B5FFDAC9B5FFDAC9B5FFDAC9B5FFDAC9B5FFDAC9
          B5FFDAC9B5FFDACAB6FFFCFAF7FFA6917BFF0000001500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000DA9947DFFFFFFFDFFFDFAF7FFFCF9F5FFFCF9
          F5FFFCF9F5FFFCF9F5FFFCF9F5FFFCF9F5FFFCF9F5FFFCF9F5FFFCF9F5FFFCF9
          F5FFFCF9F5FFFDFAF7FFFFFFFDFFA9947DFF0000000D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000004756658B3A9937DFFCEC1ABFFCCC0A9FFCCBF
          A9FFCCBFA9FFCCBFA9FFCCBFA9FFCCBFA9FFCCBFA9FFCCBFA9FFCCBFA9FFCCBF
          A9FFCCC0A9FFCEC1ABFFA9937DFF756658B30000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000004756759B0AD9883FFAC9782FFAC97
          82FFAC9782FFAC9782FFAC9782FFAC9782FFAC9782FFAC9782FFAC9782FFAC97
          82FFAC9782FFAD9883FF756759B0000000040000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000060000000F0000001500000016000000160000
          00150000000F0000000600000001000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000040000000D0000
          0014000000160000001600000016000000140000000D00000004000000000000
          0000000000030000000E00000020000000340000004000000043000000430000
          004000000034000000200000000E000000030000000000000000000000000000
          000000000000000000000000000000000002000000090000001B000000310000
          003F0000004300000043000000430000003F000000310000001B000000090000
          0005000000120000002D090C2769212D8DD12B3BBFFF2B3BBEFF2B3BBEFF2B3B
          BFFF212D8DD1090C27690000002D000000120000000300000000000000000000
          0000000000000000000000000000000000090000002307060548645647C49580
          69FF947E68FF937E68FF947E68FF957F69FF635647C407060547000000270000
          001F000000311A2372B43344C7FF5164EBFF6578FFFF697CFFFF697CFFFF6578
          FFFF5164EBFF3344C7FF1B2371B40000002D0000000E00000001000000000000
          0000000000000000000000000000000000122D2720739D8A72FFC5B7A5FFE7E2
          D6FFF4F0E4FFF3F0E4FFF4F0E4FFE7E2D6FFC6B8A7FF9E8A72FF28231C780000
          0047151F70B23445CBFF6072FEFF6174FEFF6073FDFF5F72FCFF5F72FCFF6073
          FDFF6174FEFF6072FEFF3546CAFF1B2471B10000002000000006000000000000
          0000000000000000000000000000000000169F8A74FFD8CFBDFFDED5C1FFD3C6
          AEFFCEC1A7FFCEC0A7FFCEC1A7FFD3C6AEFFDED5C1FFDCD1C1FFA38D6FFF8476
          79FF2A3CCDFF5A6FFDFF5B6FFCFF596EFAFF596DF9FF596DF9FF596DF9FF596D
          F9FF596EFAFF5B6FFCFF5B6FFCFF3242C7FF090C275D0000000F000000000000
          000000000000000000000000000000000012A28E78FFC9BAA2FFC0AF94FFBEAC
          91FFBDAB90FFBDAB90FFBDAB90FFBEAC91FFC0AF94FFCABAA0FFAA9371FF5C65
          BFFF4156E9FF556BFBFF5268F8FF5167F7FF5166F7FF5166F7FF5166F7FF5166
          F7FF5167F7FF5268F8FF566BFAFF475BE6FF222D8ECD00000015000000040000
          000D0000001500000016000000160000001EA7937EFFB29E81FFB09B7EFFDACF
          B6FFE4DCCBFFE4DBCAFFE4DCCBFFDACFB6FFB09B7EFFB39E80FFB39D78FF1D31
          C7FF4B62F7FF4A61F5FF4159F3FF3D55F2FF3C54F2FF3C54F2FF3C54F2FF3C54
          F2FF3D55F2FF4159F3FF4A61F5FF4F64F6FF2D3CBFFF000000160000000D0000
          002B0000003F000000430000004300000044201C186BA3917CF8A99277FFCFC2
          AAFFBCA988FFBCA988FFBCA988FFCFC2AAFFA99277FFB09B83FFD4C3A0FF1E31
          C6FF5D72F9FF3B53F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF3B53F2FF5F74F8FF2C3BBFFF0000001600000015695B
          4BC497836CFF95816BFF95816AFF94806AFF948069FF937F69FF927E67FF9986
          71FF917C66FF917D66FF917C66FF998671FF927E67FF948067FF9E865FFF1C30
          C6FF6E82F9FF334EF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF334EF0FF7084F8FF2A3ABFFF00000015000000169783
          6EFFD1BA9DFFC7AF8FFFC6AD8EFFC5AD8EFFC5AD8EFFC4AD8EFFC4AC8DFFC4AC
          8DFFC4AC8DFFC4AC8DFFC4AC8DFFC4AC8DFFC4AC8DFFC6AE8DFFD1B688FF172B
          C6FF8F9EF8FF324DEDFF2F4AECFF2C47EBFF2B47EBFF2B47EBFF2B47EBFF2B47
          EBFF2C47EBFF2F4AECFF334EEDFF93A2F7FF2A3AC0FF0000000F000000169884
          6DFFD2BDA1FFD9D1BDFFECECE7FFEBECE9FFEAECE9FFEAEBE9FFE9EAE9FFE9EA
          E9FFE8EAE9FFE8E9E9FFE8EAE9FFE9EAE9FFE9EAE9FFEBECE9FFF5F4E6FF5C6B
          D1FF7B89E9FF5970F1FF324DEBFF3550EBFF3651EBFF3751EBFF3751EBFF3651
          EBFF3550EBFF324DEBFF5A71F0FF848FE6FF1F2A8DC400000006000000169984
          6EFFD6C2A8FFD2CBB8FFE18E24FFE3911EFFE99822FFED9D22FFF3A422FFF7AA
          22FFFCB023FFFFB323FFFDB123FFF8AB22FFF4A522FFEFA022FFF19D1FFFBE82
          46FF273ED3FFA1B0F9FF4D63EEFF2D48E9FF314BE9FF334DE9FF334DE9FF314B
          E9FF2D48E9FF4D63EEFFA4B0F7FF3545C9FF080B254300000001000000169985
          70FFDAC8B2FFCCC4B3FFE39531FFE79E3AFFE89D2FFFECA12EFFF1A82FFFF5AD
          2FFFFAB330FFFEB830FFFBB530FFF6AF2FFFF2A92FFFEFA52FFFECA02DFFF29F
          23FF65578FFF3247D3FFA6B2F8FF7C8EF1FF3E57E9FF2542E5FF2542E5FF3E57
          E9FF7C8EF1FFA6B2F6FF3648CEFF605E9BFF0000001600000000000000169C87
          70FFDFCFB9FFC7BEACFFE29532FFE5A041FFEAA644FFECA537FFF0A630FFF3AC
          31FFF7B031FFFAB233FFF7B133FFF4AD32FFF1A832FFECA332FFE99E32FFE99B
          2CFFEF981EFF6870BDFF273BCCFF7483E6FFA3B0F6FFADB9F9FFADB9F8FFA3AF
          F5FF7382E4FF273AC8FF797EC9FFAA926AFF0000001600000000000000169C88
          72FFE4D5C1FFC1B7A4FFE19130FFE39E3DFFE8A645FFEEAC4DFFEFAC45FFF1A9
          33FFF3AA2FFFF4AC30FFF3AC30FFF1A931FFEEA531FFEBA131FFE79C30FFE396
          2EFFE49023FFCCBFA2FFB8AEB9FF4348A7FF1529C4FF1529C2FF1528C1FF1427
          C2FF555CBCFFAEA6B3FFF2E8D0FFA08A6FFF0000001600000000000000169D89
          73FFE8DCC9FFBCB19DFFDF8E2EFFE1993CFFE6A142FFEAA849FFEDAF4FFFF0B4
          55FFF1B553FFF1AF44FFF0AB3BFFECA22CFFEBA02DFFE79B2CFFE3972BFFDF91
          29FFDF8A21FFBEB29CFFE9DABFFFA38A6AFFE5D5B3FFE4D2B0FFE3D2AEFFE2D2
          AEFFDFCFAEFFD9CAAEFFEBE3D5FF9D8871FF0000001600000000000000169F8B
          75FFEDE2D0FFB7A995FFDC8C2CFFDF973AFFE39D40FFE7A345FFEAA94BFFECAD
          51FFEEB257FFEFB55DFFEFB862FFF0B968FFEFBA6EFFEBB66AFFEBB66EFFEBB9
          78FFEAB573FFB7A792FFEADDC9FFA28871FFE8CFBDFFE6CCB9FFE1CDB3FFE4D2
          AFFFE2D1AEFFD9CAAFFFEBE5D8FF9E8872FF000000160000000000000016A08B
          75FFF2E9D8FFB1A38EFFDA8629FFDC9238FFE0993FFFE39F43FFE6A448FFE8A8
          4DFFEAAC52FFEBAF57FFEBB15DFFEBB262FFEBB466FFEAB46CFFE9B571FFE8B3
          73FFE9AF6FFFB0A088FFF0E2D1FFAA8976FF008E42FF008C3DFFEFD1B6FF0018
          E7FF0017E6FFDFCEAEFFEEE6DAFF9F8973FF000000160000000000000016A18C
          77FFF8EEDFFFAC9C86FFD68227FFD88E35FFDC943DFFE09A41FFE29F46FFE4A3
          4BFFE6A650FFE7AA55FFE8AC5AFFE8AD5FFFE7AE63FFE7AF68FFE6B06DFFE6AF
          71FFE6AD6EFFAB9880FFF4E8D9FFAA8878FF00C856FF00C652FFECD0B6FF7966
          FFFF7665FFFFDECDAEFFF0E8DEFF9F8973FF000000160000000000000016A38E
          77FFFBF4E7FFA7967EFFD37D26FFD68732FFD98F39FFDD943EFFDF9945FFE29D
          48FFE3A14DFFE4A453FFE5A658FFE5A85DFFE5A962FFE4AC66FFE4AB6BFFE4AD
          70FFE5AC6EFFA69278FFF8EEE0FFA48A76FFE9CFC2FFE7CDC0FFE1CEBAFFE0D1
          B4FFDFD0B3FFD9CAB2FFF0EBE0FFA08A74FF000000160000000000000016A48E
          79FFFFFAEEFFA28D73FFD37920FFD47F29FFD78630FFDC8D35FFDD913BFFE197
          41FFE29A46FFE39D4CFFE4A151FFE4A356FFE4A55BFFE4A661FFE4A766FFE4A9
          6CFFE6A96DFFA18A6FFFFCF5E7FFA18B77FFC6AB8CFFC4AA8BFFC2AA8AFFC2AA
          88FFC1A886FFD8CAB6FFF2ECE4FFA08B74FF000000160000000000000015A690
          7AFFFFFFF5FF998061FF9B8669FF9B876CFF9A866CFF9A866BFF9A856BFF9A85
          6AFF99846AFF998469FF998469FF998368FF998368FF998367FF998367FF9A83
          66FF9A8264FF997F5FFFFFF8ECFFA28D76FFC2A988FFC0A786FFBFA686FFBFA6
          85FFBEA583FFD8CAB6FFF4EFE8FFA18C75FF00000016000000000000000DA893
          7DFFFFFFF7FFFFFFF4FFFFFFF6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFF
          F6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFFF6FFFFFF
          F6FFFFFFF5FFFFFFF4FFFFFEF3FFA28C76FFFFFFFFFFFDFBFAFFFCFAFAFFFCFA
          FAFFFDFAFAFFD7C8B5FFF6F0EAFFA28D76FF0000001600000000000000047466
          58B3A7927CFFCFC2ADFFCDC1ABFFCDC0ABFFCDC0ABFFCDC0ABFFCDC0ABFFCDC0
          ABFFCDC0ABFFCDC0ABFFCDC0ABFFCDC0AAFFCCC0AAFFCCC0AAFFCDC0AAFFCDC0
          ABFFCDC0ABFFCEC2ACFFA5907BFFBBA995FFDCCFBCFFDACCB9FFD9CBB8FFD9CB
          B8FFD9CBB8FFD8C9B6FFF7F4ECFFA38E77FF0000001600000000000000000000
          0004756759B0AD9983FFAC9782FFAC9782FFAC9782FFAC9782FFAC9782FFAC97
          82FFAC9782FFAC9782FFAC9782FFAB9680FFA8937DFFA8937DFFA9947FFFA994
          80FFAA9580FFAA9581FFB39E86FFC4AB8CFFC2A98AFFC1A889FFC1A889FFC0A8
          88FFBFA685FFDACCB9FFF9F5F0FFA48F78FF0000001600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000016A58F7AFFFEFBF6FFDECFBDFFC0A785FFC1A8
          86FFC1A886FFC1A887FFC1A786FFC0A786FFBFA686FFBFA686FFBFA686FFBFA6
          85FFBEA483FFDBCBB9FFFBF7F2FFA48F79FF0000001600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000016A5907AFFFCF9F6FFDACBB7FFFCFBF8FFFCFB
          F8FFFCFAF8FFFBFAF8FFFBFAF8FFFBFAF8FFFBFAF8FFFBFAF8FFFBFAF8FFFBFA
          F8FFFBFAF8FFDACAB6FFFBF8F4FFA59079FF0000001600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000015A6917BFFFCFAF7FFDACAB6FFDAC9B5FFDAC9
          B5FFDAC9B5FFDAC9B5FFDAC9B5FFDAC9B5FFDAC9B5FFDAC9B5FFDAC9B5FFDAC9
          B5FFDAC9B5FFDACAB6FFFCFAF7FFA6917BFF0000001500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000DA9947DFFFFFFFDFFFDFAF7FFFCF9F5FFFCF9
          F5FFFCF9F5FFFCF9F5FFFCF9F5FFFCF9F5FFFCF9F5FFFCF9F5FFFCF9F5FFFCF9
          F5FFFCF9F5FFFDFAF7FFFFFFFDFFA9947DFF0000000D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000004756658B3A9937DFFCEC1ABFFCCC0A9FFCCBF
          A9FFCCBFA9FFCCBFA9FFCCBFA9FFCCBFA9FFCCBFA9FFCCBFA9FFCCBFA9FFCCBF
          A9FFCCC0A9FFCEC1ABFFA9937DFF756658B30000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000004756759B0AD9883FFAC9782FFAC97
          82FFAC9782FFAC9782FFAC9782FFAC9782FFAC9782FFAC9782FFAC9782FFAC97
          82FFAC9782FFAD9883FF756759B0000000040000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000030000000C00000014000000160000001600000016000000160000
          00140000000C0000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0006000000170000002E0000003E000000430000004300000043000000430000
          003E0000002E0000001700000006000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000060000
          00110000001600000016000000130000000A0000000200000000000000060000
          001C0000003B4C4C4CB5818181FF818181FF828282FF828282FF818182FF8282
          82FF4D4D4DB50000003B00000022000000160000001600000011000000060000
          00000000000000000000000000000000000000000000000000000000000E0000
          002D00000040000000430000003B000000230000000900000003000000170000
          003B9D9E9EFFBEBDBDFFF8F7F7FFCECCCAFFC6C4C3FFD3D1CFFFDEDCDBFFE2E1
          E1FFB8B7B7FF9FA0A0FF00000048000000430000004200000030000000100000
          00000000000000000000000000000000000000000000000000000000000C6260
          5FFF615F5EFF615F5EFF62605FFF24242384000000130000000D0000002E9C9C
          9CFFC9C8C8FFF5F4F4FFF2F1F1FFEEEEEEFFF0F0F0FFBFBDBCFFCDCBC9FFD8D6
          D5FFE5E4E3FFC5C4C4FFA0A1A1FF595857FF5E5C5BFF615F5EFF000000110000
          0000000000000000000000000000000000000000000000000000000000033231
          3190767473FF636160FF646261FF575554EB0000001F00000019595959AEE4E3
          E3FFEFEEEDFFEBEAE9FFEAE9E8FFEAE9E8FFE7E6E5FFEEEEEDFFBEBCBBFFCBC9
          C7FFD7D5D4FFE4E3E2FFC5C4C5FFA2A2A2FF706E6DFF4B4A48D80000000F0000
          0000000000000000000000000000000000000000000000000000000000000404
          0418646261FF787877FF686564FF615F5EFF0A090946000000219B9B9BFFF2F1
          F1FFE6E5E4FFE4E3E2FFE4E3E2FFE4E3E2FFE4E3E2FFE1E0DFFFEFEFEEFFBEBC
          BBFFCBC9C7FFD7D5D4FFE4E3E2FFC6C5C5FFA1A2A1FF292928990000001E0000
          0006000000000000000000000000000000000000000000000000000000000000
          00063E3D3CB1848281FF6A6867FF666463FF3D3B3ABA000000249D9D9DFFEEEF
          EEFFE1DFDFFFE0DEDEFFE0DEDEFFE0DEDEFFE0DEDEFFE0DEDEFFDDDCDBFFEFEE
          EFFFBEBCBBFFCBC9C7FFD7D5D4FFE4E3E2FFC1C1C0FF9EA29CFF0000003D0000
          001C000000060000000000000000000000000000000000000000000000000000
          000113121242676564FF807E7DFF6E6C6BFF5F5D5CFF00000032555656A0E0DF
          DFFFDEDDDBFFDBDAD9FFDBDAD9FFDBDAD9FFDBDAD9FFDBDAD9FFDBDAD9FFD9D8
          D7FFEEEFEEFFBFBCBCFFCBC9C7FFD7D5D3FFE4E4E0FFC9BCCBF89BA397FF0000
          003D0000001C0000000600000000000000000000000000000000000000000000
          000000000009545252E7898786FF72706FFF666463FF2121208D0000004A9E9E
          9EFFE9E8E7FFD9D7D6FFD7D5D4FFD7D5D4FFD7D5D4FFD7D5D4FFD7D5D4FFD7D5
          D4FFD4D2D1FFEFF0EFFFBFBDBCFFCBCAC6FFD7D8D0FFDAC6F2FFBF9CDDFF9771
          A4FF0000003D0000001C00000006000000000000000000000000000000000000
          00000000000221212168777574FF838180FF706E6CFF5D5B5AFF5A5857FF5452
          51FF9F9F9FFFE8E8E7FFD3D2D0FFD2D1CFFFD2D1CFFFD2D1CFFFD2D1CFFFD2D1
          CFFFD2D1CFFFD0CDCCFFEFEFEEFFC1C1BAFFD1BCE7FFC6A7F2FFD1B2F8FFC09F
          DCFF9772A4FF0000003D0000001C000000060000000000000000000000000000
          0000000000000000000C5E5C5BFF959392FF797776FF7B7978FF7C7A79FF7B79
          77FF747271FF9FA0A0FFE9E8E8FFCFCCCBFFCECCCBFFCECCCBFFCECCCBFFCECC
          CBFFCECCCBFFCDCCC9FFC9C9C3FFF6F2FBFFBC9DEBFFC0A2EBFFC7ABF1FFD2B4
          F8FFC0A0DCFF9772A4FF0000003D0000001C0000000600000000000000000000
          00000000000000000003302E2E8D82807FFF838280FF6F6D6CFF5E5C5BFF5F5D
          5CFF5D5B5AFF555352FF9E9E9EFFE8E8E7FFC9C6C5FFC8C6C5FFC9C7C6FFC9C7
          C6FFC9C7C4FFC8C9C1FFCDB9E5FFD0AEF8FFF0EAFAFFB69AE6FFC0A3EAFFC8AB
          F1FFD2B4F8FFC0A0DCFF9772A4FF0000003B0000001700000003000000000000
          0000000000000000000004040418625F5EFF9B9A9AFF807E7DFF605E5EFF0000
          002C0000000B00000000000000069A9A9AFFE9E8E7FFC4C2BFFFC4C2C0FFC5C3
          BFFFC4C5BCFFCBB6E1FFCEAEF7FFCEAEF4FFCDADF3FFF0EBF9FFB69BE6FFC0A3
          EAFFC8ABF1FFD2B4F8FFBF9FDCFF9671A4FF0000002E0000000C000000000000
          00000000000000000000000000063D3C3BB1959392FF898784FF6D6B69FF2F2E
          2E9D000000160000000100000000000000069A9A9AFFECEBE9FFBEBDB9FFBEBE
          B6FFC7B3DEFFCCADF5FFCBAEF2FFCBAEF1FFCAACF1FFC9ABF1FFF0EAFAFFB79B
          E6FFC0A3EAFFC7AAF1FFD0B2F8FFDAC9E7FF574260AE00000014000000000000
          000000000000000000000000000113121242676564FFA2A19FFF82807EFF5A59
          58F8000000240000000700000000000000000000000E9E9F9EFFF0EFEFFFC4AF
          DDFFC8A8F5FFC8AAF1FFC8ABF0FFC8ABF0FFC8ABF0FFC7A9F0FFC6A7F0FFEFEA
          FAFFB79BE6FFC0A2EAFFC7A9F1FFEADBFEFF9670A4FF00000014000000000000
          000000000000000000000000000000000009525150E7A1A09FFF918F8DFF6765
          64FF1A1A196C0000001000000000000000000000000E212120829A6DACFFF3EA
          FDFFC4A6F2FFC4A7EFFFC5A9EEFFC5A9EEFFC5A9EEFFC5A9EEFFC4A7EEFFC3A5
          EEFFF0EAF9FFB79BE6FFC0A1ECFFE7DAFCFF9670A4FF0000000C000000000000
          000000000000000000000000000000000002212120687A7877FFA3A1A0FF7C7A
          79FF444443CB0000001B0000000300000000000000123C3B39B974756EFF976C
          A8FFF5EEFBFFC0A3EFFFC1A4ECFFC2A6ECFFC2A6ECFFC2A6ECFFC2A6ECFFC1A4
          ECFFBFA1ECFFEEE9FAFFB89BEAFFDCCDE9FF5842619E00000003000000000000
          0000000000000000000000000000000000000000000C5C5A59FFACABAAFF8D8B
          89FF605E5DFF040404350000000B00000001000000164B4A49D882827FFF898B
          83FF956AA6FFF6F2FCFFBD9FECFFBDA1EAFFBFA2EAFFBFA3EAFFBFA3EAFFBEA2
          EAFFBDA0EAFFBC9DECFFF2ECFDFF956FA3FF0000000600000000000000000000
          000000000000000000000000000000000000000000032F2E2D8D868483FFA29F
          9FFF73716FFF2F2E2E9F00000017000000050000001C5D5B5AFF93908DFF8C8B
          87FFA2A49BFF966BA7FFFAF7FFFFB99DEAFFBA9FE8FFBBA0E8FFBBA0E8FFBA9F
          E8FFB99DEAFFFBF9FFFF946DA2FF000000060000000000000000000000000000
          0000000000000000000000000000000000000000000004040418615F5EFFB3B2
          B0FF8C8A88FF5D5B5AFF000000270000000F0C0C0B3E656360FF92908EFF8D8B
          89FFB3B2AEFF50524AFF986EA8FFFDFCFFFFB699E8FFB598E6FFB598E6FFB599
          E8FFFDFDFFFF946DA2FF00000006000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000063C3B3AB19997
          96FF9D9B99FF6A6867FF2121207C0000001C191918646E6C6AFF928F8DFF9491
          8EFFA4A3A1FF43433FCE00000010976FA6FFDFD3EEFFFFFFFFFFFFFFFFFFDED3
          EEFF946EA3FF0000000600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001131212426765
          64FFB5B3B1FF7E7C7BFF4B4948D90000002B2E2D2C99797775FF918F8DFFA09E
          9CFF8C8B89FF2D2D2B8E00000005000000035942619A956FA4FF956FA4FF5841
          6199000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000095250
          4FE7A7A4A3FF9C9998FF5F5D5CFF00000040494746D684817EFF908D8BFFADAA
          A9FF737271FF1212124400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000022121
          20687A7877FFAFADADFF777574FF2D2C2CA6515050EC8E8B89FF908E8CFFBDBB
          BAFF5A5857FF0000001100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000C5B5958FFB4B2B1FF918F8DFF636060F6686664FF94908EFF999595FFA5A3
          A2FF4A4847D60000000B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00032F2E2D8D868483FFAEACAAFF94918FFF94918FFF928F8DFFA7A5A3FF8C8B
          89FF2F2E2D900000000500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000004040418605E5DFFB7B5B3FF93908EFF918E8CFF908D8BFFB6B4B2FF7371
          70FF131212440000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000063C3A3AB19A9897FFA8A6A4FF918D8BFF93908EFFC1BFBDFF5A58
          57FF000000110000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000113121242666463FFBDBBB9FF908C8AFFA19F9DFFA7A5A3FF4A48
          47D60000000C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000009525150E7A9A7A6FFC1BFBEFFC2C0BFFF8F8D8CFF302F
          2E8E000000050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000002242323665D5B5AFF5B5958FF5B5958FF5D5B5BFF1615
          1540000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000060000000F0000001500000016000000160000
          00150000000F0000000600000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000030000000E00000020000000340000004000000043000000430000
          004000000034000000200000000E000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0003000000120000002D001C0F69006637D1008A49FF008949FF008949FF008A
          49FF006637D1001C0F690000002D000000120000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000040000000D00000015000000160000001600000016000000150000
          001A0000003000522CB4009152FF00B679FF00CD90FF00D194FF00D194FF00CD
          90FF00B679FF009152FF00522CB40000002D0000000E00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000D0000002B0000003F000000430000004300000043000000400000
          004100512AB2009755FF00CB8FFF00CD8FFF00C98AFF00C685FF00C685FF00C9
          8AFF00CD8FFF00CB8FFF009656FF00522CB10000002000000006000000000000
          0000000000000000000000000000000000040000000D0000000E000000050000
          0000000000154D4B4AC46A6866FF686664FF676563FF696664FF716768FF3C59
          49D700944FFF00C98CFF00CA8CFF00C788FF00C380FFFFFFFFFFFFFFFFFF00C3
          80FF00C788FF00CA8CFF00C98DFF009251FF001C0F5D0000000F000000000000
          0000000000000000000000000003000000150000002E000000320000001A0000
          0007000000196B6967FFE6E6E4FFE0DFDDFFDFDEDCFFE2DFDEFFF0E3E6FF187D
          4CFF00B472FF00C88AFF00C586FF00C383FF00BE79FFFFFFFFFFFFFFFFFF00BE
          79FF00C383FF00C586FF00C88AFF00B374FF006737CD00000015000000000000
          0000000000000000000300000014000000324E4C4CC76A6967F40000003A0000
          00230000002E6A6866FFE1E0DEFFDEDCDBFFDCDAD9FFE0DBDCFFECDDE1FF0084
          3CFF00C584FF00C383FF00BE7CFF00BC77FF00B86FFFFFFFFFFFFFFFFFFF00B8
          6FFF00BC77FF00BE7CFF00C383FF00C587FF008A4AFF00000016000000000000
          0000000000040000001500000032494746C19B9997FF9B9997FF605F5DEA0000
          0049232121826F6D6BFFDEDDDBFFDAD8D7FFD8D6D5FFDCD8D8FFECDBE0FF0082
          3AFF17CC94FF00BD7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00BD7AFF1BCD96FF008949FF00000016000000000000
          00000000000D0000002E4A4947C1989795FFE3E2E0FFE2E1DFFFB6B5B3FF6A68
          66FF787775FFCBCAC8FFDAD9D7FFD7D3D2FFD6D3D2FFD9D4D4FFEDDDE1FF0081
          39FF35D29FFF00BB76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00BB77FF39D3A2FF008948FF00000015000000000000
          00000000000E514F4EBF9D9D9BFFE4E3E1FFD7D5D4FFD6D3D2FFDDDCDAFFD1D0
          CEFFE1E0DEFFD9D7D6FFD5D2D1FFD4D1D0FFD4D1D0FFD7D2D2FFE7D6DBFF0081
          37FF69DAB6FF00BB78FF00B974FF00B771FF00B268FFFFFFFFFFFFFFFFFF00B2
          68FF00B771FF00B974FF00BB78FF6EDCB9FF008947FF0000000F000000000000
          000000000005706D6BF19F9D9BFFE3E2E0FFD4D2D0FFD1CFCEFFD1D1CFFFD5D4
          D2FFD2D0CFFFD1CFCEFFD1CFCEFFD1CFCEFFD1CFCEFFD3CFCFFFDFD3D6FF309B
          6AFF58C499FF28C894FF00BA78FF00B978FF00B46EFFFFFFFFFFFFFFFFFF00B4
          6EFF00B978FF00BA78FF2AC895FF63C7A0FF006636C400000006000000000000
          0001000000030000000B656261E4B9B8B6FFDEDDDBFFD0CECCFFCFCDCCFFCFCD
          CCFFCFCDCCFFCFCDCCFFCFCDCCFFCFCDCCFFCFCDCCFFD0CDCCFFD7CFD1FFA2BD
          AFFF008E4AFF88E1C3FF1CC48AFF00B774FF00B36DFFFFFFFFFFFFFFFFFF00B3
          6DFF00B774FF1DC48BFF8DE2C6FF0C9457FF001C0F3E00000001000000040000
          00100000001B0000002200000035706D6BFFD4D4D2FFD3D1D0FFCDCBC9FFCDCB
          C9FFCDCBC8FFCECCCAFFD7D6D4FFDFDDDCFFE0DEDDFFE0DDDDFFDAD7D6FFDDD0
          D3FF3E9E72FF039554FF92E2C6FF5BD4ABFF0BBC7EFF00B068FF00B068FF0BBC
          7FFF5CD4ACFF97E4C9FF149A5EFF00512B9C00000003000000000000000D0101
          012E1B1B1A6C16151568403E3EAB9E9D9BFFDFDEDCFFCBC9C7FFCBC9C7FFCBC9
          C6FFCFCDCCFFE0DFDFFFC2C1BFFF979593FF918F8DFF979593FFC3C1C0FFE6E1
          E2FFE1D2D6FF4EA27AFF008E4AFF55C196FF90E0C4FF9AE6CCFF9AE6CCFF90E1
          C4FF58C399FF039454FF0050299C000000030000000000000000000000155554
          53C2797775FF777472FF72706EFFD2D1CFFFD2D0CEFFC9C5C5FFC9C5C5FFCAC8
          C6FFE2E0DFFFA09E9BFF676564E11E1E1D46171616331E1E1D46676564E1A09E
          9CFFE7E1E2FFD8CBCEFF9CB8A9FF2E9867FF008137FF008137FF008036FF0081
          37FF147F4DFF455F51D100000015000000000000000000000000000000167B78
          76FFEEEEEDFFEAE9E8FFE7E7E6FFE4E2E1FFC6C3C2FFC7C4C3FFC6C3C2FFD3D3
          D1FFC6C4C2FF696664E200000008000000000000000000000000000000096966
          64E2C6C4C2FFD7D4D3FFCEC5C7FFD4C7CAFFD7C7CCFFF4E4E9FFF5E6EBFFF4E6
          EBFFF7ECF0FF847679FF00000016000000000000000000000000000000167A78
          76FFEBEAE8FFC3C0BFFFC4C0BFFFC4C1C0FFC5C2C1FFC5C2C1FFC4C1C0FFE0DE
          DDFF9C9998FF201F1E5600000004000000000000000000000000000000051F1E
          1E579C9998FFE0DEDDFFC5C1C1FFC7C2C2FFC7C2C2FFC7C2C2FFC6C0C1FFC5C0
          C0FFECEAE8FF7B7877FF00000016000000000000000000000000000000167C79
          77FFEBEBE9FFC1BEBCFFC2BFBCFFC3BFBDFFC3C0BEFFC3C0BEFFC2BFBCFFE1DF
          DEFF969492FF0D0D0D3D00000008000000000000000000000000000000091817
          174F969492FFE2E1E0FFC2BEBCFFC3C0BEFFC3C0BEFFC3BFBDFFC2BFBCFFC1BE
          BCFFEBEBE9FF7C7977FF00000016000000000000000000000000000000157D7B
          79FFEDECEAFFBDBBB9FFBDBBB9FFBEBCBAFFBFBDBBFFBFBEBCFFBEBCBAFFE0DE
          DEFF9E9D9AFF2020206D0000001C0000000900000005000000090000001C201F
          1F6C9E9D9AFFE0DEDEFFBEBCBAFFBFBEBCFFBFBDBBFFBEBCBAFFBDBBB9FFBDBB
          B9FFEDECEAFF7D7B79FF000000150000000000000000000000000000000D827E
          7CFFF1F0EFFFEDECEBFFEBEAE9FFE6E6E5FFBCBAB7FFBDBBB9FFBDBBB8FFD1CF
          CEFFCBC9C7FF6F6C6AE80000003C0000002700000020000000270000003C6F6C
          6AE8CBC9C7FFD1CFCEFFBDBBB8FFBDBBB9FFBCBAB7FFE6E6E5FFEBEAE9FFEDEC
          EBFFF1F0EFFF827E7CFF0000000D000000000000000000000000000000045D5A
          59B483817FFF807E7CFF7C7A78FFD9D7D6FFCAC7C6FFBAB7B6FFBBB8B7FFBDBB
          B9FFE4E4E2FFA8A6A4FF706E6CE8212020771918186A21202077706E6CE8A8A6
          A4FFE4E4E2FFBDBBB9FFBBB8B7FFBAB7B6FFCAC7C6FFD9D7D6FF7C7A78FF807E
          7CFF83817FFF5D5A59B400000004000000000000000000000000000000000000
          000000000000000000073D3C3B8AA9A7A6FFE0E0DEFFB7B4B2FFB9B6B4FFB9B5
          B3FFC1BFBDFFE4E4E3FFCDCBCAFFA3A19FFF9C9A98FFA3A19FFFCDCBCAFFE4E4
          E3FFC1BFBDFFB9B5B3FFB9B6B4FFB7B4B2FFE0E0DEFFA9A7A6FF323131770000
          0007000000000000000000000000000000000000000000000000000000000000
          0000000000050000001A0000003A807C7AFFE1E0DEFFC7C5C3FFB7B3B1FFB7B4
          B2FFB6B3B1FFB9B6B4FFCFCCCAFFE1E0DEFFE6E3E3FFE1E0DEFFCFCCCAFFB9B6
          B4FFB6B3B1FFB7B4B2FFB7B3B1FFC7C5C3FFE1E0DEFF807C7AFF0000003A0000
          001A000000050000000000000000000000000000000000000000000000000000
          00000000000E00000032757371E9C8C7C5FFE4E3E1FFB7B3B1FFB4B1AFFFB4B1
          AFFFB5B2B0FFB5B1AFFFB4B1AFFFB4B0AEFFB3B0AEFFB4B0AEFFB4B1AFFFB5B1
          AFFFB5B2B0FFB4B1AFFFB4B1AFFFB7B3B1FFE4E3E1FFC8C7C5FF757371E90000
          00320000000E0000000000000000000000000000000000000000000000000000
          00000000000D83807EF2B1AFADFFE9E8E8FFB2AFADFFB0ADABFFB4B1AFFFC4C2
          C0FFB0ADABFFB2AEACFFB2AFADFFB3B0AEFFB3B0AEFFB3B0AEFFB2AFADFFB2AE
          ACFFB0ADABFFC4C2C0FFB4B1AFFFB0ADABFFB2AFADFFE9E8E8FFB1AFADFF8380
          7EF20000000D0000000000000000000000000000000000000000000000000000
          000000000004605F5DB6B2B0AEFFEFEEEDFFBAB8B6FFB2AFADFFE5E4E2FFE4E2
          E1FFE2E1DFFFC5C2C0FFB0ADABFFB2AFADFFB4B1AFFFB2AFADFFB0ADABFFC5C2
          C0FFE2E1DFFFE4E2E1FFE5E4E2FFB2AFADFFBAB8B6FFEFEEEDFFB2B0AEFF605F
          5DB6000000040000000000000000000000000000000000000000000000000000
          000000000000000000035B5B59AEB0AEADFFF0EFEEFFEBEAE8FFCBCAC8FF8783
          81FFB0AEADFFDFDEDDFFEEEEEDFFB1AEACFFB3B0AEFFB1AEACFFEEEEEDFFDFDE
          DDFFB0AEADFF878381FFCBCAC8FFEBEAE8FFF0EFEEFFB0AEADFF5B5B59AE0000
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000035D5B59AEB5B3B1FFB5B3B1FF7B7876E30000
          000736353472878481FFF4F3F2FFAFACAAFFB2AEACFFAFACAAFFF4F3F2FF8784
          81FF36353472000000077B7876E3B5B3B1FFB5B3B1FF5D5B59AE000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000004646260B3888583F0000000050000
          0000000000158D8A88FFF5F5F4FFADAAA8FFAFABA9FFADAAA8FFF5F5F4FF8D8A
          88FF000000150000000000000005888583F0646260B300000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000D908D8BFFFAF9F8FFF7F6F5FFF7F6F5FFF7F6F5FFFAF9F8FF908D
          8BFF0000000D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000004666564B4928F8DFF908D8BFF908D8BFF908D8BFF928F8DFF6665
          64B4000000040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000060000000F0000001500000016000000160000
          00150000000F0000000600000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000030000000E00000020000000340000004000000043000000430000
          004000000034000000200000000E000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0003000000120000002D090C2769212D8DD12B3BBFFF2B3BBEFF2B3BBEFF2B3B
          BFFF212D8DD1090C27690000002D000000120000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000040000000D00000015000000160000001600000016000000150000
          001A000000301A2372B43344C7FF5164EBFF6578FFFF697CFFFF697CFFFF6578
          FFFF5164EBFF3344C7FF1B2371B40000002D0000000E00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000D0000002B0000003F000000430000004300000043000000400000
          0041172171B23445CBFF6072FEFF6174FEFF6073FDFF5F72FCFF5F72FCFF6073
          FDFF6174FEFF6072FEFF3546CAFF1B2471B10000002000000006000000000000
          0000000000000000000000000000000000040000000D0000000E000000050000
          0000000000154D4B4AC46A6866FF686664FF676563FF696763FF6E6B61FF4548
          63D72D3ECDFF5A6FFDFF5B6FFCFF596EFAFF596DF9FF596DF9FF596DF9FF596D
          F9FF596EFAFF5B6FFCFF5B6FFCFF3242C7FF090C275D0000000F000000000000
          0000000000000000000000000003000000150000002E000000320000001A0000
          0007000000196B6967FFE6E6E4FFE0DFDDFFDFDEDCFFE1E0DDFFEBE9DDFF3843
          A3FF4357E9FF566BFBFF5268F8FF5167F7FF5166F7FF5166F7FF5166F7FF5166
          F7FF5167F7FF5268F8FF566BFAFF475BE6FF222D8ECD00000015000000000000
          0000000000000000000300000014000000324E4C4CC76A6967F40000003A0000
          00230000002E6A6866FFE1E0DEFFDEDCDBFFDCDAD9FFDFDDDAFFE7E5D6FF1B2C
          C0FF4B62F7FF4A61F5FF4159F3FF3D55F2FF3C54F2FF3C54F2FF3C54F2FF3C54
          F2FF3D55F2FF4159F3FF4A61F5FF4F64F6FF2D3CBFFF00000016000000000000
          0000000000040000001500000032494746C19B9997FF9B9997FF605F5DEA0000
          0049232121826F6D6BFFDEDDDBFFDAD8D7FFD8D6D5FFDBD9D6FFE7E4D4FF1A2B
          BEFF5D71F8FF3B53F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF3B53F2FF5F74F8FF2C3BBFFF00000016000000000000
          00000000000D0000002E4A4947C1989795FFE3E2E0FFE2E1DFFFB6B5B3FF6A68
          66FF787775FFCBCAC8FFDAD9D7FFD7D3D2FFD6D3D2FFD9D5D2FFE8E5D6FF182A
          BEFF6E81F8FF334EF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF334EF0FF7084F8FF2A3ABFFF00000015000000000000
          00000000000E514F4EBF9D9D9BFFE4E3E1FFD7D5D4FFD6D3D2FFDDDCDAFFD1D0
          CEFFE1E0DEFFD9D7D6FFD5D2D1FFD4D1D0FFD4D1D0FFD7D3D0FFE3DED0FF1527
          BEFF8F9EF6FF334DEDFF2F4AECFF2C47EBFF2B47EBFF2B47EBFF2B47EBFF2B47
          EBFF2C47EBFF2F4AECFF334EEDFF93A2F7FF2A3AC0FF0000000F000000000000
          000000000005706D6BF19F9D9BFFE3E2E0FFD4D2D0FFD1CFCEFFD1D1CFFFD5D4
          D2FFD2D0CFFFD1CFCEFFD1CFCEFFD1CFCEFFD1CFCEFFD3D0CEFFDCD8CEFF5460
          C4FF7C88E5FF5970F0FF324DEBFF3550EBFF3651EBFF3751EBFF3751EBFF3651
          EBFF3550EBFF324DEBFF5A71F0FF848FE6FF1F2B8EC400000006000000000000
          0001000000030000000B656261E4B9B8B6FFDEDDDBFFD0CECCFFCFCDCCFFCFCD
          CCFFCFCDCCFFCFCDCCFFCFCDCCFFCFCDCCFFCFCDCCFFD0CDCCFFD5D2CCFFACAE
          C9FF2939C6FFA1AFF6FF4D63EDFF2D48E9FF314BE9FF334DE9FF334DE9FF314B
          E9FF2D48E9FF4D64EEFFA6B2F6FF3948C7FF090C273E00000001000000040000
          00100000001B0000002200000035706D6BFFD4D4D2FFD3D1D0FFCDCBC9FFCDCB
          C9FFCDCBC8FFCECCCAFFD7D6D4FFDFDDDCFFE0DEDDFFE0DDDCFFD9D8D4FFDAD6
          CAFF5F69C3FF3344CAFFA6B2F6FF7C8EF1FF3E57E9FF2542E5FF2542E5FF3E57
          E9FF7C8EF1FFAAB5F6FF3F4FCAFF1922729C00000003000000000000000D0101
          012E1B1B1A6C16151568403E3EAB9E9D9BFFDFDEDCFFCBC9C7FFCBC9C7FFCBC9
          C6FFCFCDCCFFE0DFDFFFC2C1BFFF979593FF918F8DFF979593FFC3C2BFFFE4E3
          DFFFDCD9CCFF6B74C2FF2739C7FF7482E3FFA3AFF5FFADB9F8FFADB9F8FFA3AF
          F5FF7785E5FF3344CAFF17206F9C000000030000000000000000000000155554
          53C2797775FF777472FF72706EFFD2D1CFFFD2D0CEFFC9C5C5FFC9C5C5FFCAC8
          C6FFE2E0DFFFA09E9BFF676564E11E1E1D46171616331E1E1D46676564E1A09E
          9CFFE6E3DFFFD5D1C6FFA6A8C3FF525DC1FF1427BFFF1527BEFF1527BEFF1527
          BFFF3943A7FF4F5069D100000015000000000000000000000000000000167B78
          76FFEEEEEDFFEAE9E8FFE7E7E6FFE4E2E1FFC6C3C2FFC7C4C3FFC6C3C2FFD3D3
          D1FFC6C4C2FF696664E200000008000000000000000000000000000000096966
          64E2C6C4C2FFD6D5D1FFCCC9C2FFD1CDC3FFD3CFC1FFF0ECDEFFF0EDE0FFF0ED
          E1FFF4F2E7FF807C70FF00000016000000000000000000000000000000167A78
          76FFEBEAE8FFC3C0BFFFC4C0BFFFC4C1C0FFC5C2C1FFC5C2C1FFC4C1C0FFE0DE
          DDFF9C9998FF201F1E5600000004000000000000000000000000000000051F1E
          1E579C9998FFE0DEDDFFC5C2C0FFC6C3C1FFC7C4C1FFC6C3C0FFC5C2BFFFC5C1
          BEFFECEBE7FF7B7976FF00000016000000000000000000000000000000167C79
          77FFEBEBE9FFC1BEBCFFC2BFBCFFC3BFBDFFC3C0BEFFC3C0BEFFC2BFBCFFE1DF
          DEFF969492FF0D0D0D3D00000008000000000000000000000000000000091817
          174F969492FFE2E1E0FFC2BEBCFFC3C0BEFFC3C0BEFFC3BFBDFFC2BFBCFFC1BE
          BCFFEBEBE9FF7C7977FF00000016000000000000000000000000000000157D7B
          79FFEDECEAFFBDBBB9FFBDBBB9FFBEBCBAFFBFBDBBFFBFBEBCFFBEBCBAFFE0DE
          DEFF9E9D9AFF2020206D0000001C0000000900000005000000090000001C201F
          1F6C9E9D9AFFE0DEDEFFBEBCBAFFBFBEBCFFBFBDBBFFBEBCBAFFBDBBB9FFBDBB
          B9FFEDECEAFF7D7B79FF000000150000000000000000000000000000000D827E
          7CFFF1F0EFFFEDECEBFFEBEAE9FFE6E6E5FFBCBAB7FFBDBBB9FFBDBBB8FFD1CF
          CEFFCBC9C7FF6F6C6AE80000003C0000002700000020000000270000003C6F6C
          6AE8CBC9C7FFD1CFCEFFBDBBB8FFBDBBB9FFBCBAB7FFE6E6E5FFEBEAE9FFEDEC
          EBFFF1F0EFFF827E7CFF0000000D000000000000000000000000000000045D5A
          59B483817FFF807E7CFF7C7A78FFD9D7D6FFCAC7C6FFBAB7B6FFBBB8B7FFBDBB
          B9FFE4E4E2FFA8A6A4FF706E6CE8212020771918186A21202077706E6CE8A8A6
          A4FFE4E4E2FFBDBBB9FFBBB8B7FFBAB7B6FFCAC7C6FFD9D7D6FF7C7A78FF807E
          7CFF83817FFF5D5A59B400000004000000000000000000000000000000000000
          000000000000000000073D3C3B8AA9A7A6FFE0E0DEFFB7B4B2FFB9B6B4FFB9B5
          B3FFC1BFBDFFE4E4E3FFCDCBCAFFA3A19FFF9C9A98FFA3A19FFFCDCBCAFFE4E4
          E3FFC1BFBDFFB9B5B3FFB9B6B4FFB7B4B2FFE0E0DEFFA9A7A6FF323131770000
          0007000000000000000000000000000000000000000000000000000000000000
          0000000000050000001A0000003A807C7AFFE1E0DEFFC7C5C3FFB7B3B1FFB7B4
          B2FFB6B3B1FFB9B6B4FFCFCCCAFFE1E0DEFFE6E3E3FFE1E0DEFFCFCCCAFFB9B6
          B4FFB6B3B1FFB7B4B2FFB7B3B1FFC7C5C3FFE1E0DEFF807C7AFF0000003A0000
          001A000000050000000000000000000000000000000000000000000000000000
          00000000000E00000032757371E9C8C7C5FFE4E3E1FFB7B3B1FFB4B1AFFFB4B1
          AFFFB5B2B0FFB5B1AFFFB4B1AFFFB4B0AEFFB3B0AEFFB4B0AEFFB4B1AFFFB5B1
          AFFFB5B2B0FFB4B1AFFFB4B1AFFFB7B3B1FFE4E3E1FFC8C7C5FF757371E90000
          00320000000E0000000000000000000000000000000000000000000000000000
          00000000000D83807EF2B1AFADFFE9E8E8FFB2AFADFFB0ADABFFB4B1AFFFC4C2
          C0FFB0ADABFFB2AEACFFB2AFADFFB3B0AEFFB3B0AEFFB3B0AEFFB2AFADFFB2AE
          ACFFB0ADABFFC4C2C0FFB4B1AFFFB0ADABFFB2AFADFFE9E8E8FFB1AFADFF8380
          7EF20000000D0000000000000000000000000000000000000000000000000000
          000000000004605F5DB6B2B0AEFFEFEEEDFFBAB8B6FFB2AFADFFE5E4E2FFE4E2
          E1FFE2E1DFFFC5C2C0FFB0ADABFFB2AFADFFB4B1AFFFB2AFADFFB0ADABFFC5C2
          C0FFE2E1DFFFE4E2E1FFE5E4E2FFB2AFADFFBAB8B6FFEFEEEDFFB2B0AEFF605F
          5DB6000000040000000000000000000000000000000000000000000000000000
          000000000000000000035B5B59AEB0AEADFFF0EFEEFFEBEAE8FFCBCAC8FF8783
          81FFB0AEADFFDFDEDDFFEEEEEDFFB1AEACFFB3B0AEFFB1AEACFFEEEEEDFFDFDE
          DDFFB0AEADFF878381FFCBCAC8FFEBEAE8FFF0EFEEFFB0AEADFF5B5B59AE0000
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000035D5B59AEB5B3B1FFB5B3B1FF7B7876E30000
          000736353472878481FFF4F3F2FFAFACAAFFB2AEACFFAFACAAFFF4F3F2FF8784
          81FF36353472000000077B7876E3B5B3B1FFB5B3B1FF5D5B59AE000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000004646260B3888583F0000000050000
          0000000000158D8A88FFF5F5F4FFADAAA8FFAFABA9FFADAAA8FFF5F5F4FF8D8A
          88FF000000150000000000000005888583F0646260B300000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000D908D8BFFFAF9F8FFF7F6F5FFF7F6F5FFF7F6F5FFFAF9F8FF908D
          8BFF0000000D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000004666564B4928F8DFF908D8BFF908D8BFF908D8BFF928F8DFF6665
          64B4000000040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000006000000100000
          0010000000050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000011000000310000
          00350000001A0000000500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000016008E4EFF0081
          46F1000000390000001700000003000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000040000000D00000015000000160000001600000016000000160000
          0016000000160000001600000016000000160000001600000027008B4BFF00C7
          86FF007A41EC0000003300000014000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000D0000002B0000003F000000430000004300000043000000430000
          0043000000430000004300000043000000430000004300000048008848FF00E5
          A6FF00C080FF00592FC100000032000000140000000300000000000000000000
          0000000000000000000000000000000000040000000D0000000E000000050000
          0000000000154D4B4AC46A6866FF686664FF696564FF746568FF267E54FF008A
          47FF008947FF008847FF008847FF008847FF008847FF008746FF008342FF00DC
          A1FF00DBA0FF00BC81FF005A2FC1000000320000001400000004000000000000
          0000000000000000000000000003000000150000002E000000320000001A0000
          0007000000196B6967FFE6E6E4FFE0DFDDFFE2DFDEFFF1E2E5FF00863CFF34E8
          BCFF00DAA1FF00DAA2FF00DAA2FF00DAA2FF00DAA2FF00D9A2FF00D8A0FF00D3
          9CFF00D39CFF00D6A0FF00BA80FF005A2FC10000002E0000000D000000000000
          0000000000000000000300000014000000324E4C4CC76A6967F40000003A0000
          00230000002E6A6866FFE1E0DEFFDEDCDBFFE0DBDCFFF2E0E5FF008137FF4FE4
          C2FF00CF9AFF00CF9BFF00CF9BFF00CF9BFF00CF9BFF00CF9BFF00CF9BFF00CD
          9AFF00CD9AFF00CE9BFF00D29FFF00B881FF005D32C000000012000000000000
          0000000000040000001500000032494746C19B9997FF9B9997FF605F5DEA0000
          0049232121826F6D6BFFDEDDDBFFDAD8D7FFDCD8D8FFEDDCE1FF008036FF69E5
          CBFF00C897FF00C898FF00C899FF00C899FF00C899FF00C899FF00C999FF00C9
          99FF00C99AFF00C999FF07CDA1FF2CDCB7FF008A48FF0000000D000000000000
          00000000000D0000002E4A4947C1989795FFE3E2E0FFE2E1DFFFB6B5B3FF6A68
          66FF787775FFCBCAC8FFDAD9D7FFD7D3D2FFD9D4D4FFEBD9DEFF008036FF83E8
          D7FF00C397FF00C398FF00C399FF00C399FF00C399FF00C399FF00C398FF00C4
          98FF00C599FF00C69AFF62E0C7FF00B381FF005E32B300000004000000000000
          00000000000E514F4EBF9D9D9BFFE4E3E1FFD7D5D4FFD6D3D2FFDDDCDAFFD1D0
          CEFFE1E0DEFFD9D7D6FFD5D2D1FFD4D1D0FFD7D2D2FFE7D6DBFF008035FF95ED
          E1FF4AE8D2FF4EE8D2FF4FE8D2FF4FE8D2FF4FE8D3FF4FE8D3FF4DE7D1FF93E6
          D7FF00C097FF60DCC6FF00AF7FFF005A2EAE0000000300000000000000000000
          000000000005706D6BF19F9D9BFFE3E2E0FFD4D2D0FFD1CFCEFFD1D1CFFFD5D4
          D2FFD2D0CFFFD1CFCEFFD1CFCEFFD1CFCEFFD3CFCFFFDDD2D5FF3DA172FF0081
          36FF008136FF008136FF008136FF008136FF008137FF00833AFF008138FF81E3
          D6FF5AD9C4FF00AB7FFF005A2EAE000000030000000000000000000000000000
          0001000000030000000B656261E4B9B8B6FFDEDDDBFFD0CECCFFCFCDCCFFCFCD
          CCFFCFCDCCFFCFCDCCFFCFCDCCFFCFCDCCFFCFCDCCFFD3CECEFFDBD0D3FFE1D2
          D6FFE4D2D7FFE4D2D7FFE4D2D7FFE5D4D7FFF4E3E7FFD5BAC2FF00863EFF79E3
          D7FF00AB7EFF005A2EAE00000003000000000000000000000000000000040000
          00100000001B0000002200000035706D6BFFD4D4D2FFD3D1D0FFCDCBC9FFCDCB
          C9FFCDCBC8FFCECCCAFFD7D6D4FFDFDDDCFFE0DEDDFFE0DDDDFFD9D7D5FFD1CD
          CCFFD0CCCBFFD0CCCBFFD0CCCBFFD6D1D2FFDAD4D4FF7F6B70FF008B41FF00AC
          84FF007A3BE400000014000000040000000000000000000000000000000D0101
          012E1B1B1A6C16151568403E3EAB9E9D9BFFDFDEDCFFCBC9C7FFCBC9C7FFCBC9
          C6FFCFCDCCFFE0DFDFFFC2C1BFFF979593FF918F8DFF979593FFC2C1BFFFE0DF
          DFFFCFCDCCFFCBC9C6FFCBC9C7FFCBC9C7FFE0DEDCFFA79C9EFF008C3FFF0085
          48F81619176C0000002C0000000D000000000000000000000000000000155554
          53C2797775FF777472FF72706EFFD2D1CFFFD2D0CEFFC9C5C5FFC9C5C5FFCAC8
          C6FFE2E0DFFFA09E9BFF676564E11E1E1D46171616331E1E1D46676564E1A09E
          9BFFE2E0DFFFCAC8C6FFC9C5C5FFC9C5C5FFD2D0CEFFD5D0D0FF7B6F71FF8073
          75FF7F7677FF565252C100000015000000000000000000000000000000167B78
          76FFEEEEEDFFEAE9E8FFE7E7E6FFE4E2E1FFC6C3C2FFC7C4C3FFC6C3C2FFD3D3
          D1FFC6C4C2FF696664E200000008000000000000000000000000000000096966
          64E2C6C4C2FFD3D3D1FFC6C3C2FFC7C4C3FFC6C3C2FFE4E2E1FFE9E7E6FFEBE9
          E8FFEFEDEDFF7C7876FF00000016000000000000000000000000000000167A78
          76FFEBEAE8FFC3C0BFFFC4C0BFFFC4C1C0FFC5C2C1FFC5C2C1FFC4C1C0FFE0DE
          DDFF9C9998FF201F1E5600000004000000000000000000000000000000051F1E
          1E579C9998FFE0DEDDFFC4C1C0FFC5C2C1FFC5C2C1FFC4C1C0FFC4C0BFFFC3C0
          BFFFEBEAE8FF7A7876FF00000016000000000000000000000000000000167C79
          77FFEBEBE9FFC1BEBCFFC2BFBCFFC3BFBDFFC3C0BEFFC3C0BEFFC2BFBCFFE1DF
          DEFF969492FF0D0D0D3D00000008000000000000000000000000000000091817
          174F969492FFE2E1E0FFC2BEBCFFC3C0BEFFC3C0BEFFC3BFBDFFC2BFBCFFC1BE
          BCFFEBEBE9FF7C7977FF00000016000000000000000000000000000000157D7B
          79FFEDECEAFFBDBBB9FFBDBBB9FFBEBCBAFFBFBDBBFFBFBEBCFFBEBCBAFFE0DE
          DEFF9E9D9AFF2020206D0000001C0000000900000005000000090000001C201F
          1F6C9E9D9AFFE0DEDEFFBEBCBAFFBFBEBCFFBFBDBBFFBEBCBAFFBDBBB9FFBDBB
          B9FFEDECEAFF7D7B79FF000000150000000000000000000000000000000D827E
          7CFFF1F0EFFFEDECEBFFEBEAE9FFE6E6E5FFBCBAB7FFBDBBB9FFBDBBB8FFD1CF
          CEFFCBC9C7FF6F6C6AE80000003C0000002700000020000000270000003C6F6C
          6AE8CBC9C7FFD1CFCEFFBDBBB8FFBDBBB9FFBCBAB7FFE6E6E5FFEBEAE9FFEDEC
          EBFFF1F0EFFF827E7CFF0000000D000000000000000000000000000000045D5A
          59B483817FFF807E7CFF7C7A78FFD9D7D6FFCAC7C6FFBAB7B6FFBBB8B7FFBDBB
          B9FFE4E4E2FFA8A6A4FF706E6CE8212020771918186A21202077706E6CE8A8A6
          A4FFE4E4E2FFBDBBB9FFBBB8B7FFBAB7B6FFCAC7C6FFD9D7D6FF7C7A78FF807E
          7CFF83817FFF5D5A59B400000004000000000000000000000000000000000000
          000000000000000000073D3C3B8AA9A7A6FFE0E0DEFFB7B4B2FFB9B6B4FFB9B5
          B3FFC1BFBDFFE4E4E3FFCDCBCAFFA3A19FFF9C9A98FFA3A19FFFCDCBCAFFE4E4
          E3FFC1BFBDFFB9B5B3FFB9B6B4FFB7B4B2FFE0E0DEFFA9A7A6FF323131770000
          0007000000000000000000000000000000000000000000000000000000000000
          0000000000050000001A0000003A807C7AFFE1E0DEFFC7C5C3FFB7B3B1FFB7B4
          B2FFB6B3B1FFB9B6B4FFCFCCCAFFE1E0DEFFE6E3E3FFE1E0DEFFCFCCCAFFB9B6
          B4FFB6B3B1FFB7B4B2FFB7B3B1FFC7C5C3FFE1E0DEFF807C7AFF0000003A0000
          001A000000050000000000000000000000000000000000000000000000000000
          00000000000E00000032757371E9C8C7C5FFE4E3E1FFB7B3B1FFB4B1AFFFB4B1
          AFFFB5B2B0FFB5B1AFFFB4B1AFFFB4B0AEFFB3B0AEFFB4B0AEFFB4B1AFFFB5B1
          AFFFB5B2B0FFB4B1AFFFB4B1AFFFB7B3B1FFE4E3E1FFC8C7C5FF757371E90000
          00320000000E0000000000000000000000000000000000000000000000000000
          00000000000D83807EF2B1AFADFFE9E8E8FFB2AFADFFB0ADABFFB4B1AFFFC4C2
          C0FFB0ADABFFB2AEACFFB2AFADFFB3B0AEFFB3B0AEFFB3B0AEFFB2AFADFFB2AE
          ACFFB0ADABFFC4C2C0FFB4B1AFFFB0ADABFFB2AFADFFE9E8E8FFB1AFADFF8380
          7EF20000000D0000000000000000000000000000000000000000000000000000
          000000000004605F5DB6B2B0AEFFEFEEEDFFBAB8B6FFB2AFADFFE5E4E2FFE4E2
          E1FFE2E1DFFFC5C2C0FFB0ADABFFB2AFADFFB4B1AFFFB2AFADFFB0ADABFFC5C2
          C0FFE2E1DFFFE4E2E1FFE5E4E2FFB2AFADFFBAB8B6FFEFEEEDFFB2B0AEFF605F
          5DB6000000040000000000000000000000000000000000000000000000000000
          000000000000000000035B5B59AEB0AEADFFF0EFEEFFEBEAE8FFCBCAC8FF8783
          81FFB0AEADFFDFDEDDFFEEEEEDFFB1AEACFFB3B0AEFFB1AEACFFEEEEEDFFDFDE
          DDFFB0AEADFF878381FFCBCAC8FFEBEAE8FFF0EFEEFFB0AEADFF5B5B59AE0000
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000035D5B59AEB5B3B1FFB5B3B1FF7B7876E30000
          000736353472878481FFF4F3F2FFAFACAAFFB2AEACFFAFACAAFFF4F3F2FF8784
          81FF36353472000000077B7876E3B5B3B1FFB5B3B1FF5D5B59AE000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000004646260B3888583F0000000050000
          0000000000158D8A88FFF5F5F4FFADAAA8FFAFABA9FFADAAA8FFF5F5F4FF8D8A
          88FF000000150000000000000005888583F0646260B300000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000D908D8BFFFAF9F8FFF7F6F5FFF7F6F5FFF7F6F5FFFAF9F8FF908D
          8BFF0000000D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000004666564B4928F8DFF908D8BFF908D8BFF908D8BFF928F8DFF6665
          64B4000000040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000006000000100000
          0010000000050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000011000000310000
          00350000001A0000000500000000000000000000000000000000000000000000
          00040000000D000000120000000C000000030000000000000000000000010000
          00050000000C0000001200000016000000160000001600000016000000160000
          00120000000C0000000500000001000000000000000000000016008D4AFF0081
          46F1000000390000001700000003000000000000000000000000000000000000
          000D0000002B0000003B0000002F0000001C000000110000000D000000120000
          001E0000002E0000003B00000042000000430000004300000043000000420000
          003B0000002E0000001F00000017000000160000001600000027008A41FF00C7
          85FF007A41EC0000003300000014000000030000000000000000000000000000
          00123171A8C5449DEDFF285C8AB50206094B0000003700000031000000381507
          0B5C642336B5973452EBAB3B5DFFAB3A5DFFAB3A5DFFAF395EFFB6375EFFA72F
          53EB701F37B517050B5C0000004300000043000000430000004800873EFF00E5
          A4FF00C080FF00592FC100000032000000140000000300000000000000000000
          000C46A3EEFF80F5FFFF62CEFAFF47AEF5FF318DCBDC322B3F958D2D45DCAE3F
          5DFFB44E5FFFB65460FFB95C60FFB95B60FFBB5B61FFC55962FF397F53FF0093
          46FF009146FF008E46FF008A47FF008846FF008743FF00863FFF00823EFF00DC
          A0FF00DBA0FF00BC81FF005A2FC1000000320000001400000004000000000000
          00032B638BA064D2FBFF6DECFFFF5FEEFFFF8978A1FFB53853FFB64F5CFFBB5D
          62FFCA6D70FFD47A7CFFDE8485FFDD8385FFE08385FFF08188FF008D42FF31EA
          BDFF00DBA1FF00DAA2FF00DAA2FF00DAA2FF00DAA1FF00D9A0FF00D79FFF00D3
          9CFF00D39CFF00D6A0FF00BA80FF005A2FC10000002E0000000D000000000000
          00000306091A4CBBFAFF64E2FFFFA6506EFFB73D53FFBA565DFFCD7072FFDC81
          82FFDD7F80FFDC797BFFDB7678FFDB7577FFDE7578FFF1767EFF00863CFF4FE5
          C2FF00CF9AFF00CF9BFF00CF9BFF00CF9BFF00CF9BFF00CF9BFF00CF9BFF00CD
          9AFF00CD9AFF00CE9BFF00D29FFF00B881FF005D32C000000012000000000000
          000100000013349EC8D4A55170FFB74255FFBC5B5FFFD87D7FFFDD8082FFDB79
          7BFFDF9B9EFFE3DEDFFFE7FFFFFFE9FFFFFFEEFFFFFFFFFFFFFF007F35FF69E5
          CBFF00C897FF00C898FF00C899FF00C899FF00C899FF00C899FF00C999FF00C9
          99FF00C99AFF00C999FF07CDA1FF2CDCB7FF008A48FF0000000D000000000000
          000700000022692C3DB8B8485AFFC06065FFDE8485FFDE7F80FFDE898BFFE3E8
          E9FFE6FFFFFFE5FFFFFFE4FFFFFFE7FFFFFF9EA6A6FFFDFFFFFF007D32FF83E7
          D6FF00C397FF00C398FF00C399FF00C399FF00C399FF00C399FF00C398FF00C4
          98FF00C599FF00C69AFF62E0C7FF00B381FF005E32B300000004000000010000
          0011220D125DB3455BFFC0646CFFDB8082FFDF8080FFDD9293FFE1FFFFFFE3FF
          FFFF959F9FFFE2FFFFFFE1FDFFFFE5FFFFFF9CA4A5FFF8FFFFFF007C30FF95EB
          DFFF4AE7D1FF4EE7D2FF4FE7D2FF4FE7D2FF4FE8D3FF4FE8D3FF4DE7D1FF93E6
          D7FF00C097FF60DCC6FF00AF7FFF005A2EAE0000000300000000000000050000
          001E8E374BDCBC5F6DFFD27A7EFFE18283FFDF8B8BFFDEFFFFFFDDFFFFFFDEFD
          FFFFDFFDFFFFDEFCFEFFDEFBFDFFE1FFFFFF969F9FFFEEFFFFFF42AF82FF007B
          2FFF007C31FF007C31FF007C32FF007E33FF008136FF00843BFF008239FF81E3
          D6FF58DAC4FF00AC7EFF005B2EAF0000000300000000000000000000000C1508
          0B47B1485FFFC9777EFFE08585FFE17C7DFFDCE4E7FFDDFFFFFFDDFBFEFFDBF9
          FCFFDCF9FCFFDCF9FCFFDCF9FDFFDDFAFDFFDEFCFFFFE1FCFFFFE8FEFFFFEEFF
          FFFFF1FFFFFFF1FFFFFFF3FFFFFFF4FFFFFFF5E5F0FFFF7883FF00873EFF76E3
          D7FF00AD7EFF00582AB10000000E000000000000000000000000000000126629
          36ADC06472FFD68286FFE28383FFDE9D9FFFDAFFFFFF8D9798FFDAFAFDFFD9F8
          FBFFDAFAFDFFDDFEFFFFDEFFFFFFDBFBFEFFD9F9FCFFD9F8FBFFDAF8FCFFDBF9
          FCFFDBF9FDFFDCF9FDFFDEFCFFFF90999AFFE1FFFFFFF69BA4FF00893EFF00AD
          83FF12844AFF702133A700000012000000000000000000000000000000169B3D
          4FE9CA7883FFDE8788FFE38080FFD8D9DBFFD6FCFFFFD7F8FDFFD6F7FBFFD6F6
          FAFFDAFBFFFF878E8EFF828A8BFFE0FFFFFFD9FAFEFFD6F6FAFFD5F5F9FFD5F5
          F9FFD5F5F9FFD5F5F9FFD6F7FBFFD7F8FDFFD8FCFFFFE8D8DFFF00883AFF108D
          51FFCD717FFFA23B51E80000001600000000000000000000000000000016B045
          59FFD38B94FFE58787FFE47D7DFFD2F9FDFFD2F8FCFFD3F6FAFFD3F5F9FFD3F6
          FAFFD7FBFFFF889190FF4E4745FF7D8888FFDEFFFFFFD6F9FDFFD3F5F9FFD2F4
          F8FFD2F4F8FFD2F4F8FFD3F5F9FFD3F6FAFFD4F8FDFFD8F8FFFFF37C81FFF486
          8AFFDA8B96FFB1455AFF0000001600000000000000000000000000000016B147
          58FFD6929CFFE48787FFE47D7EFFCEFFFFFFD2FAFEFFD4F9FDFFD3F8FCFFD1F5
          F9FFD2F7FBFFD9FFFFFF848E8EFF433D3BFF758080FFDBFFFFFFD2F7FBFFCFF4
          F7FFCFF3F7FFD1F5F9FFD3F8FCFFD4F9FDFFD2FAFEFFCFFFFFFFE77D7EFFE787
          87FFD7929DFFB14758FF0000001600000000000000000000000000000016B047
          58FFDB98A3FFE58787FFE67E7FFFD4FFFFFF829293FF859394FF839091FFCFF4
          FAFFCDF2F8FFD0F6FCFFDAFFFFFF808B8DFF383131FF6E787AFFD3FAFFFFCDF2
          F7FFCCF1F6FFCFF4FAFF839091FF859394FF829293FFD4FFFFFFE67E7FFFE587
          87FFDB98A3FFB04758FF0000001600000000000000000000000000000016B148
          57FFDE9FAAFFE68787FFE77E7FFFD0FFFFFFCCF7FCFFCEF6FBFFCDF5FAFFCBF2
          F7FFCAF1F6FFCDF5FBFFD7FFFFFF7A8888FF3D3735FF727B7DFFCFF9FEFFCAF1
          F6FFC9F0F5FFCBF2F7FFCDF5FAFFCEF6FBFFCCF7FCFFD0FFFFFFE77E7FFFE687
          87FFDE9FAAFFB14857FF0000001600000000000000000000000000000012B149
          57FFE2A7B2FFE78888FFE78081FFCFF4F9FFC5F2F8FFC7F0F6FFC7EFF5FFC7EF
          F5FFC9F2F9FFD0FCFFFF798586FF433B3AFF798486FFD1FDFFFFC9F2F8FFC6EE
          F4FFC6EEF4FFC6EEF4FFC7EFF5FFC7F0F6FFC5F2F8FFCFF4F9FFE78081FFE788
          88FFE2A7B2FFB14957FF000000120000000000000000000000000000000C9D42
          4EE6DC9BA6FFE79194FFE88384FFD5D2D7FFC3F2FAFFC5F1F7FFC5F0F6FFC6F2
          F8FFCCFAFFFF7C898AFF4B4340FF7C8889FFCEFCFFFFC6F2F8FFC4EEF4FFC3ED
          F3FFC3EDF3FFC3EDF3FFC4EFF5FFC5F1F7FFC3F2FAFFD5D2D7FFE88384FFE791
          94FFDC9BA6FF9D424EE60000000C00000000000000000000000000000005682D
          34A1D18792FFE8A1A7FFE98786FFE19DA0FFC3F2FDFF758789FFC4F1F9FFC8F8
          FFFF7F8C8DFF534947FF7F8C8DFFCAF9FFFFC4F0F7FFC1ECF3FFC0EBF2FFC0EB
          F2FFC0EBF2FFC0EBF3FFC2EEF6FF748688FFC3F2FDFFE19DA0FFE98786FFE8A1
          A7FFD18792FF682D34A100000005000000000000000000000000000000011509
          0A30BA5861FFEEB9C4FFEA8B8CFFEC8484FFC7D1DAFFBDEFF9FFC2F4FBFF818D
          8EFF5B514DFF839092FFC6F8FFFFC1F0F7FFC0EFF6FFBFECF3FFBDEAF1FFBDEA
          F1FFBDEBF2FFBDEBF2FFBEEEF4FFBDEEF8FFC7D1DAFFEC8484FFEA8B8CFFEEB9
          C4FFBA5861FF15090A3000000001000000000000000000000000000000040000
          001991393DD4DC939EFFEEA6ABFFEA8888FFE59091FFB6DDECFFBBEEF8FF8390
          91FF869394FFC3F6FEFFBEEDF6FFBEEEF6FF728285FFBEEDF6FFBBE9F2FFBCEA
          F2FFBCECF4FFBBECF4FFB7E8F2FFB6DCEBFFE59091FFEA8888FFEEA6ABFFDC93
          9EFF91393DD400000019000000040000000000000000000000000000000D0000
          002E475E83C7C35558FFF2BFCDFFEC9496FFEC8886FFE29597FFAFD8E9FFB6E9
          F6FF708689FFBCF0F7FFB9EBF2FFBCEFF7FF718587FFBCEFF7FFB9EAF2FFBAED
          F4FF6D8082FFB2E3F0FFADD6E6FFE29596FFEC8886FFEC9496FFF2BFCDFFC355
          58FF475E83C70000002E0000000D000000000000000000000000000000142E71
          A3BF46B5FCFF8A7897FFD3767CFFF9C9D8FFED8E8EFFED8987FFE79191FFB5C4
          D3FFA4D8ECFFABDCEBFFB0E3EFFFB5E9F3FF6D8285FFB5E9F3FFB0E2EFFFABDC
          EBFFA4D7EBFFB4C3D2FFE79191FFED8987FFED8E8EFFF9C9D8FFD3767CFF8A78
          97FF46B5FCFF2E71A3BF00000014000000000000000000000000000000164AAB
          F1FF5BC4F8FF51C7FFFFAB5B65FFD3797FFFFCD0DFFFEF9899FFED8989FFF188
          87FFDC999EFFB4BAC8FF9DCADFFF98CFE6FF9AD0E8FF98CFE6FF9DCADFFFB4BA
          C8FFDC999EFFF18887FFED8989FFEF9899FFFDD0DFFFD3797FFFAB5B65FF51C7
          FFFF5BC4F8FF4AABF1FF00000016000000000000000000000000000000124BAF
          F2FF67CFF7FF62CFFBFF60CBF9FFAC5E66FFD47B81FFFDD2E1FFF7B3BAFFEF8F
          8FFFEF8A88FFF18987FFF28987FFF38987FFF48987FFF38987FFF28987FFF189
          87FFEF8A88FFEF8F8FFFF7B3BAFFFDD2E1FFCF7277FFAC5E66FF60CBF9FF62CF
          FBFF67CFF7FF4BAFF2FF00000012000000000000000000000000000000094BAD
          EDFA6CD7F9FF6EDBFBFF6ADCFEFF63E2FFFF968A98FFC55556FFE8A6B0FFFFDE
          EEFFFABCC6FFF3A1A4FFEE8B89FFEE8B89FFEE8B89FFEE8B89FFEE8B89FFF3A1
          A4FFFABCC6FFFFDEEEFFE8A6B0FFC55556FF968A98FF63E2FFFF6ADCFEFF6EDB
          FBFF6CD7F9FF4BADEDFA00000009000000000000000000000000000000021C41
          57665FC8F7FF7AE9FDFF77E7FEFF74E8FFFF71EEFFFF84C9D9FFA36C76FFC25E
          5FFFE3A6B1FFF7CDDDFFFFECFEFFFFEBFEFFFFEBFDFFFFEBFEFFFFECFEFFF7CD
          DDFFE3A6B1FFC25E5FFFA36C76FF84C9D9FF71EEFFFF74E8FFFF77E7FEFF7AE9
          FDFF5FC8F7FF1C41576600000002000000000000000000000000000000000000
          0004347BA3B06AD7F9FF82F4FEFF85F9FFFF84FBFFFF6CE5FFFF287DA1A90F06
          061B69313197A04A49E3B55352FFB45351FFB45251FFB45351FFB55352FFA04A
          49E3693131970F06061B287DA1A96CE5FFFF84FBFFFF85F9FFFF82F4FEFF6AD7
          F9FF347BA3B00000000400000000000000000000000000000000000000000000
          0000000000021D4357614FB6EEF851BBF5FF51BCF6FF3580A7AF000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000043580A7AF51BCF6FF51BBF5FF4FB6EEF81D43
          5761000000020000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000500000010000000160000001600000016000000160000
          0016000000160000001600000016000000160000001000000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000001200000032000000420000004300000043000000430000
          0043000000430000004300000043000000420000003100000010000000000000
          00040000000D000000120000000C000000030000000000000000000000010000
          00050000000C0000001200000016000000160000001600000016000000160000
          00120000000F000000212A3AB5F12B3BC0FF2B3ABEFF2B3BBEFF2B3BBEFF2B3B
          BEFF2B3BBEFF2B3BBEFF2B3ABEFF2B3BC0FF2B3AB6F300000016000000000000
          000D0000002B0000003B0000002F0000001C000000110000000D000000120000
          001E0000002E0000003B00000042000000430000004300000043000000410000
          003B00000031060C265C283BC2FF7F90FFFF6779FFFF687AFFFF687AFFFF687A
          FFFF687AFFFF687AFFFF6779FFFF7F90FFFF2B3BC0FF00000016000000000000
          00123171A8C5449DEDFF285C8AB50206094B0000003700000031000000381507
          0B5C642336B5973452EBAB3B5DFFAB3A5DFFAB3A5DFFAB3A5DFFAB3B5DFF9833
          51EA64212FB12316368D2339C4FF8192FFFF5A6FFCFF5B70FBFF5C70FBFF5C70
          FBFF5C70FBFF5B70FBFF5A6FFCFF8292FFFF2939BEFF00000016000000000000
          000C46A3EEFF80F5FFFF62CEFAFF47AEF5FF318DCBDC322B3F958D2D45DCAE3F
          5DFFB44E5FFFB65460FFB95C60FFB95B60FFB95B60FFB95B60FFB95C60FFB754
          5FFFBA4E5BFF963F6FFF1F38C6FF8899FFFF5166F8FF5368F7FF5469F7FF5469
          F7FF5469F7FF5368F7FF5166F8FF8999FFFF2838BEFF00000016000000000000
          00032B638BA064D2FBFF6DECFFFF5FEEFFFF8978A1FFB53853FFB64F5CFFBB5D
          62FFCA6D70FFD47A7CFFDE8485FFDD8385FFDD8385FFDD8385FFDE8485FFD57A
          7BFFCF6E6DFF9F5575FF1C35C6FF91A0FEFF4A5FF4FF4D62F4FF4E63F4FF4E63
          F4FF4E63F4FF4D62F4FF4A5FF4FF92A1FDFF2838BFFF00000016000000000000
          00000306091A4CBBFAFF64E2FFFFA6506EFFB73D53FFBA565DFFCD7072FFDC81
          82FFDD7F80FFDC797BFFDB7678FFDB7577FFDB7577FFDB7577FFDB7678FFDD7A
          7BFFE3817DFFB9738EFF1A32C4FF9AA9FCFF4159F1FF465DF1FF475EF1FF475E
          F1FF475EF1FF465DF1FF4159F1FF9CAAFCFF2838BFFF00000016000000000000
          000100000013349EC8D4A55170FFB74255FFBC5B5FFFD87D7FFFDD8082FFDB79
          7BFFDF9B9EFFE3DEDFFFE7FFFFFFE9FFFFFFEAFFFFFFE9FFFFFFE7FFFFFFE4DE
          DEFFE59E9BFFB76C87FF182FC2FFA5B2FBFF3952EEFF3E57EEFF4058EEFF4058
          EEFF4058EEFF3E57EEFF3952EEFFA7B3FBFF2737BFFF00000016000000000000
          000700000022692C3DB8B8485AFFC06065FFDE8485FFDE7F80FFDE898BFFE3E8
          E9FFE6FFFFFFE5FFFFFFE4FFFFFFE7FFFFFF9AA5A3FFE7FFFFFFE4FFFFFFE6FF
          FFFFEDFFFFFFBECAE6FF182ABEFFB2BDFBFF304BEBFF3651EBFF3752EBFF3752
          EBFF3752EBFF3651EBFF304BEBFFB4BFFBFF2636BFFF00000016000000010000
          0011220D125DB3455BFFC0646CFFDB8082FFDF8080FFDD9293FFE1FFFFFFE3FF
          FFFF959F9FFFE2FFFFFFE1FDFFFFE5FFFFFF99A3A2FFE5FFFFFFE1FDFFFFE3FF
          FFFF9BA5A0FFBDD8F4FF1828BCFFC0C8FBFF2341E6FF2945E6FF2A47E6FF2A47
          E6FF2A47E6FF2945E6FF2441E6FFC2CBFCFF2737BFFF00000015000000050000
          001E8E374BDCBC5F6DFFD27A7EFFE18283FFDF8B8BFFDEFFFFFFDDFFFFFFDEFD
          FFFFDFFDFFFFDEFCFEFFDEFBFDFFE1FFFFFF949E9EFFE1FFFFFFDEFBFDFFDFFC
          FEFFE5FFFFFFB7D1F1FF1625BBFF899AF5FF8B9CF4FF8D9EF5FF8E9FF5FF8EA0
          F5FF8EA0F5FF8EA0F5FF8E9FF5FF8FA0F7FF2A3AC1FF0000000D0000000C1508
          0B47B1485FFFC9777EFFE08585FFE17C7DFFDCE4E7FFDDFFFFFFDDFBFEFFDBF9
          FCFFDCF9FCFFDCF9FCFFDCF9FDFFDDFAFDFFDEFBFEFFDDFAFDFFDBF8FBFFDBF8
          FBFFDEFBFDFFE8FFFFFF6579D5FF1625BDFF1829BEFF172DC1FF1730C5FF1832
          C7FF1A35C8FF1E37C7FF2438C3FF293AC1FF1F2B86B400000004000000126629
          36ADC06472FFD68286FFE28383FFDE9D9FFFDAFFFFFF8D9798FFDAFAFDFFD9F8
          FBFFDAFAFDFFDDFEFFFFDEFFFFFFDBFBFEFFD9F9FCFFD8F7FAFFD8F7FAFFD8F7
          FAFFD9F8FAFFDCFCFCFFE5FFFFFF9BA69BFFEBFFFFFFEFA59AFFF3887CFFE485
          7DFFCE6667FF6324269F00000012000000000000000000000000000000169B3D
          4FE9CA7883FFDE8788FFE38080FFD8D9DBFFD6FCFFFFD7F8FDFFD6F7FBFFD6F6
          FAFFDAFBFFFF878E8EFF828A8BFFE0FFFFFFD9FAFEFFD6F6FAFFD5F5F9FFD5F5
          F9FFD5F5F9FFD6F6F9FFD8F8FBFFDAFBFEFFD8FEFFFFDBDBDAFFE6817FFFE187
          88FFCA757EFFA03E4AE70000001600000000000000000000000000000016B045
          59FFD38B94FFE58787FFE47D7DFFD2F9FDFFD2F8FCFFD3F6FAFFD3F5F9FFD3F6
          FAFFD7FBFFFF889190FF4E4745FF7D8888FFDEFFFFFFD6F9FDFFD3F5F9FFD2F4
          F8FFD2F4F8FFD2F4F8FFD3F5F9FFD3F6FAFFD2F8FCFFD2F9FDFFE47D7DFFE587
          87FFD38C94FFB14558FF0000001600000000000000000000000000000016B147
          58FFD6929CFFE48787FFE47D7EFFCEFFFFFFD2FAFEFFD4F9FDFFD3F8FCFFD1F5
          F9FFD2F7FBFFD9FFFFFF848E8EFF433D3BFF758080FFDBFFFFFFD2F7FBFFCFF4
          F7FFCFF3F7FFD1F5F9FFD3F8FCFFD4F9FDFFD2FAFEFFCEFFFFFFE47D7EFFE487
          87FFD6929CFFB14758FF0000001600000000000000000000000000000016B047
          58FFDB98A3FFE58787FFE67E7FFFD4FFFFFF829293FF859394FF839091FFCFF4
          FAFFCDF2F8FFD0F6FCFFDAFFFFFF808B8DFF383131FF6E787AFFD3FAFFFFCDF2
          F7FFCCF1F6FFCFF4FAFF839091FF859394FF829293FFD4FFFFFFE67E7FFFE587
          87FFDB98A3FFB04758FF0000001600000000000000000000000000000016B148
          57FFDE9FAAFFE68787FFE77E7FFFD0FFFFFFCCF7FCFFCEF6FBFFCDF5FAFFCBF2
          F7FFCAF1F6FFCDF5FBFFD7FFFFFF7A8888FF3D3735FF727B7DFFCFF9FEFFCAF1
          F6FFC9F0F5FFCBF2F7FFCDF5FAFFCEF6FBFFCCF7FCFFD0FFFFFFE77E7FFFE687
          87FFDE9FAAFFB14857FF0000001600000000000000000000000000000012B149
          57FFE2A7B2FFE78888FFE78081FFCFF4F9FFC5F2F8FFC7F0F6FFC7EFF5FFC7EF
          F5FFC9F2F9FFD0FCFFFF798586FF433B3AFF798486FFD1FDFFFFC9F2F8FFC6EE
          F4FFC6EEF4FFC6EEF4FFC7EFF5FFC7F0F6FFC5F2F8FFCFF4F9FFE78081FFE788
          88FFE2A7B2FFB14957FF000000120000000000000000000000000000000C9D42
          4EE6DC9BA6FFE79194FFE88384FFD5D2D7FFC3F2FAFFC5F1F7FFC5F0F6FFC6F2
          F8FFCCFAFFFF7C898AFF4B4340FF7C8889FFCEFCFFFFC6F2F8FFC4EEF4FFC3ED
          F3FFC3EDF3FFC3EDF3FFC4EFF5FFC5F1F7FFC3F2FAFFD5D2D7FFE88384FFE791
          94FFDC9BA6FF9D424EE60000000C00000000000000000000000000000005682D
          34A1D18792FFE8A1A7FFE98786FFE19DA0FFC3F2FDFF758789FFC4F1F9FFC8F8
          FFFF7F8C8DFF534947FF7F8C8DFFCAF9FFFFC4F0F7FFC1ECF3FFC0EBF2FFC0EB
          F2FFC0EBF2FFC0EBF3FFC2EEF6FF748688FFC3F2FDFFE19DA0FFE98786FFE8A1
          A7FFD18792FF682D34A100000005000000000000000000000000000000011509
          0A30BA5861FFEEB9C4FFEA8B8CFFEC8484FFC7D1DAFFBDEFF9FFC2F4FBFF818D
          8EFF5B514DFF839092FFC6F8FFFFC1F0F7FFC0EFF6FFBFECF3FFBDEAF1FFBDEA
          F1FFBDEBF2FFBDEBF2FFBEEEF4FFBDEEF8FFC7D1DAFFEC8484FFEA8B8CFFEEB9
          C4FFBA5861FF15090A3000000001000000000000000000000000000000040000
          001991393DD4DC939EFFEEA6ABFFEA8888FFE59091FFB6DDECFFBBEEF8FF8390
          91FF869394FFC3F6FEFFBEEDF6FFBEEEF6FF728285FFBEEDF6FFBBE9F2FFBCEA
          F2FFBCECF4FFBBECF4FFB7E8F2FFB6DCEBFFE59091FFEA8888FFEEA6ABFFDC93
          9EFF91393DD400000019000000040000000000000000000000000000000D0000
          002E475E83C7C35558FFF2BFCDFFEC9496FFEC8886FFE29597FFAFD8E9FFB6E9
          F6FF708689FFBCF0F7FFB9EBF2FFBCEFF7FF718587FFBCEFF7FFB9EAF2FFBAED
          F4FF6D8082FFB2E3F0FFADD6E6FFE29596FFEC8886FFEC9496FFF2BFCDFFC355
          58FF475E83C70000002E0000000D000000000000000000000000000000142E71
          A3BF46B5FCFF8A7897FFD3767CFFF9C9D8FFED8E8EFFED8987FFE79191FFB5C4
          D3FFA4D8ECFFABDCEBFFB0E3EFFFB5E9F3FF6D8285FFB5E9F3FFB0E2EFFFABDC
          EBFFA4D7EBFFB4C3D2FFE79191FFED8987FFED8E8EFFF9C9D8FFD3767CFF8A78
          97FF46B5FCFF2E71A3BF00000014000000000000000000000000000000164AAB
          F1FF5BC4F8FF51C7FFFFAB5B65FFD3797FFFFCD0DFFFEF9899FFED8989FFF188
          87FFDC999EFFB4BAC8FF9DCADFFF98CFE6FF9AD0E8FF98CFE6FF9DCADFFFB4BA
          C8FFDC999EFFF18887FFED8989FFEF9899FFFDD0DFFFD3797FFFAB5B65FF51C7
          FFFF5BC4F8FF4AABF1FF00000016000000000000000000000000000000124BAF
          F2FF67CFF7FF62CFFBFF60CBF9FFAC5E66FFD47B81FFFDD2E1FFF7B3BAFFEF8F
          8FFFEF8A88FFF18987FFF28987FFF38987FFF48987FFF38987FFF28987FFF189
          87FFEF8A88FFEF8F8FFFF7B3BAFFFDD2E1FFCF7277FFAC5E66FF60CBF9FF62CF
          FBFF67CFF7FF4BAFF2FF00000012000000000000000000000000000000094BAD
          EDFA6CD7F9FF6EDBFBFF6ADCFEFF63E2FFFF968A98FFC55556FFE8A6B0FFFFDE
          EEFFFABCC6FFF3A1A4FFEE8B89FFEE8B89FFEE8B89FFEE8B89FFEE8B89FFF3A1
          A4FFFABCC6FFFFDEEEFFE8A6B0FFC55556FF968A98FF63E2FFFF6ADCFEFF6EDB
          FBFF6CD7F9FF4BADEDFA00000009000000000000000000000000000000021C41
          57665FC8F7FF7AE9FDFF77E7FEFF74E8FFFF71EEFFFF84C9D9FFA36C76FFC25E
          5FFFE3A6B1FFF7CDDDFFFFECFEFFFFEBFEFFFFEBFDFFFFEBFEFFFFECFEFFF7CD
          DDFFE3A6B1FFC25E5FFFA36C76FF84C9D9FF71EEFFFF74E8FFFF77E7FEFF7AE9
          FDFF5FC8F7FF1C41576600000002000000000000000000000000000000000000
          0004347BA3B06AD7F9FF82F4FEFF85F9FFFF84FBFFFF6CE5FFFF287DA1A90F06
          061B69313197A04A49E3B55352FFB45351FFB45251FFB45351FFB55352FFA04A
          49E3693131970F06061B287DA1A96CE5FFFF84FBFFFF85F9FFFF82F4FEFF6AD7
          F9FF347BA3B00000000400000000000000000000000000000000000000000000
          0000000000021D4357614FB6EEF851BBF5FF51BCF6FF3580A7AF000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000043580A7AF51BCF6FF51BBF5FF4FB6EEF81D43
          5761000000020000000000000000000000000000000000000000}
      end>
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 536
    Top = 65528
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 2
      Offsets.RootItemsAreaOffsetVert = 2
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 752
    Top = 65528
    PixelsPerInch = 96
  end
  object cxImgl_small: TcxImageList
    FormatVersion = 1
    DesignInfo = -1048304
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003636
          36E63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF0C0C0C330000000000000000000000002B2B
          2BB73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF222222900000000000000000000000002020
          208A3B3B3BFC3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF373737EA0101010600000000000000001E1E
          1E80333333D73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1313135100000000000000001E1E
          1E80282828A83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF292929AE00000000000000001E1E
          1E801E1E1E813A3A3AF53C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3B3B3BFC05050515000000001E1E
          1E801E1E1E802F2F2FC63C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1B1B1B72000000001E1E
          1E801E1E1E80242424983C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF313131CF000000001B1B
          1B741E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E
          1E801E1E1E801E1E1E801E1E1E80000000000000000000000000000000000808
          0820181818651E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E1E801E1E
          1E801E1E1E801E1E1E801E1E1E80000000000000000000000000000000000000
          0000000000000000000000000000000000001B1B1B741E1E1E801E1E1E801E1E
          1E801E1E1E801E1E1E801B1B1B74000000000000000000000000000000000000
          00000000000000000000000000000000000008080820181818651E1E1E801E1E
          1E801E1E1E801818186508080820000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000011111148303030CC303030CC303030CC303030CC18181867000000000000
          0000000000000000000000000000000000000000000000000000000000000C0C
          0C34181818661F1F1F84303030CC303030CC303030CC303030CC181818670000
          00000000000000000000000000000000000000000000000000000C0C0C341818
          186618181866181818661F1F1F84303030CC303030CC303030CC2A2A2AB31E1E
          1E810000000000000000000000000000000000000000000000000C0C0C321818
          18661818186618181866181818661F1F1F84303030CC2A2A2AB33C3C3CFF3C3C
          3CFF1E1E1E810000000000000000000000000000000000000000000000000C0C
          0C32181818661818186618181866181818662020208A3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E8100000000000000000000000000000000000000000000
          00000C0C0C3218181866181818661A1A1A7024242499272727A53C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
          0000000000000C0C0C321A1A1A70242424992424249924242499272727A53C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
          000000000000000000001212124C242424992424249924242499242424992727
          27A53C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E8100000000000000000000
          00000000000000000000000000001212124C2424249924242499242424992424
          2499272727A53C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
          0000000000000000000000000000000000001212124C24242499242424992424
          249924242499272727A53C3C3CFF1E1E1E7E0000000000000000000000000000
          000000000000000000000000000000000000000000001212124C242424992424
          249924242499242424991515155B000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001212124C2424
          2499242424991212124C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001212
          124C1212124C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000003C3C
          3CFF1E1E1E810000000000000000000000000000000000000000000000000000
          00000000000000000000141414552D2D2DC02D2D2DC014141455000000001E1E
          1E7E3C3C3CFF1E1E1E8100000000000000000000000000000000000000000000
          0000000000001B1B1B72353535E03C3C3CFF3C3C3CFF2D2D2DC0000000000000
          00001E1E1E7E3C3C3CFF1E1E1E81000000000000000000000000000000000000
          00001212124E3B3B3BFC3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC0000000000000
          0000000000001E1E1E7E3C3C3CFF1E1E1E810000000000000000000000000D0D
          0D363A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF353535E014141455000000000000
          000000000000000000001E1E1E7E3C3C3CFF1E1E1E8100000000040404133535
          35E23C3C3CFF3C3C3CFF3C3C3CFF3B3B3BFC1919196C00000000000000000000
          00000000000000000000000000001E1E1E7E3C3C3CFF262626A21C1C1C760F0F
          0F40383838ED3C3C3CFF3A3A3AF6141414540000000000000000000000000000
          000000000000000000000000000000000000262626A03C3C3CFF3C3C3CFF2F2F
          2FC60C0C0C332F2F2FC90D0D0D36000000000000000000000000000000000000
          0000000000000000000000000000000000021D1D1D7A3C3C3CFF3C3C3CFF3C3C
          3CFF343434DB0909092700000000000000000000000000000000000000000F0F
          0F4024242499353535E0353535E0303030CD0E0E0E3D2F2F2FC93C3C3CFF3C3C
          3CFF3C3C3CFF373737EA0D0D0D360000000000000000000000000F0F0F403030
          30CC3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF373737EA0D0D0D36343434DB3C3C
          3CFF3C3C3CFF3C3C3CFF3A3A3AF6141414540000000000000000242424993C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB5080808243737
          37EA3C3C3CFF3C3C3CFF3C3C3CFF3B3B3BFC1919196C00000000353535E02828
          28AA0F0F0F3F0F0F0F3F282828AA3C3C3CFF3C3C3CFF353535E0000000000D0D
          0D363A3A3AF63C3C3CFF3C3C3CFF3C3C3CFF353535E014141455232323950404
          041000000000000000000F0F0F3F3C3C3CFF3C3C3CFF353535E0000000000000
          00001212124E3B3B3BFC3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC0020202090000
          000000000000000000000F0F0F3F3C3C3CFF3C3C3CFF24242499000000000000
          0000000000001B1B1B72353535E03C3C3CFF3C3C3CFF2D2D2DC0000000000000
          00000000000004040410282828AA3C3C3CFF303030CC0F0F0F40000000000000
          00000000000000000000141414552D2D2DC02D2D2DC014141455000000000000
          00000202020923232395353535E0242424990F0F0F4000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000F0F0F41000000000000000000000000000000000000
          0000000000000F0F0F4100000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF1E1E1E810000000000000000000000000000
          00001E1E1E813C3C3CFF1E1E1E81000000000000000000000000000000000000
          00000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF1E1E1E8100000000000000001E1E
          1E813C3C3CFF3C3C3CFF3C3C3CFF0F0F0F400000000000000000000000000000
          0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E811E1E1E813C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E810000000000000000000000000000000000000000000000000000
          000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E8100000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E1E1E1E7E3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
          00000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000001E1E
          1E7E3C3C3CFF3C3C3CFF3C3C3CFF0F0F0F400000000000000000000000000000
          0000000000001E1E1E7E3C3C3CFF1E1E1E7E0000000000000000000000000000
          00001E1E1E7E3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          000000000000000000000F0F0F3E000000000000000000000000000000000000
          0000000000000F0F0F3E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000003C3C3CFF2D2D2DBE00000000000000001E1E1E7E3C3C3CFF0000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000002D2D2DBE040404101E1E1E811E1E1E81000000001E1E1E7E0000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          000000000000040404101E1E1E813C3C3CFF3C3C3CFF1E1E1E81000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000001A1A
          1A703C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF00000000000000001A1A1A703C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E040404100000000000000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000353535E03C3C
          3CFF3C3C3CFF1A1A1A700A0A0A2C000000000000000000000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000001A1A1A703535
          35E01A1A1A700A0A0A2C3C3C3CFF000000000000000000000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00002B2B2BB73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF000000000000000000000000000000003C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF000000000000000000000000000000003C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF000000000000000000000000000000003C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF000000000000000000000000000000003C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF00000000000000003C3C3CFF3C3C3CFF3C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF00000000000000003C3C3CFF3C3C3CFF0B0B0B2F000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0B0B0B2F00000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          00002C2C2CBD3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF000000003C3C3CFF2C2C2CBD0000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000002B2B2BB73C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB700000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF00000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF00000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF0000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF0000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF0000000000000000000000003C3C3CFF3C3C3CFF00000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF0000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF0000000000000000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
          3CFF0000000000000000000000002C2C2CBD3C3C3CFF000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF2C2C2CBD000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF00000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E00000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E7E0000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000
          00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002B2B
          2BB73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB700000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF00000000000000002C2C
          2CBD3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF2C2C2CBD00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object ActionList_small: TActionList
    Images = cxImgl_small
    Left = 656
    Top = 65528
    object act_ClearLog: TAction
      Caption = 'ClearLog'
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1083#1086#1075
      ImageIndex = 1
      OnExecute = act_ClearLogExecute
    end
    object act_ClearSended: TAction
      Caption = 'ClearSended'
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1080#1089#1093#1086#1076#1103#1097#1080#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
      ImageIndex = 1
      OnExecute = act_ClearSendedExecute
    end
    object act_ClearReceived: TAction
      Caption = 'ClearReceived'
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1093#1086#1076#1103#1097#1080#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
      ImageIndex = 1
      OnExecute = act_ClearReceivedExecute
    end
  end
  object RxTimerList1: TRxTimerList
    Left = 1872
    Top = 65368
  end
end
