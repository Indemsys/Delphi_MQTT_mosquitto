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
    LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
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
      Properties.ActivePage = cxts_3
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 248
      ClientRectLeft = 4
      ClientRectRight = 1307
      ClientRectTop = 24
      object cxts_1: TcxTabSheet
        Caption = #1055#1091#1073#1083#1080#1082#1072#1094#1080#1103'/'#1055#1086#1076#1087#1080#1089#1082#1072
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
            Width = 660
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
      object cxts_3: TcxTabSheet
        Caption = #1055#1086#1076#1087#1080#1089#1082#1072' '#1089#1087#1080#1089#1082#1086#1084
        ImageIndex = 2
        object dxlc_2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 1303
          Height = 224
          Align = alClient
          TabOrder = 0
          object cxg_SubscribeList: TcxGrid
            Left = 10
            Top = 10
            Width = 1283
            Height = 155
            TabOrder = 0
            object cxg_SubscribeListDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.InfoPanel.Visible = True
              Navigator.Visible = True
              DataController.DataSource = dm.ds_Subscriptions
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsSelection.MultiSelect = True
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 20
              object cxg_SubscribeListDBTableView1Subscribe: TcxGridDBColumn
                DataBinding.FieldName = 'Subscribe'
                Width = 75
              end
              object cxg_SubscribeListDBTableView1Topic: TcxGridDBColumn
                DataBinding.FieldName = 'Topic'
                Width = 822
              end
              object cxg_SubscribeListDBTableView1QoS: TcxGridDBColumn
                DataBinding.FieldName = 'QoS'
                Width = 100
              end
            end
            object cxg_SubscribeListLevel1: TcxGridLevel
              GridView = cxg_SubscribeListDBTableView1
            end
          end
          object cxb_7: TcxButton
            Left = 136
            Top = 171
            Width = 120
            Height = 40
            Action = act_ShowWidgets
            TabOrder = 2
          end
          object cxb_6: TcxButton
            Left = 10
            Top = 171
            Width = 120
            Height = 40
            Action = act_SubscribeByList
            TabOrder = 1
          end
          object cxb_8: TcxButton
            Left = 262
            Top = 171
            Width = 120
            Height = 40
            Action = act_OpenWidgetsTable
            TabOrder = 3
          end
          object dxlc_2Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxlc_2Item1: TdxLayoutItem
            Parent = dxlc_2Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Visible = False
            SizeOptions.AssignedValues = [sovSizableVert]
            SizeOptions.SizableVert = True
            SizeOptions.Height = 146
            Control = cxg_SubscribeList
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlc_2Group1: TdxLayoutGroup
            Parent = dxlc_2Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'New Group'
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxlc_2Item3: TdxLayoutItem
            Parent = dxlc_2Group1
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = cxb_7
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxlc_2Item2: TdxLayoutItem
            Parent = dxlc_2Group1
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = cxb_6
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxlc_2Item4: TdxLayoutItem
            Parent = dxlc_2Group1
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = cxb_8
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
            Height = 158
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
            Top = 174
            Width = 120
            Height = 40
            Action = act_StartPeriodicSending
            TabOrder = 1
          end
          object cxb_5: TcxButton
            Left = 136
            Top = 174
            Width = 120
            Height = 40
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
      Left = 790
      Top = 148
      Width = 381
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
      Height = 20
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
      Top = 459
      Properties.ScrollBars = ssBoth
      Properties.WordWrap = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Height = 156
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
      Left = 436
      Top = 459
      Width = 400
      Height = 158
      TabOrder = 18
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
      Left = 436
      Top = 618
      Width = 30
      Height = 23
      Action = act_ClearSended
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
    end
    object cxg_Received: TcxGrid
      Left = 843
      Top = 459
      Width = 471
      Height = 158
      TabOrder = 21
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
      Left = 843
      Top = 618
      Width = 30
      Height = 23
      Action = act_ClearReceived
      PaintStyle = bpsGlyph
      ParentShowHint = False
      ShowHint = True
      TabOrder = 22
    end
    object cxchb_LogEnable: TcxCheckBox
      Left = 34
      Top = 618
      Caption = 'Enable'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 100
    end
    object cxchb_SendedTblEnable: TcxCheckBox
      Left = 467
      Top = 618
      Caption = 'Enable'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 100
    end
    object cxchb_ReceivedTblEnable: TcxCheckBox
      Left = 874
      Top = 618
      Caption = 'Enable'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Width = 100
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
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Height = 5
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
      Parent = dxlc_Group1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxb_1
      ControlOptions.ShowBorder = False
      Index = 0
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
      Parent = dxlc_Group7
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxb_2
      ControlOptions.ShowBorder = False
      Index = 0
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
      Parent = dxlc_Group8
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxb_3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlc_SplitterItem2: TdxLayoutSplitterItem
      Parent = dxlc_Group2
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Width = 5
      Index = 1
    end
    object dxlc_SplitterItem1: TdxLayoutSplitterItem
      Parent = dxlc_Group2
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Width = 5
      Index = 3
    end
    object dxlc_Item10: TdxLayoutItem
      Parent = dxlc_Group1
      AlignVert = avCenter
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxchb_LogEnable
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlc_Group1: TdxLayoutAutoCreatedGroup
      Parent = dxlc_GroupLog
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxlc_Item11: TdxLayoutItem
      Parent = dxlc_Group7
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxchb_SendedTblEnable
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlc_Group7: TdxLayoutAutoCreatedGroup
      Parent = dxlc_GroupSended
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxlc_Item12: TdxLayoutItem
      Parent = dxlc_Group8
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxchb_ReceivedTblEnable
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlc_Group8: TdxLayoutAutoCreatedGroup
      Parent = dxlc_GroupReveived
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
  end
  object cxPropertiesStore: TcxPropertiesStore
    Active = False
    Components = <
      item
        Component = cxchb_LogEnable
        Properties.Strings = (
          'Checked')
      end
      item
        Component = cxchb_PubRetain
        Properties.Strings = (
          'Checked')
      end
      item
        Component = cxchb_ReceivedTblEnable
        Properties.Strings = (
          'Checked')
      end
      item
        Component = cxchb_SendedTblEnable
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
    object act_SubscribeByList: TAction
      Caption = #1055#1086#1076#1087#1080#1089#1082#1072' '
      ImageIndex = 9
      OnExecute = act_SubscribeByListExecute
    end
    object act_ShowWidgets: TAction
      Caption = 'Widgets'
      ImageIndex = 16
      OnExecute = act_ShowWidgetsExecute
    end
    object act_OpenWidgetsTable: TAction
      Caption = #1058#1072#1073#1083#1080#1094#1072
      ImageIndex = 15
      OnExecute = act_OpenWidgetsTableExecute
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
          0000000000000000000000000000000000000000000000000000000000010000
          000E0000002D1B2371B43344C7FF5164EBFF6578FFFF697CFFFF697CFFFF6578
          FFFF5164EBFF3344C7FF1B2371B40000002D0000000E00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000060000
          00201B2471B13546CAFF6072FEFF6174FEFF6073FDFF5F72FCFF5F72FCFF6073
          FDFF6174FEFF6072FEFF3546CAFF1B2471B10000002000000006000000040000
          000D000000150000001600000016000000160000001600000016000000160000
          00160000001600000016000000160000001600000016000000160000001F080C
          28603242C8FF5B6FFCFF5B6FFCFF596EFAFF596DF9FF596DF9FF596DF9FF596D
          F9FF596EFAFF5B6FFCFF5B6FFCFF3242C7FF090C275D0000000F0000000D0000
          002B0000003F0000004300000043000000430000004300000043000000430000
          0043000000430000004300000043000000430000004300000043000000471827
          91CC465AE8FF566BFAFF5268F8FF5167F7FF5166F7FF5166F7FF5166F7FF5166
          F7FF5167F7FF5268F8FF566BFAFF475BE6FF222D8ECD0000001500000015805B
          11C4B77F0FFFB67D0AFFB67C09FFB67C09FFB67C09FFB67C09FFB67C09FFB67C
          09FFB67C09FFB67C09FFB67C09FFB67C09FFB67C09FFB97E07FFC68700FF1D32
          CAFF4C63F8FF4A61F5FF4159F3FF3D55F2FF3C54F2FF3C54F2FF3C54F2FF3C54
          F2FF3D55F2FF4159F3FF4A61F5FF4F64F6FF2D3CBFFF0000001600000016B77F
          0FFFF7FFFFFFF3F8FFFFF2F7FFFFF2F7FFFFF2F7FFFFF2F7FFFFF2F7FFFFF2F7
          FFFFF2F7FFFFF2F7FFFFF2F7FFFFF2F7FFFFF2F7FFFFF5F9FFFFFFFFFFFF192C
          C1FF5D71F8FF3B53F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF3B53F2FF5F74F8FF2C3BBFFF0000001600000016B67D
          0AFFF4FBFFFFECEDF0FFECECEDFFECECEDFFECECEDFFECECEDFFECECEDFFECEC
          EDFFECECEDFFECECEDFFECECEDFFEBECEDFFEBEBEDFFEEEEEDFFFEFCEFFF1628
          BCFF6D81F8FF334EF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF334EF0FF7084F8FF2A3ABFFF0000001500000016B67C
          09FFF4F9FFFFEAE9EBFFEBE8E8FFEBE9E9FFEBE9E9FFEBE8E9FFEBE9E9FFEBE9
          E9FFEBE9E9FFEAE8E8FFEAE8E8FFE9E6E6FFE8E6E6FFEAE8E6FFF9F5E9FF1124
          BAFF8E9DF6FF324DEDFF2F4AECFF2C47EBFF2B47EBFF2B47EBFF2B47EBFF2B47
          EBFF2C47EBFF2F4AECFF334EEDFF93A2F7FF2A3AC0FF0000000F00000016B67C
          09FFF4FAFFFFE9E9E9FFEBEAE9FFEEEDECFFEEEDEBFFECEBE9FFEDECEBFFEEED
          ECFFEDECEBFFEAE9E8FFE7E6E5FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF626E
          D1FF7986E3FF5870F0FF324DEBFF3550EBFF3651EBFF3751EBFF3751EBFF3651
          EBFF3550EBFF324DEBFF5A71F0FF848FE6FF1F2B8EC40000000600000016B67C
          09FFF4FAFFFFE7E7E8FFECEBEBFF4F4E4EFF919090FFEEEDEDFF8F8E8FFF9190
          90FF8F8E8EFFE9E8E8FFE6E5E5FFECEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFD2D5
          F2FF2434C1FFA0ADF4FF4C63EDFF2D48E9FF314BE9FF334DE9FF334DE9FF314B
          E9FF2D48E9FF4D64EEFFA5B2F6FF3947C7FF090C273E0000000100000016B67C
          09FFF4FAFFFFE5E5E6FFE9E8E8FFF1F0F0FFF1F0F0FFEEEDEDFFEDECECFFEDEC
          ECFFECEBEBFFE7E6E6FFE4E3E3FFDEDDDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF707BD5FF2E40C5FFA5B0F5FF7B8DF0FF3E57E9FF2542E5FF2542E5FF3E57
          E9FF7C8DF1FFA7B3F8FF3B4DCFFF1721719E000000030000000000000016B67C
          09FFF4FAFFFFE2E2E4FFE7E6E6FF4D4D4DFF919090FF8F8E8EFF8D8C8CFFE9E8
          E8FF898888FFE5E4E4FFE3E2E3FFD1D0CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF828CDBFF2334C2FF7280E1FFA3AEF4FFAEB9F8FFAEB9F8FFA3AE
          F4FF7281E3FF283CCDFF6C5A6FFF00000016000000000000000000000016B67C
          09FFF5FBFFFFE1DFE1FFE4E1E1FFE7E5E5FFE8E6E6FFE7E5E5FFE6E4E4FFE4E2
          E2FFE4E2E2FFE3E1E1FFE3E1E1FFC5C3C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD9DCF8FF6773D7FF1527BFFF1729C0FF1729C0FF1427
          BFFF5964CAFFCBD3F7FFC58701FF00000016000000000000000000000016B67C
          09FFF5FBFFFFDEDEDFFFDFDEDDFFE0DFDEFFE0E0DEFFE0DFDEFFE0DFDEFFE0DF
          DEFFE0DFDDFFE0DFDDFFE1E0DFFFB2B2B3FFB1B2B2FFB0B1B1FFB0B0B0FFB0B0
          B0FFB1B1B1FFB3B3B2FFB9B8B3FFBEBDB5FFC3C1B6FFC4C3B6FFC4C2B6FFC1C0
          B4FFECEBE2FFFCFFFFFFB97F08FF00000016000000000000000000000016B67C
          09FFF5FBFFFFDCDCDDFFDDDCDBFFDDDCDBFFDDDCDBFFDDDCDBFFDDDCDBFFDDDC
          DBFFDDDCDBFFDDDCDBFFDEDDDCFFDFDEDDFFDFDEDDFFDFDEDDFFDFDEDDFFDFDE
          DDFFDFDEDDFFDFDEDDFFE0DFDDFFE1E0DEFFE2E1DEFFE2E1DEFFE2E1DEFFE1E0
          DDFFDFDEDDFFF6FCFFFFB67D09FF00000016000000000000000000000016B67C
          09FFF5FBFFFFDADADAFFDBDAD9FFDCDBDAFFDCDBDAFFDCDBDAFFDBDBDAFFDCDB
          DAFFDCDBDAFFDBDAD9FFDAD9D8FFD9D8D7FFD8D7D6FFD8D7D5FFD8D7D5FFD8D7
          D5FFD8D7D5FFD8D7D5FFD8D7D5FFD8D7D5FFD8D7D5FFD8D7D5FFD8D7D6FFD9D8
          D6FFD9D9D9FFF5FBFFFFB67C09FF00000016000000000000000000000016B67C
          0AFFF6FBFFFFD9D8D9FFDCDAD9FFE0DEDDFFE0DEDDFFDFDDDCFFDDDBDAFFDFDC
          DBFFDEDCDBFFDCDAD8FFD8D6D5FFFBFBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
          FBFFD7D5D6FFF5FBFFFFB67C0AFF00000016000000000000000000000016B67C
          0AFFF6FBFFFFD8D6D7FFDDDBDAFF4A4949FF8A8988FF878685FFDFDDDCFF8685
          84FF858583FFDBD9D8FFD6D4D3FFE9E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E8
          E8FFD5D3D3FFF6FBFFFFB67C0AFF00000016000000000000000000000016B67D
          0AFFF6FCFFFFD5D4D6FFDBD9D9FFE2E0E0FFE3E1E1FFE1DFDFFFDFDDDDFFE0DD
          DEFFDEDCDCFFD9D7D7FFD5D3D3FFD8D7D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D6
          D5FFD3D2D4FFF6FBFFFFB67D0AFF00000016000000000000000000000016B67D
          0AFFF6FCFFFFD3D3D4FFD9D8D7FF494848FF888787FF868586FF868585FF8685
          85FF838282FFD7D6D5FFD4D4D2FFC7C6C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C6
          C5FFD2D2D2FFF6FCFFFFB67D0AFF00000016000000000000000000000016B67D
          0AFFF6FCFFFFD0D0D1FFD4D3D2FFD8D7D6FFD8D7D6FFD8D7D6FFD8D7D6FFD7D7
          D5FFD6D5D4FFD4D3D2FFD4D3D2FFBAB7B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B7
          B4FFD1D1D2FFF7FCFFFFB67D0AFF00000016000000000000000000000016B67D
          0AFFF6FCFFFFCECDCEFFD1CFCEFFD2CFCEFFD2D0CFFFD2CFCEFFD2CFCEFFD2CF
          CEFFD1CFCEFFD1CFCEFFD3D0CFFFA3A3A4FFA2A2A2FFA0A1A1FFA0A0A0FFA0A0
          A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A1A1FFA2A2A2FFA2A3
          A3FFD0CFCFFFF7FCFFFFB67D0AFF00000016000000000000000000000016B67D
          0AFFF6FCFFFFCAC9CBFFCCCACAFFCCCACAFFCCCACAFFCCCACAFFCCCACAFFCCCA
          CAFFCCCACAFFCCCACAFFCDCBCBFFCECDCCFFCECDCDFFCECDCDFFCECDCDFFCECD
          CDFFCECDCDFFCECDCDFFCECDCDFFCECDCDFFCECDCDFFCECDCDFFCECDCDFFCDCC
          CCFFCBCACCFFF6FCFFFFB67D0AFF00000016000000000000000000000016B67D
          0CFFF4FDFFFFF2F7FFFFF2F8FFFFF3F8FFFFF3F8FFFFF3F8FFFFF3F8FFFFF3F8
          FFFFF3F8FFFFF3F8FFFFF3F8FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F9
          FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F8
          FFFFF2F7FFFFF4FDFFFFB67D0CFF00000016000000000000000000000016B67F
          0FFFFAE3C2FFE3AB52FFE3AC55FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD
          56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD
          56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AC
          55FFE3AB52FFFAE3C2FFB67F0FFF00000016000000000000000000000016B680
          12FFF5DDB8FFD99E39FFDAA13FFFDAA140FFDAA140FFDAA140FFDAA140FFDAA1
          40FFDAA140FFDAA140FFDAA140FFDAA140FFDAA140FFDAA140FFDAA140FFDAA1
          40FFDAA140FFDAA140FFDAA140FFDAA140FFDAA140FFDAA140FFDAA140FFDAA1
          3FFFD99E39FFF5DDB8FFB68012FF00000016000000000000000000000015B681
          14FFF1D6A9FFD18B17FFD28E1BFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E
          1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E
          1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E
          1BFFD18B17FFF1D6A9FFB68114FF0000001500000000000000000000000DB882
          17FFEECF9BFFECCD98FFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
          9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
          9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
          9AFFECCD98FFEECF9BFFB88217FF0000000D000000000000000000000004805C
          13B4B88317FFB78216FFB78116FFB78116FFB78116FFB78116FFB78116FFB781
          16FFB78116FFB78116FFB78116FFB78116FFB78116FFB78116FFB78116FFB781
          16FFB78116FFB78116FFB78116FFB78116FFB78116FFB78116FFB78116FFB781
          16FFB78216FFB88317FF805C13B4000000040000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00050000000C0000000900000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000C000000230000002500000017000000090000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000963686DED1D2C36890000003D000000290000001600000009000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002202F39705F514BFF3D5567FB0E273A8A0000003C00000028000000150000
          0006000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000009476276FA627680FF6FBEEDFF296B9BF8091F308A0000003A0000
          001C000000060000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000D000000150000001600000016000000160000001600000016000000160000
          0016000000180F2B3E7174C6F1FFA9E5FFFF81CDFCFF4C96D0FF3B6D9DFF0000
          003D000000220000001600000016000000160000001600000016000000160000
          001600000016000000150000000D0000000400000000000000000000000D0000
          002B0000003F0000004300000043000000430000004300000043000000430000
          00430000004300000048598DB5EEF3FFFFFFAADEFCFF56B6FCFF149BFFFF3B6D
          9DFF000000480000004300000043000000430000004300000043000000430000
          0043000000430000003F0000002B0000000D000000000000000000000015805B
          11C4B77F0FFFB67D0AFFB67C09FFB67C09FFB67C09FFB67C09FFB67C09FFB77C
          08FFBB7C04FFC17C00FF807133FF76BAE0FFEBFBFFFF5DBCFFFF1397FFFF169B
          FFFF336CA4FFCF8601FFBE810AFFB77E0AFFB67C09FFB67C09FFB67C09FFB67C
          09FFB67D0AFFB77F0FFF805B11C400000015000000000000000000000016B77F
          0FFFF7FFFFFFF3F8FFFFF2F7FFFFF2F7FFFFF2F7FFFFF2F7FFFFF2F7FFFFF3F7
          FFFFF3F7FFFFF6F7FEFFFFFAFAFF176EC6FF77DBFFFFDDF5FFFF62BDFFFF1498
          FFFF129AFFFF2B66A1FFFFFFFFFFFBFCFFFFF4F8FFFFF3F7FFFFF2F7FFFFF2F7
          FFFFF3F8FFFFF7FFFFFFB77F0FFF00000016000000000000000000000016B67D
          0AFFF4FBFFFFECEDF0FFECECEDFFECECEDFFECECEDFFECECEDFFECECEDFFECEC
          EDFFECECEDFFEDECEDFFF2EEEDFFFEF4ECFF196DC2FF78DAFFFFDEF6FFFF62BD
          FFFF1497FFFF1097FFFF285F95FFFFF9F2FFF4F0EFFFEDECEDFFEBECEDFFEBEC
          EDFFECEDF0FFF4FBFFFFB67D0AFF00000016000000000000000000000016B67C
          09FFF4F9FFFFEAE9EBFFEBE8E8FFEBE9E9FFEBE9E9FFEBE8E9FFEBE9E9FFEBE9
          E9FFEBE9E9FFEAE8E8FFEBE8E8FFF0EAE7FFFCEFE8FF186BC0FF77DAFFFFDEF6
          FFFF62BDFFFF1497FFFF0F96FFFF275E91FFFFF5ECFFF0EBE8FFEAE7E6FFE9E6
          E6FFEAE8EAFFF4F9FFFFB67C09FF00000016000000000000000000000016B67C
          09FFF4FAFFFFE9E9E9FFEBEAE9FFEEEDECFFEEEDEBFFECEBE9FFEDECEBFFEEED
          ECFFEDECEBFFEAE9E8FFE7E6E5FFFCFCFBFFFFFFFFFFFFFFFFFF176ABFFF77DA
          FFFFDEF6FFFF62BDFFFF1497FFFF0F96FFFF265D91FFFFFFFFFFFFFFFFFFFCFC
          FCFFE7E7E7FFF4F9FFFFB67C09FF00000016000000000000000000000016B67C
          09FFF4FAFFFFE7E7E8FFECEBEBFF4F4E4EFF919090FFEEEDEDFF8F8E8FFF9190
          90FF8F8E8EFFE9E8E8FFE6E5E5FFECEBEBFFFFFFFFFFFFFFFFFFFFFFFFFF176A
          BFFF77DAFFFFDEF6FFFF62BDFFFF1497FFFF0F96FFFF255C8FFFFFFFFFFFF5F0
          EEFFE6E6E7FFF4FAFFFFB67C09FF00000016000000000000000000000016B67C
          09FFF4FAFFFFE5E5E6FFE9E8E8FFF1F0F0FFF1F0F0FFEEEDEDFFEDECECFFEDEC
          ECFFECEBEBFFE7E6E6FFE4E3E3FFDEDDDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF176ABFFF77DAFFFFDEF6FFFF62BDFFFF1397FFFF0F96FFFF265D91FFF6EB
          E1FFEBE8E7FFF6FBFFFFB67C09FF00000016000000000000000000000016B67C
          09FFF4FAFFFFE2E2E4FFE7E6E6FF4D4D4DFF919090FF8F8E8EFF8D8C8CFFE9E8
          E8FF898888FFE5E4E4FFE3E2E3FFD1D0CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF186BC0FF78DAFFFFDEF6FFFF62BDFFFF1497FFFF0F97FFFF275F
          93FFF7EEE8FFFBFFFFFFB77E0AFF00000016000000000000000000000016B67C
          09FFF5FBFFFFE1DFE1FFE4E1E1FFE7E5E5FFE8E6E6FFE7E5E5FFE6E4E4FFE4E2
          E2FFE4E2E2FFE3E1E1FFE3E1E1FFC5C3C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF1B6FC4FF79DCFFFFDFF6FFFF62BDFFFF1397FFFF0C97
          FFFF21619DFFFFFFFFFFBB810CFF00000016000000000000000000000016B67C
          09FFF5FBFFFFDEDEDFFFDFDEDDFFE0DFDEFFE0E0DEFFE0DFDEFFE0DFDEFFE0DF
          DEFFE0DFDDFFE0DFDDFFE1E0DFFFB2B2B3FFB1B2B2FFB0B1B1FFB0B0B0FFB0B0
          B0FFB2B2B1FFB8B5B2FFC3B9B2FF1D70C5FF79DBFFFFDEF6FFFF5FBFFFFF0999
          FFFF867A6FFF717073FFC38709FF00000022000000060000000000000016B67C
          09FFF5FBFFFFDCDCDDFFDDDCDBFFDDDCDBFFDDDCDBFFDDDCDBFFDDDCDBFFDDDC
          DBFFDDDCDBFFDDDCDBFFDEDDDCFFDFDEDDFFDFDEDDFFDFDEDDFFDFDEDDFFDFDE
          DDFFDFDEDDFFE0DFDDFFE5E1DDFFEFE4DBFF1A6FC4FF76DCFFFFD6F8FFFFAB9E
          93FF9F9996FF706F71FF717775FF0000003D0000001C0000000600000016B67C
          09FFF5FBFFFFDADADAFFDBDAD9FFDCDBDAFFDCDBDAFFDCDBDAFFDBDBDAFFDCDB
          DAFFDCDBDAFFDBDAD9FFDAD9D8FFD9D8D7FFD8D7D6FFD8D7D5FFD8D7D5FFD8D7
          D5FFD8D7D5FFD8D7D5FFD9D7D5FFDED9D5FFE8DED5FF136DC6FFB5AAA3FFE8E5
          E1FFC3C2C0FF9B9B99FF7A8074FF9A69D0FF000000370000001100000016B67C
          0AFFF6FBFFFFD9D8D9FFDCDAD9FFE0DEDDFFE0DEDDFFDFDDDCFFDDDBDAFFDFDC
          DBFFDEDCDBFFDCDAD8FFD8D6D5FFFBFBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9994FFD6D3
          D2FFE6E8E4FF868A81FFCA8CC9FFC184BAFF986BC8FF0000001100000016B67C
          0AFFF6FBFFFFD8D6D7FFDDDBDAFF4A4949FF8A8988FF878685FFDFDDDCFF8685
          84FF858583FFDBD9D8FFD6D4D3FFE9E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9C
          97FF979990FFDBA1DBFFD099CEFFC88FC2FF9F70CAFF0000000600000016B67D
          0AFFF6FCFFFFD5D4D6FFDBD9D9FFE2E0E0FFE3E1E1FFE1DFDFFFDFDDDDFFE0DD
          DEFFDEDCDCFFD9D7D7FFD5D3D3FFD8D7D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDF
          DAFFBB7ED3FFE4AFE3FFDAA6D8FFAB7BCFFF000000060000000000000016B67D
          0AFFF6FCFFFFD3D3D4FFD9D8D7FF494848FF888787FF868586FF868585FF8685
          85FF838282FFD7D6D5FFD4D4D2FFC7C6C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C9
          C6FFD6DBD3FFBA80D5FFB783DDFF00000016000000000000000000000016B67D
          0AFFF6FCFFFFD0D0D1FFD4D3D2FFD8D7D6FFD8D7D6FFD8D7D6FFD8D7D6FFD7D7
          D5FFD6D5D4FFD4D3D2FFD4D3D2FFBAB7B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAB7
          B4FFD2D4D1FFF9FFFFFFB87F00FF00000016000000000000000000000016B67D
          0AFFF6FCFFFFCECDCEFFD1CFCEFFD2CFCEFFD2D0CFFFD2CFCEFFD2CFCEFFD2CF
          CEFFD1CFCEFFD1CFCEFFD3D0CFFFA3A3A4FFA2A2A2FFA0A1A1FFA0A0A0FFA0A0
          A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A1A1FFA2A2A2FFA2A3
          A3FFD1CFCFFFF7FDFFFFB67D08FF00000016000000000000000000000016B67D
          0AFFF6FCFFFFCAC9CBFFCCCACAFFCCCACAFFCCCACAFFCCCACAFFCCCACAFFCCCA
          CAFFCCCACAFFCCCACAFFCDCBCBFFCECDCCFFCECDCDFFCECDCDFFCECDCDFFCECD
          CDFFCECDCDFFCECDCDFFCECDCDFFCECDCDFFCECDCDFFCECDCDFFCECDCDFFCDCC
          CCFFCBCACCFFF6FCFFFFB67D0AFF00000016000000000000000000000016B67D
          0CFFF4FDFFFFF2F7FFFFF2F8FFFFF3F8FFFFF3F8FFFFF3F8FFFFF3F8FFFFF3F8
          FFFFF3F8FFFFF3F8FFFFF3F8FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F9
          FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F9FFFFF3F8
          FFFFF2F7FFFFF4FDFFFFB67D0CFF00000016000000000000000000000016B67F
          0FFFFAE3C2FFE3AB52FFE3AC55FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD
          56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD
          56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AD56FFE3AC
          55FFE3AB52FFFAE3C2FFB67F0FFF00000016000000000000000000000016B680
          12FFF5DDB8FFD99E39FFDAA13FFFDAA140FFDAA140FFDAA140FFDAA140FFDAA1
          40FFDAA140FFDAA140FFDAA140FFDAA140FFDAA140FFDAA140FFDAA140FFDAA1
          40FFDAA140FFDAA140FFDAA140FFDAA140FFDAA140FFDAA140FFDAA140FFDAA1
          3FFFD99E39FFF5DDB8FFB68012FF00000016000000000000000000000015B681
          14FFF1D6A9FFD18B17FFD28E1BFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E
          1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E
          1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E1CFFD28E
          1BFFD18B17FFF1D6A9FFB68114FF0000001500000000000000000000000DB882
          17FFEECF9BFFECCD98FFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
          9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
          9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
          9AFFECCD98FFEECF9BFFB88217FF0000000D000000000000000000000004805C
          13B4B88317FFB78216FFB78116FFB78116FFB78116FFB78116FFB78116FFB781
          16FFB78116FFB78116FFB78116FFB78116FFB78116FFB78116FFB78116FFB781
          16FFB78116FFB78116FFB78116FFB78116FFB78116FFB78116FFB78116FFB781
          16FFB78216FFB88317FF805C13B4000000040000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00040000000D0000001500000016000000160000001600000016000000150000
          000D000000040000000500000010000000160000001600000016000000160000
          0016000000150000000D00000004000000050000001000000016000000160000
          00160000001600000016000000150000000D0000000400000000000000000000
          000D0000002B0000003F000000430000004300000043000000430000003F0000
          002B0000000D0000001000000031000000420000004300000043000000430000
          00430000003F0000002B0000000D000000100000003100000042000000430000
          004300000043000000430000003F0000002B0000000D00000000000000000000
          0015202B86C42B3BC0FF2B3BBEFF2B3BBEFF2B3BBEFF2B3BBEFF2B3BC0FF202B
          86C400000015000000162B3AB6F32B3BC0FF2B3BBEFF2B3BBEFF2B3BBEFF2B3B
          BEFF2B3BC0FF202B86C400000015000000162B3AB6F32B3BC0FF2B3BBEFF2B3B
          BEFF2B3BBEFF2B3BBEFF2B3BC0FF202B86C40000001500000000000000000000
          00162B3BC0FF8091FFFF6579FFFF6679FFFF6679FFFF6579FFFF8091FFFF2B3B
          C0FF00000016000000162B3BC0FF8091FFFF6579FFFF6679FFFF6679FFFF6579
          FFFF8091FFFF2B3BC0FF00000016000000162B3BC0FF8091FFFF6579FFFF6679
          FFFF6679FFFF6579FFFF8091FFFF2B3BC0FF0000001600000000000000000000
          00162A3ABFFF7B8EFFFF5569FAFF576AF9FF576AF9FF5569FAFF7B8EFFFF2A3A
          BFFF00000016000000162A3ABFFF7B8EFFFF5569FAFF576AF9FF576AF9FF5569
          FAFF7B8EFFFF2A3ABFFF00000016000000162A3ABFFF7B8EFFFF5569FAFF576A
          F9FF576AF9FF5569FAFF7B8EFFFF2A3ABFFF0000001600000000000000000000
          00162A3ABFFF7D8EFAFF4860F4FF4A62F3FF4A62F3FF4860F4FF7D8EFAFF2A3A
          BFFF00000016000000162A3ABFFF7D8EFAFF4860F4FF4A62F3FF4A62F3FF4860
          F4FF7D8EFAFF2A3ABFFF00000016000000162A3ABFFF7D8EFAFF4860F4FF4A62
          F3FF4A62F3FF4860F4FF7D8EFAFF2A3ABFFF0000001600000000000000000000
          00162A3ABFFF7F8FF8FF3C54EEFF3F57EEFF3F57EEFF3C54EEFF7F8FF8FF2A3A
          BFFF00000016000000162A3ABFFF7F8FF8FF3C54EEFF3F57EEFF3F57EEFF3C54
          EEFF7F8FF8FF2A3ABFFF00000016000000162A3ABFFF7F8FF8FF3C54EEFF3F57
          EEFF3F57EEFF3C54EEFF7F8FF8FF2A3ABFFF0000001600000000000000000000
          00162A3ABFFF8293F7FF2E47EAFF3149EAFF3149EAFF2E47EAFF8293F7FF2A3A
          BFFF00000015000000162A3ABFFF8293F7FF2E47EAFF3149EAFF3149EAFF2E47
          EAFF8293F7FF2A3ABFFF00000015000000162A3ABFFF8293F7FF2E47EAFF3149
          EAFF3149EAFF2E47EAFF8293F7FF2A3ABFFF0000001500000000000000000000
          00102B3BC1FF8898F6FF6DB0F6FF6FB0F5FF6FB0F5FF6DB0F6FF8898F6FF2B3B
          C1FF0000000D000000102B3BC1FF8898F6FF6DB0F6FF6FB0F5FF6FB0F5FF6DB0
          F6FF8898F6FF2B3BC1FF0000000D000000102B3BC1FF8898F6FF6DB0F6FF6FB0
          F5FF6FB0F5FF6DB0F6FF8898F6FF2B3BC1FF0000000D00000000000000000000
          00052C39B8F02C39C2FF2B37C2FF2C36C1FF2C36C1FF2B37C2FF2C39C2FF202A
          88B400000004000000052C39B8F02C39C2FF2B37C2FF2C36C1FF2C36C1FF2B37
          C2FF2C39C2FF202A88B400000004000000052C39B8F02C39C2FF2B37C2FF2C36
          C1FF2C36C1FF2B37C2FF2C39C2FF202A88B40000000400000000000000000000
          0005000000100000001600000016000000160000001600000016000000150000
          000D00000004000000040000000D000000150000001600000016000000160000
          0016000000150000000D00000004000000040000000D00000015000000160000
          00160000001600000016000000150000000D0000000400000000000000000000
          00100000003100000042000000430000004300000043000000430000003F0000
          002B0000000D0000000D0000002B0000003F0000004300000043000000430000
          00430000003F0000002B0000000D0000000D0000002B0000003F000000430000
          004300000043000000430000003F0000002B0000000D00000000000000000000
          0016008547F3008B47FF008945FF008945FF008945FF008945FF008B47FF0062
          33C40000001500000015006233C4008B47FF008945FF008945FF008945FF0089
          45FF008B47FF006233C40000001500000015006233C4008B47FF008945FF0089
          45FF008945FF008945FF008B47FF006233C40000001500000000000000000000
          0016008949FF25EBB5FF00E0A1FF00DFA1FF00DFA1FF00E0A1FF25EBB5FF0089
          49FF0000001600000016008949FF25EBB5FF00E0A1FF00DFA1FF00DFA1FF00E0
          A1FF25EBB5FF008949FF0000001600000016008949FF25EBB5FF00E0A1FF00DF
          A1FF00DFA1FF00E0A1FF25EBB5FF008949FF0000001600000000000000000000
          0016008846FF33E1B8FF00D39BFF00D29BFF00D29BFF00D39BFF33E1B8FF0088
          46FF0000001600000016008846FF33E1B8FF00D39BFF00D29BFF00D29BFF00D3
          9BFF33E1B8FF008846FF0000001600000016008846FF33E1B8FF00D39BFF00D2
          9BFF00D29BFF00D39BFF33E1B8FF008846FF0000001600000000000000000000
          0016008845FF41DFBDFF00CB99FF00CB9AFF00CB9AFF00CB99FF41DFBDFF0088
          45FF0000001600000016008845FF41DFBDFF00CB99FF00CB9AFF00CB9AFF00CB
          99FF41DFBDFF008845FF0000001600000016008845FF41DFBDFF00CB99FF00CB
          9AFF00CB9AFF00CB99FF41DFBDFF008845FF0000001600000000000000000000
          0016008845FF51DDC2FF00C399FF00C39AFF00C39AFF00C399FF51DDC2FF0088
          45FF0000001600000016008845FF51DDC2FF00C399FF00C39AFF00C39AFF00C3
          99FF51DDC2FF008845FF0000001600000016008845FF51DDC2FF00C399FF00C3
          9AFF00C39AFF00C399FF51DDC2FF008845FF0000001600000000000000000000
          0016008845FF5FDBC8FF00BB98FF00BB98FF00BB98FF00BB98FF5FDBC8FF0088
          45FF0000001500000015008845FF5FDBC8FF00BB98FF00BB98FF00BB98FF00BB
          98FF5FDBC8FF008845FF0000001500000015008845FF5FDBC8FF00BB98FF00BB
          98FF00BB98FF00BB98FF5FDBC8FF008845FF0000001500000000000000000000
          0010008A47FF71DDD6FF50E4D6FF52E3D6FF52E3D6FF50E4D6FF71DDD6FF008A
          47FF0000000D0000000D008A47FF71DDD6FF50E4D6FF52E3D6FF52E3D6FF50E4
          D6FF71DDD6FF008A47FF0000000D0000000D008A47FF71DDD6FF50E4D6FF52E3
          D6FF52E3D6FF50E4D6FF71DDD6FF008A47FF0000000D00000000000000000000
          0005008448F0008A47FF008844FF008844FF008844FF008844FF008A47FF0061
          34B40000000400000004006134B4008A47FF008844FF008844FF008844FF0088
          44FF008A47FF006134B40000000400000004006134B4008A47FF008844FF0088
          44FF008844FF008844FF008A47FF006134B40000000400000000000000000000
          0005000000100000001600000016000000160000001600000016000000150000
          000D00000004000000040000000D000000150000001600000016000000160000
          0016000000150000000D00000004000000040000000D00000015000000160000
          00160000001600000016000000150000000D0000000400000000000000000000
          00100000003100000042000000430000004300000043000000430000003F0000
          002B0000000D0000000D0000002B0000003F0000004300000043000000430000
          00430000003F0000002B0000000D0000000D0000002B0000003F000000430000
          004300000043000000430000003F0000002B0000000D00000000000000000000
          0016B17D1BF3BA8217FFB98116FFB98116FFB98116FFB98116FFBA8217FF835B
          13C40000001500000015835B13C4BA8217FFB98116FFB98116FFB98116FFB981
          16FFBA8217FF835B13C40000001500000015835B13C4BA8217FFB98116FFB981
          16FFB98116FFB98116FFBA8217FF835B13C40000001500000000000000000000
          0016B78218FFF6D194FFF1C37AFFF0C47AFFF0C47AFFF1C37AFFF6D194FFB782
          18FF0000001600000016B78218FFF6D194FFF1C37AFFF0C47AFFF0C47AFFF1C3
          7AFFF6D194FFB78218FF0000001600000016B78218FFF6D194FFF1C37AFFF0C4
          7AFFF0C47AFFF1C37AFFF6D194FFB78218FF0000001600000000000000000000
          0016B68116FFF2C986FFE9B45EFFE9B55FFFE9B55FFFE9B45EFFF2C986FFB681
          16FF0000001600000016B68116FFF2C986FFE9B45EFFE9B55FFFE9B55FFFE9B4
          5EFFF2C986FFB68116FF0000001600000016B68116FFF2C986FFE9B45EFFE9B5
          5FFFE9B55FFFE9B45EFFF2C986FFB68116FF0000001600000000000000000000
          0016B68217FFF0C680FFE4AB4BFFE4AC4EFFE4AC4EFFE4AB4BFFF0C680FFB682
          17FF0000001600000016B68217FFF0C680FFE4AB4BFFE4AC4EFFE4AC4EFFE4AB
          4BFFF0C680FFB68217FF0000001600000016B68217FFF0C680FFE4AB4BFFE4AC
          4EFFE4AC4EFFE4AB4BFFF0C680FFB68217FF0000001600000000000000000000
          0016B68217FFEFC37CFFE1A137FFE1A239FFE1A239FFE1A137FFEFC37CFFB682
          17FF0000001600000016B68217FFEFC37CFFE1A137FFE1A239FFE1A239FFE1A1
          37FFEFC37CFFB68217FF0000001600000016B68217FFEFC37CFFE1A137FFE1A2
          39FFE1A239FFE1A137FFEFC37CFFB68217FF0000001600000000000000000000
          0015B68218FFEEC27AFFDE9621FFDE9623FFDE9623FFDE9621FFEEC27AFFB682
          18FF0000001500000015B68218FFEEC27AFFDE9621FFDE9623FFDE9623FFDE96
          21FFEEC27AFFB68218FF0000001500000015B68218FFEEC27AFFDE9621FFDE96
          23FFDE9623FFDE9621FFEEC27AFFB68218FF0000001500000000000000000000
          000DB88319FFF0C27BFFEAD089FFEAD089FFEAD089FFEAD089FFF0C27BFFB883
          19FF0000000D0000000DB88319FFF0C27BFFEAD089FFEAD089FFEAD089FFEAD0
          89FFF0C27BFFB88319FF0000000D0000000DB88319FFF0C27BFFEAD089FFEAD0
          89FFEAD089FFEAD089FFF0C27BFFB88319FF0000000D00000000000000000000
          0004805C14B4B88319FFB78217FFB78117FFB78117FFB78217FFB88319FF805C
          14B40000000400000004805C14B4B88319FFB78217FFB78117FFB78117FFB782
          17FFB88319FF805C14B40000000400000004805C14B4B88319FFB78217FFB781
          17FFB78117FFB78217FFB88319FF805C14B40000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000050000
          000F000000150000001600000016000000160000001600000016000000160000
          0016000000160000001600000016000000160000001600000016000000160000
          0016000000160000001600000016000000160000001600000016000000160000
          00160000001600000016000000160000001600000010000000050000000F0000
          002F000000410000004300000043000000430000004300000043000000430000
          0043000000430000004300000043000000430000004300000043000000430000
          0043000000430000004300000043000000430000004300000043000000430000
          0043000000430000004300000043000000420000003100000010000000159191
          91E3A6A6A6FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4
          A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4
          A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4
          A4FFA4A4A4FFA4A4A4FFA4A4A4FFA6A6A6FF9F9F9FF30000001600000016A6A6
          A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A6A6FF0000001600000016A4A4
          A4FFFFFFFFFFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE0E0E0FFE0E0E0FFE1E1
          E1FFE1E1E1FFE1E1E1FFE0E0E0FFE0E0E0FFE1E1E1FFE1E1E1FFE1E1E1FFE0E0
          E0FFE0E0E0FFE1E1E1FFE1E1E1FFE1E1E1FFE0E0E0FFE0E0E0FFE1E1E1FFE1E1
          E1FFE1E1E1FFE0E0E0FFE0E0E0FFFFFFFFFFA4A4A4FF0000001600000016A4A4
          A4FFFFFFFFFFFEFEFEFFFFFFFFFFE0DFDFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF
          FFFFDEDEDEFFFFFFFFFFFDFDFDFFFDFDFDFFFFFFFFFFDEDEDEFFFFFFFFFFFDFD
          FDFFFDFDFDFFFFFFFFFFDEDEDEFFFFFFFFFFFDFDFDFFFDFDFDFFFFFFFFFFDEDE
          DEFFFFFFFFFFFDFDFDFFFEFEFEFFFFFFFFFFA4A4A4FF0000001600000016A4A4
          A4FFFFFFFFFFFDFCFCFFFFFEFFFFEBE2E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFDEDDDEFFFDFDFDFFFBFBFBFFFBFBFBFFFDFDFDFFDDDDDDFFFDFDFDFFFBFB
          FBFFFBFBFBFFFDFDFDFFDDDDDDFFFDFDFDFFFBFBFBFFFBFBFBFFFDFDFDFFDDDD
          DDFFFDFDFDFFFBFBFBFFFCFCFCFFFFFFFFFFA4A4A4FF0000001600000016A4A4
          A4FFFFFFFFFFFDFCFBFFFFFFFFFF3DA376FF007B30FF007A2FFF48AE81FFFFFF
          FFFFDEDDDDFFFCFCFBFFFAFAF9FFFAFAF9FFFCFCFBFFDCDCDBFFFCFCFBFFFAFA
          F9FFFAFAF9FFFCFCFBFFDCDCDBFFFCFCFBFFFAFAF9FFFAFAF9FFFCFCFBFFDCDC
          DBFFFCFCFBFFFAFAF9FFFBFBF9FFFFFFFFFFA4A4A4FF0000001600000016A4A4
          A4FFFFFFFFFFFDFBFCFFFFFFFFFF007C31FFC4FCE3FFC4FCE2FF007C31FFFFFF
          FFFFDFDDDEFFFBFBFBFFF9F9FAFFF9F9FAFFFBFBFBFFDBDBDBFFFBFBFBFFF9F9
          FAFFF9F9FAFFFBFBFBFFDBDBDBFFFBFBFBFFF9F9FAFFF9F9FAFFFBFBFBFFDBDB
          DBFFFBFBFBFFF9F9F9FFFAFAFAFFFFFFFFFFA4A4A4FF0000001600000016A4A4
          A4FFFFFFFFFFE0DCDCFFF4E4EAFF007F36FFC7FDE5FFC7FDE5FF007F36FFF6E5
          EBFFE3DEDFFFDBDBDAFFD9D9D8FFD9D9D8FFDADAD9FFDBDBDAFFDADAD9FFD9D9
          D8FFD9D9D8FFDADAD9FFDBDBDAFFDADAD9FFD9D9D8FFD9D9D8FFDADAD9FFDBDB
          DAFFDADAD9FFD9D9D8FFD9D9D8FFFFFFFFFFA4A4A4FF0000001600000016A4A4
          A4FFFFFFFFFFFFFCFFFF9ED1BAFF008137FF007F36FF007E36FF008037FFA1D3
          BCFFEBDFE4FFFEFAFBFFF8F7F7FFF8F6F7FFF9F8F8FFD9D8D8FFF9F8F8FFF8F6
          F7FFF8F7F7FFFBF9F8FFDCDAD9FFFBFAF9FFF9F8F7FFF8F7F7FFF9F8F8FFD9D8
          D8FFF9F8F8FFF7F6F6FFF8F7F7FFFFFFFFFFA4A4A4FF0000001600000016A5A4
          A5FFFFFFFFFFB5DAC9FF007A2CFF89BCA5FFFFFFFFFFFFFFFFFF9ECFB9FF007E
          31FF86BBA3FFFFFCFFFFF9F6F6FFF5F4F3FFF6F6F5FFD6D6D5FFF6F6F5FFF4F5
          F3FFF8F8F4FFFFFFF6FFE5E4D7FFFFFFF7FFFFFEF5FFF8F8F4FFF6F6F5FFD6D6
          D5FFF6F6F5FFF4F4F3FFF4F5F3FFFDFDFCFFA4A4A4FF0000001600000016A5A4
          A5FFFFFDFEFFFFF7FAFFB3DAC8FFE3D9DEFFFCF6F8FFFAF5F7FFFFF9FEFF99CD
          B6FF007E31FF99CFB5FFFFF8FDFFF8F4F5FFF5F4F4FFD5D4D4FFF5F3F4FFF5F3
          F2FFFEFCF4FF6974D1FF0E20BBFF0E20BBFF6974D0FFFEFCF4FFF6F5F4FFD5D4
          D4FFF5F3F4FFF3F2F2FFF4F2F2FFFCFCFCFFA4A4A4FF0000001600000016A5A5
          A5FFFCFCFCFFF5F4F3FFF8F5F5FFD7D5D5FFF5F4F3FFF3F3F2FFF7F4F4FFFFFA
          FDFF85BAA2FF007E32FF98CDB4FFFFF8FCFFF8F5F5FFD5D5D4FFF4F4F3FFF5F5
          F2FFFFFFF4FF0F21BBFFB9CCFFFFB9CCFFFF0F21BBFFFFFFF4FFF6F6F3FFD4D4
          D3FFF4F4F3FFF3F2F1FFF3F2F1FFFBFBFCFFA5A5A5FF0000001600000016A5A5
          A5FFFCFCFBFFD2D2D2FFD4D4D4FFD5D4D5FFD3D3D4FFD2D2D2FFD3D2D3FFD8D5
          D6FFE4DADFFF84BAA2FF007E31FF82B9A1FFE1D9DDFFD8D5D7FFD4D4D4FFD8D7
          D4FFE7E5D6FF1426BDFFBBCEFFFFBBCEFFFF1426BDFFE7E5D6FFD9D8D4FFD5D5
          D5FFD5D4D5FFD5D4D5FFD4D2D4FFFDFCFBFFA5A5A5FF0000001600000016A5A5
          A5FFFBFBFAFFF3F2EFFFF6F4F0FFD6D4D2FFF2F1EFFFF1EFEEFFF1EFEEFFF3F1
          F0FFD8D4D4FFFFF6FAFF95CBB2FF007D30FFD1E3DAFFE0D8D9FFF9F5F2FFFFFC
          F1FFADB1DFFF1528BEFF1527BDFF1527BDFF1527BEFFADB1DFFFFFFDF3FFDBD7
          D4FFFCF5F6FFD7E5DEFFE6EBE7FFFDFCFCFFA5A5A5FF0000001600000016A5A5
          A5FFFCFCF8FFE7E7EAFFBDC1E2FFDBDAD1FFF2F2EEFFEDEEECFFEDEDECFFEEEE
          EDFFD1D1D0FFF3F0F1FFFDF3F6FF93C9B0FF00853DFFB6CBBEFFFFFDF7FFA9AD
          DFFF0D20BEFFACB0DEFFE6E4D3FFFFFFF1FFABAFDDFF0D20BEFFABAEE0FFE7DF
          D9FFCEE2D6FF008237FF99CCB5FFFEFBFBFFA5A5A5FF0000001600000016A6A6
          A5FFFEFCF7FFABB0DEFF071BBDFF9298CAFFF9F7EDFFEFEEEAFFECEBEAFFEDEC
          EBFFCFCECDFFEEEDECFFF1EDEDFFFCF1F4FF95CBAFFF00893BFF8DA6C8FF131F
          C4FFA8ABDEFFFCF9EEFFD5D4CEFFF3F2ECFFFAF7EDFFA8ABDEFF1420C5FF7E97
          B9FF008C3DFF92CAADFFF9F0F2FFFCF9F9FFA5A5A5FF0000001600000016A5A5
          A5FFFBFBF8FFF7F5ECFFA6ABDCFF0D20BFFFA6ACDBFFF8F6ECFFF0EEEBFFEEED
          ECFFCFCECDFFEEECECFFEEECEBFFF5F0EEFFFFFAF6FF56919AFF00863CFF8CA5
          C7FFFFFAF4FFF5F1EEFFD1CFCEFFEFEEECFFF3F0EDFFFFF9F4FF8CA5C7FF0086
          3CFF629DA6FFFFFAF5FFF4F0EDFFFAF9F8FFA5A5A5FF0000001600000016A5A5
          A5FFF8F8F7FFCFCFCAFFD9D8CCFF9298C9FF0D20BFFF9EA2C9FFD7D6CCFFD0D0
          CCFFCFCFCCFFCECECBFFD0D0CBFFD9D8CCFF9698CBFF1822C9FF569199FF008A
          3CFFB3C6BAFFDAD3D4FFD4D1D0FFD3CFCFFFDAD2D3FFB3C6BAFF008A3CFF5692
          99FF1722C8FF9496CAFFD6D5CBFFFAFAF7FFA6A6A5FF0000001600000016A5A5
          A5FFF8F6F7FFEAE9E7FFEEECE9FFD8D6CCFFA4AADAFF1A2CC1FFCFD1E3FFF5F3
          EAFFD1CFCBFFF0EEEAFFF7F4EAFFA4AADAFF0F22C1FF9697CAFFFFF7F3FF92C8
          ACFF00853DFFCEDFD6FFE5D3D9FFFFF2F8FFCDDED6FF00853DFF93C9ADFFE5D9
          D5FFA7AADDFF081BBEFFB7BADDFFFBF9F7FFA6A6A5FF0000001600000016A5A5
          A5FFF6F6F5FFE6E6E3FFE8E8E5FFCDCDC9FFF3F3E7FFA0A6D7FF192BC1FFD1D3
          E0FFDCDBCAFFFCFAE8FFA5ABD9FF0E21BFFFA4A9D9FFD6D5CBFFEFECE8FFF6EC
          EEFF92C5AEFF008138FF008037FF008037FF008137FF92C6AFFFF8EEF0FFD1CE
          CCFFF2F1E7FFB6B8DBFFEDEDE5FFF8F8F5FFA6A6A5FF0000001600000016A5A5
          A5FFF6F6F5FFE5E3E3FFE6E5E4FFCAC9C8FFEAE9E5FFF2EFE5FFA3A8D6FF1527
          BFFF1527BEFF1527BEFF1628BFFFA4AAD7FFF4F1E7FFCECCC8FFE8E6E5FFECE6
          E7FFFFECF3FF008036FFC7FEE5FFC7FEE5FF007F36FFFFEDF3FFEDE8E8FFCBC9
          C8FFE9E7E5FFE8E6E3FFE6E5E3FFF6F7F5FFA5A5A5FF0000001600000016A5A5
          A6FFF7F5F4FFE5E4E2FFE6E5E3FFCAC9C7FFE7E6E3FFEBE9E3FFF9F6E4FF1527
          BEFFBBCEFFFFBBCEFFFF1527BEFFFAF7E5FFECEAE4FFCAC9C7FFE7E5E3FFE9E6
          E4FFF9EBEEFF007F34FFC5FDE4FFC5FDE4FF007F34FFF9EBEEFFEAE7E5FFCAC9
          C7FFE7E6E3FFE5E4E2FFE5E4E1FFF7F5F4FFA5A5A6FF0000001600000016A6A6
          A6FFF6F6F5FFC5C4C3FFC7C6C5FFC8C7C7FFC7C6C6FFC9C8C5FFD5D2C6FF1224
          BEFFBACDFFFFB9CDFFFF1224BEFFD5D2C6FFCAC8C6FFC8C7C7FFC7C6C6FFC8C6
          C6FFD3C9CCFF379C6FFF007F34FF007F34FF379C6FFFD3C9CCFFC9C7C7FFC8C7
          C7FFC7C6C6FFC6C5C4FFC5C4C3FFF6F6F5FFA6A6A6FF0000001600000016A6A6
          A6FFF6F6F5FFE2E1DEFFE3E2E0FFC7C6C4FFE3E2E0FFE4E2DFFFECEAE0FF646E
          CBFF1123BEFF1023BEFF646DCAFFECEAE0FFE5E4E0FFC7C6C4FFE3E2E0FFE3E2
          E0FFE6E2E2FFF0E6E7FFD8CACDFFF5E7EAFFEEE5E6FFE6E2E2FFE4E3E1FFC7C6
          C4FFE3E2E0FFE2E1DFFFE1E0DEFFF6F6F5FFA6A6A6FF0000001600000016A6A6
          A6FFF5F4F3FFDEDEDCFFE0E0DEFFC3C4C1FFE0E0DEFFDFDFDDFFE2E2DDFFEAE9
          DFFFD1D0C2FFEEEDDFFFE9E8DEFFE2E2DDFFE1E1DEFFC3C4C1FFE0E0DEFFDFDF
          DDFFDFDFDDFFE2E1DFFFC6C5C3FFE3E1E0FFE0E0DEFFDFDFDDFFE0E0DEFFC3C4
          C1FFE0E0DEFFDEDEDCFFDEDEDCFFF5F4F3FFA6A6A6FF0000001600000016A6A6
          A6FFF5F4F3FFDDDCDAFFDFDEDCFFC2C1C0FFDFDEDCFFDDDCDAFFDEDDDAFFE0DF
          DCFFC5C3C0FFE1E0DCFFDFDEDAFFDEDDDAFFDFDEDCFFC2C1C0FFDFDEDCFFDDDC
          DAFFDDDCDAFFDFDEDCFFC2C1C0FFDFDEDCFFDDDCDAFFDDDCDAFFDFDEDCFFC2C1
          C0FFDFDEDCFFDDDCDAFFDCDBD9FFF5F4F3FFA6A6A6FF0000001600000016A6A6
          A6FFF6F4F3FFDBDAD8FFDDDCDAFFC0C0BEFFDDDCDAFFDCDBD9FFDCDBD9FFDDDC
          DAFFC0C0BEFFDDDCDAFFDCDBD9FFDCDBD9FFDDDCDAFFC0C0BEFFDDDCDAFFDCDB
          D9FFDCDBD9FFDDDCDAFFC0C0BEFFDDDCDAFFDCDBD9FFDCDBD9FFDDDCDAFFC0C0
          BEFFDDDCDAFFDCDBD9FFDBDAD8FFF6F4F3FFA6A6A6FF0000001600000015A6A6
          A6FFF6F5F4FFD9D7D5FFD9D8D6FFDAD9D7FFDAD8D6FFD9D8D6FFD9D8D6FFDAD8
          D6FFDAD9D7FFDAD8D6FFD9D8D6FFD9D8D6FFDAD8D6FFDAD9D7FFDAD8D6FFD9D8
          D6FFD9D8D6FFDAD8D6FFDAD9D7FFDAD8D6FFD9D8D6FFD9D8D6FFDAD8D6FFDAD9
          D7FFDAD8D6FFD9D7D5FFD8D7D5FFF6F5F4FFA6A6A6FF000000150000000DA7A7
          A7FFF8F8F7FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5
          F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5
          F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5F4FFF5F5
          F4FFF5F5F4FFF4F5F4FFF5F5F4FFF8F8F7FFA7A7A7FF0000000D000000047575
          75B4A7A7A7FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6
          A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6
          A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6
          A6FFA6A6A6FFA6A6A6FFA6A6A6FFA7A7A7FF757575B400000004}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000000000000000000040000000D000000150000001600000016000000160000
          0016000000160000001600000016000000160000001600000016000000160000
          0016000000160000001600000016000000160000001600000016000000160000
          001600000016000000150000000D000000040000000000000000000000000000
          0000000000000000000D0000002B0000003F0000004300000043000000430000
          0043000000430000004300000043000000430000004300000043000000430000
          0043000000430000004300000043000000430000004300000043000000430000
          0043000000430000003F0000002B0000000D0000000000000000000000000000
          00000000000000000015345E37C44A844CFF4A834AFF49824AFF49824AFF4982
          4AFF49824AFF49824AFF49824AFF49824AFF49824AFF49824AFF49824AFF4982
          4AFF49824AFF49824AFF49824AFF49824AFF49824AFF49824AFF49824AFF4982
          4AFF4A834AFF4A844CFF345E37C4000000150000000000000000000000000000
          000000000000000000164A854CFF78E1AEFF76DCAAFF76DCA9FF76DCA9FF76DC
          A9FF76DCA9FF76DCA9FF76DCA9FF76DCA9FF76DCA9FF76DBA9FF75DBA9FF75DB
          A8FF75DBA8FF75DBA9FF76DBA9FF76DCA9FF76DCA9FF76DBA9FF75DBA9FF75DB
          A8FF76DCA9FF78E0AEFF4A854CFF000000160000000000000000000000000000
          000000000000000000164A834AFF72DAA8FF71D7A4FF71D8A6FF72D9A7FF72D9
          A7FF72D9A7FF72D9A7FF72D9A7FF72D9A7FF71D8A6FF70D6A3FF6FD3A1FF6FD3
          A0FF6FD3A0FF70D4A2FF70D6A4FF71D7A5FF71D7A5FF70D6A4FF70D4A2FF6FD3
          A0FF6FD3A1FF72D9A7FF4A834AFF000000160000000000000000000000000000
          000000000000000000164A834AFF71DBA9FF60B782FF488047FF49824AFF4A82
          4AFF4A824AFF4A824AFF4A824AFF49824AFF488047FF60B580FF6DD3A0FF6CD1
          9EFF6DD3A0FF69CC99FF57A06AFF539760FF539760FF57A06AFF69CC99FF6DD3
          A0FF6CD19EFF6FD8A5FF4A834AFF000000160000000000000000000000000000
          000000000000000000164A844BFF72DBABFF498149FF00000016000000000000
          00000000000000000000000000000000000000000016498148FF6BD4A1FF6AD2
          9FFF5EB580FF4C874FFF244126830E180E330E180E33244126834C874FFF5EB5
          80FF6AD29FFF70D6A6FF4A834AFF000000160000000000000000000000000000
          000000000000000000164A844BFF72DBADFF4A844BFF00000016000000000000
          000000000000000000000000000000000000000000164A834AFF68D4A1FF64C9
          95FF4C8750FF070D072400000001000000000000000000000001070D07244C87
          50FF64C995FF71D6A8FF4A834AFF000000160000000000000000000000000000
          000000000000000000164A844BFF74DBAEFF4A844BFF00000016000000000000
          000000000000000000000000000000000000000000164B844CFF65D3A1FF54A0
          6AFF2441268D0000000600000000000000000000000000000000000000062441
          268D53A069FF73D8ABFF4A844BFF000000160000000000000000000000000000
          000000000000000000164A844BFF75DAAEFF4A844BFF00000016000000000000
          000000000000000000000000000000000000000000164B844CFF62D2A0FF5096
          60FF0E180E4A0000000600000000000000000000000000000000000000060E18
          0E4A4E965FFF74D8ACFF4A844BFF000000160000000000000000000000000000
          000000000000000000164A844BFF76DAAFFF4A844BFF00000016000000000000
          000000000000000000000000000000000000000000164B854CFF5FD09EFF5196
          5FFF0E180E550000000D000000010000000000000000000000010000000D0E18
          0E554F965EFF76D8ADFF4A844BFF000000160000000000000000000000000000
          000000000000000000164A844BFF77D9B0FF4A844BFF00000016000000000000
          000000000000000000000000000000000000000000164C844CFF5BCC9AFF519D
          67FF2541269F000000230000000D00000006000000060000000D000000232541
          269F4E9C66FF77D6AEFF4A844AFF000000160000000000000000000000000000
          000000000000000000164A844BFF79D8B1FF4A844AFF00000027000000160000
          001600000016000000160000001600000016000000274C844BFF56C996FF55BF
          8CFF4C844BFF070D07560000002F00000022000000220000002F070D07564C88
          50FF52BE8AFF78D5AEFF4A844AFF000000160000000000000000000000000000
          000000000000000000164A844BFF7AD8B1FF4A8148FF00000048000000430000
          004300000043000000430000004300000043000000484D8249FF52C492FF52C3
          91FF50AC77FF4D8850FF264226A50E190F6A0E190F6A264226A54D8850FF50AB
          76FF4FC28FFF79D4ACFF4A844AFF000000160000000000000000000000000000
          000000000000000000164A844AFF7CD6B1FF4BA973FF4C925AFF4D935CFF4D93
          5CFF4D935CFF4D935CFF4D935CFF4D935CFF4D925BFF4EAA75FF4FC08DFF4FBE
          8CFF4FC08DFF4FBB88FF4E9B65FF4D945DFF4D945DFF4E9B65FF4FBB88FF4FC0
          8DFF4CBD8AFF7CD3AEFF4A844AFF000000160000000000000000000000000000
          000000000000000000164A844AFF7DD4B1FF48BD89FF4CBE8BFF4CBF8DFF4CBF
          8DFF4CBF8DFF4CBF8DFF4CBF8DFF4CBF8DFF4CBE8CFF4CBD8BFF4CBC89FF4CBB
          88FF4CBC89FF4CBD8AFF4CBE8BFF4CBF8DFF4CBF8DFF4CBE8BFF4CBD8AFF4BBB
          88FF48BB86FF7DD3B0FF4A844AFF000000160000000000000000000000000000
          0000000000000000001649844AFF80D4B1FF45B984FF48B987FF49BA87FF49BA
          87FF49BA87FF49BA87FF49BA87FF49BA87FF49BA87FF49B986FF49B986FF49B9
          86FF49B986FF49B986FF49B986FF49BA87FF49BA87FF49B986FF49B986FF48B9
          86FF45B884FF80D4B1FF49844AFF000000160000000000000000000000000000
          0000000000000000001649844AFF83D4B3FF41B783FF44B987FF45BA87FF46B9
          86FF46B784FF46B784FF46B986FF45BA87FF45BA87FF46B886FF46B784FF46B7
          84FF46B885FF46B885FF46B885FF46B885FF46B885FF46B885FF46B885FF45B7
          84FF41B682FF83D4B3FF49844AFF000000160000000000000000000000000000
          0000000000000000001649844AFF86D4B4FF3DB782FF4E8047FF4B955DFF41B6
          83FF42B885FF42B885FF41B683FF4B955DFF4F8147FF42B885FF43B784FF42B8
          85FF42B987FF41B987FF41B987FF41B987FF41B987FF41B987FF41B987FF41B9
          86FF3DB783FF85D5B5FF49844AFF000000160000000000000000000000000000
          0000000000000000001649844AFF88D5B7FF3AB580FF4A905AFF3E693DD74D8B
          54FF41AD79FF41AD79FF4D8B54FF3E693DD74B915BFF3FB684FF3FB683FF4E85
          4DFF4F854CFF4E854DFF4E854DFF4E854DFF4E854DFF4E854DFF4E854DFF4D84
          4BFF49844AFF88D7B9FF49844AFF000000160000000000000000000000000000
          00000000000000000016498449FF8BD6B8FF36B17DFF43A06BFF2744289E101C
          114A4E874FFF4E874FFF101C114A2744289E44A16CFF3CB481FF3CB481FF4897
          60FF1524156F0000001600000002000000000000000000000002000000161424
          156F42965CFF8AD8BBFF49844AFF000000160000000000000000000000000000
          00000000000000000016488449FF8FD6BBFF32AF7AFF3AAB77FF4B804BF50000
          00110000000000000000000000114B804BF53BAB78FF39B17EFF39B17EFF3AAD
          7BFF4B7F4AF60000002800000009000000000000000000000009000000284A7F
          49F634AB77FF8FD7BCFF48844AFF000000160000000000000000000000000000
          00000000000000000016488449FF93D8BEFF2FAD78FF37AA76FF4F874FFF0000
          00080000000000000000000000084F884FFF39A774FF35B07DFF36AE7CFF35B0
          7DFF47935CFF1B301C81000000160000000200000002000000161B301C814693
          5BFF2EAE79FF93D8BEFF488449FF000000160000000000000000000000000000
          00000000000000000016488449FF95DAC1FF2BA975FF488E57FF0E190F490000
          00120000000600000006000000120E190F494F874EFF3F9D68FF30AE7BFF31AD
          7BFF37A570FF4D814CF8000000280000000900000009000000284D814CF836A5
          6FFF2AAA75FF96D9C0FF488449FF000000160000000000000000000000000000
          00000000000000000016488449FF98DBC3FF398B56F71523147A000000440000
          0034000000160000001600000034000000441523157A4D804AF744945DFF2EAB
          79FF2DAC7AFF4A8E57FF1B301C8000000017000000171B301C804A8E57FF2CAB
          79FF27A772FF9AD9C1FF488449FF000000160000000000000000000000000000
          00000000000000000016488449FF9CDCC7FF418A50FF468E57FF469159FF4F88
          50FF0000002E0000002E4F8850FF469159FF478F58FF488F57FF4A8D55FF2BA9
          76FF2BA976FF389D68FF4D824CF80000002F0000002F4D824CF8389D68FF2AA8
          75FF24A46FFF9EDAC5FF488449FF000000160000000000000000000000000000
          00000000000000000016478449FFA1DDC7FF1FA36FFF26A774FF26A977FF4391
          5CFF1829187E1829187E43915CFF26A977FF27A875FF28A775FF28A774FF29A6
          73FF29A673FF26A875FF4C8B53FF1728187F1728187F4C8B53FF26A875FF28A5
          72FF21A26DFFA2DCC6FF488349FF000000160000000000000000000000000000
          00000000000000000016478349FFA6DECBFF1DA06AFF25A36FFF25A572FF319C
          69FF426E40DF426E40DF319C69FF25A572FF26A370FF27A370FF27A370FF27A3
          70FF27A370FF25A572FF3B9661FF487947ED487947ED3B9661FF25A572FF25A3
          6FFF1D9F6AFFA6DDCAFF478349FF000000160000000000000000000000000000
          00000000000000000016478348FFA9DFCDFF189C66FF209F6BFF21A16DFF1EA3
          70FF4B8A50FF4B8A50FF1EA370FF21A16DFF22A06CFF22A06CFF22A06CFF22A0
          6CFF22A06DFF21A16DFF21A16DFF448D55FF448D55FF21A16DFF21A16DFF209F
          6CFF189C66FFA9DFCDFF478348FF000000160000000000000000000000000000
          00000000000000000015478348FFACE0CEFF0D9760FF139A64FF149A65FF139B
          66FF2A9057FF2A9057FF139B66FF149A65FF149A65FF149A65FF149A65FF149A
          65FF149A65FF149A65FF139B66FF129C66FF129C66FF139B66FF149A65FF139A
          64FF0D9760FFACE0CEFF478348FF000000150000000000000000000000000000
          0000000000000000000D47854AFFB4E6D8FFB5E3D5FFB7E4D5FFB7E4D6FFB7E4
          D6FFB6E4D7FFB6E4D7FFB7E4D6FFB7E4D6FFB7E4D6FFB7E4D6FFB7E4D6FFB7E4
          D6FFB7E4D6FFB7E4D6FFB7E4D6FFB7E4D6FFB7E4D6FFB7E4D6FFB7E4D6FFB7E4
          D5FFB5E3D5FFB4E6D8FF47854AFF0000000D0000000000000000000000000000
          00000000000000000004345E36B447844AFF468348FF468348FF468348FF4683
          48FF468348FF468348FF468348FF468348FF468348FF468348FF468348FF4683
          48FF468348FF468348FF468348FF468348FF468348FF468348FF468348FF4683
          48FF468348FF47844AFF345E36B4000000040000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000040000000D00000014000000140000
          000D000000040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0006000000110000001600000016000000160000001600000016000000160000
          00160000001600000016000000160000001E000000300000003F0000003F0000
          00300000001E0000001600000016000000160000001600000016000000160000
          0016000000160000001600000016000000110000000600000000000000000000
          0011000000320000004300000043000000430000004300000043000000430000
          004300000043000000430000004300000047216090C3318BCEFF318BCEFF2160
          90C3000000470000004300000043000000430000004300000043000000430000
          0043000000430000004300000043000000320000001100000000000000000000
          0011525051FF525051FF525051FF525051FF525051FF525051FF525051FF5250
          51FF525051FF525051FF534F4FFF554A44FF3895DDFF65E4FCFF65E4FCFF3895
          DDFF554A44FF534F4FFF525051FF525051FF525051FF525051FF525051FF5250
          51FF525051FF525051FF525051FF525051FF0000001100000000000000000000
          00067D7A78FF7E7B78FF7E7B78FF7E7B78FF7E7B78FF7E7B78FF7E7B78FF7E7B
          78FF7E7B78FF7E7B78FF7F7A77FF82756DFF4098DFFF91F7FFFF91F7FFFF4098
          DFFF82756DFF7F7A77FF7E7B78FF7E7B78FF7E7B78FF7E7B78FF7E7B78FF7E7B
          78FF7E7B78FF7E7B78FF7E7B78FF7D7A78FF0000000600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000032E6592AC4B9CE2FF4C9DE3FF2F65
          92AC000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000D000000150000001600000016000000160000001600000016000000160000
          001600000016000000160000001600000016000000277F7065FF504239FF0000
          0027000000160000001600000016000000160000001600000016000000160000
          0016000000160000001600000016000000150000000D000000040000000D0000
          002B0000003F0000004300000043000000430000004300000043000000430000
          00430000004300000043000000430000004300000048736C68FF433E3CFF0000
          0048000000430000004300000043000000430000004300000043000000430000
          00430000004300000043000000430000003F0000002B0000000D000000157C7C
          7AC4B0B0AEFFAFAFADFFAFAFACFFAFAFACFFAFAFACFFAFAFACFFAFAFACFFAFAF
          ACFFAFAFACFFAFAFACFFAFAFACFFAFAFACFFB0B0ADFFB3B3B0FFB4B4B1FFB1B0
          AEFFAFAFACFFAFAFACFFAFAFACFFAFAFACFFAFAFACFFAFAFACFFAFAFACFFAFAF
          ACFFAFAFACFFAFAFACFFAFAFADFFB0B0AEFF7C7C7AC40000001500000016B0B0
          ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0ADFF0000001600000016AEAE
          ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFCFCFCFFFFFFFFFFAEAEABFF0000001600000016ADAD
          ABFFFFFFFFFFFFFFFFFF232121FF262424FF1F1C1CFFFFFFFFFF201D1DFF2725
          25FF252323FFFFFFFFFF201E1EFF272525FF252323FFFFFFFFFF181616FFFFFF
          FFFF1E1C1CFFFFFFFFFF1E1C1CFFFFFFFFFF181616FFFFFFFFFF1E1C1CFFFFFF
          FFFF1D1B1BFFFFFFFFFFF8F7F7FFFFFFFFFFADADABFF0000001600000016ADAD
          ABFFFFFFFFFFFDFCFCFF363432FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFF
          FFFF3B3938FFFFFFFFFFFFFFFFFFFFFFFFFF3A3837FFFFFFFFFFFDFCFCFFFFFF
          FFFF353231FFFFFFFFFF353231FFFFFFFFFFFDFCFCFFFFFFFFFF353231FFFFFF
          FFFF343231FFFDFCFCFFF4F3F3FFFFFFFFFFADADABFF0000001600000016ADAD
          ABFFFFFFFFFFF3F2F2FFFDFCFCFF454342FFFDFCFCFFFBFAFAFF908D8CFF4C4A
          49FF8E8C8BFFFFFEFEFF918E8DFF4C4A49FF8C8A89FFF7F7F7FFF2F1F1FFF6F5
          F6FFFFFFFFFF494746FFFFFFFFFFF6F5F6FFF2F1F1FFF6F5F6FFFFFFFFFF4947
          46FFFFFFFFFFF6F5F5FFEEEDEDFFFFFFFFFFADADABFF0000001600000016ADAD
          ABFFFFFFFFFFEDECECFFF5F4F4FFFCFBFCFF5A5654FFFAF9FAFF5E5B59FFFFFF
          FFFFFBFAFAFFF9F8F9FF5E5B58FFFFFFFFFFF9F8F9FFEFEEEFFFECEBEBFFF2F1
          F1FF595654FFFEFDFEFF595654FFF2F1F1FFEDECECFFF2F1F1FF595654FFFEFD
          FEFF595654FFF2F1F1FFEAE9E9FFFFFFFFFFADADABFF0000001600000016AEAE
          ABFFFFFFFFFFE9E9E8FF686462FF6D6967FF9D9B99FFF3F3F2FF6E6B69FF6F6C
          69FF6A6765FFF2F3F2FF6E6B68FF6F6C69FF696663FFEBEBEAFFE8E8E7FFECEC
          EBFF696664FFF3F4F3FF696664FFECECEBFFE8E8E7FFECECEBFF696664FFF3F4
          F3FF696664FFEBECEBFFE5E6E4FFFFFFFFFFAEAEABFF0000001600000016AEAE
          ACFFFFFFFFFFE2E1E0FFE7E6E5FFE9E8E7FFE7E6E5FFE6E5E4FFE8E7E7FFE9E8
          E7FFE8E7E6FFE6E5E4FFE9E8E7FFE9E8E7FFE7E6E5FFE3E2E1FFE2E0DFFFE3E2
          E1FFE6E5E4FFE6E5E4FFE6E5E4FFE3E2E1FFE2E0DFFFE3E2E1FFE6E5E4FFE6E5
          E4FFE6E5E4FFE3E2E1FFE0DFDEFFFFFFFFFFAEAEACFF0000001500000010AFAF
          ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFADFF0000000D00000005A8A8
          A6F0B0B0ADFFAEAEACFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAE
          ABFFAEAEABFFAEAEABFFAEAEABFFAEAEACFFAFAFADFFB2B2AFFFB2B2B0FFB0B0
          ADFFAEAEACFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAE
          ABFFAEAEABFFAEAEABFFAEAEACFFB0B0ADFF7C7C7AB400000004000000050000
          0010000000160000001600000016000000160000001600000016000000160000
          001600000016000000160000001600000016000000277F7D7CFF5C5B5AFF0000
          0027000000160000001600000016000000160000001600000016000000160000
          0016000000160000001600000016000000160000001000000005000000100000
          0031000000420000004300000043000000430000004300000043000000430000
          004300000043000000430000004300000043000000487F7D7CFF5C5B5AFF0000
          0048000000430000004300000043000000430000004300000043000000430000
          004300000043000000430000004300000042000000310000001000000016A8A8
          A6F3AFAFADFFAEAEABFFADADABFFADADABFFADADABFFADADABFFADADABFFADAD
          ABFFADADABFFADADABFFADADABFFAEAEABFFAFAFADFFB1B2AFFFB2B2B0FFAFAF
          ADFFAEAEABFFADADABFFADADABFFADADABFFADADABFFADADABFFADADABFFADAD
          ABFFADADABFFADADABFFAEAEABFFAFAFADFFA8A8A6F30000001600000016B0B0
          ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0ADFF0000001600000016AEAE
          ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFCFCFCFFFFFFFFFFAEAEABFF0000001600000016ADAD
          ABFFFFFFFFFFFFFEFEFF201E1EFF292727FF222020FFFFFFFFFF252222FF2624
          24FF201D1DFFFFFFFFFF262324FF2A2828FF262324FFFFFFFFFF181616FFFFFF
          FFFF1E1C1CFFFFFFFFFF1E1C1CFFFFFFFFFF181616FFFFFFFFFF1E1C1CFFFFFF
          FFFF1D1B1BFFFFFFFFFFF8F7F7FFFFFFFFFFADADABFF0000001600000016ADAD
          ABFFFFFFFFFFF8F7F7FFFFFFFFFF3C3A39FFFFFFFFFFFFFFFFFF363433FFFFFF
          FFFFFFFFFFFFFFFFFFFF3C3A39FFFFFFFFFF3C3A39FFFFFFFFFFFDFCFCFFFFFF
          FFFF353231FFFFFFFFFF353231FFFFFFFFFFFDFCFCFFFFFFFFFF353231FFFFFF
          FFFF343231FFFDFCFCFFF4F3F3FFFFFFFFFFADADABFF0000001600000016ADAD
          ABFFFFFFFFFFF1F0F0FFFCFBFBFF4A4847FFFCFBFCFFF6F5F5FFFDFCFDFF4543
          42FFFEFDFDFFFEFDFDFF92908FFF52504FFF92908FFFFAF9FAFFF3F1F2FFF6F5
          F6FFFFFFFFFF494746FFFFFFFFFFF6F5F6FFF2F1F1FFF6F5F6FFFFFFFFFF4947
          46FFFFFFFFFFF6F5F5FFEEEDEDFFFFFFFFFFADADABFF0000001600000016ADAD
          ABFFFFFFFFFFEDECECFFF8F7F7FF5D5957FFF5F4F4FFEFEEEFFFF5F4F4FFFCFB
          FCFF5A5654FFFBFAFAFF605D5AFFFFFFFFFF5F5C59FFF4F3F4FFEDECECFFF2F1
          F1FF595654FFFEFDFEFF595654FFF2F1F1FFEDECECFFF2F1F1FF595654FFFEFD
          FEFF595654FFF2F1F1FFEAE9E9FFFFFFFFFFADADABFF0000001600000016AEAE
          ABFFFFFFFFFFE9EAE8FF6A6664FF6D6967FFEEEEEDFFEBECEBFF696562FF6D69
          67FF9D9B99FFF3F3F2FF6F6B69FF716E6CFF6E6A68FFEDEDECFFE8E8E7FFECEC
          EBFF696664FFF3F4F3FF696664FFECECEBFFE8E8E7FFECECEBFF696664FFF3F4
          F3FF696664FFEBECEBFFE5E6E4FFFFFFFFFFAEAEABFF0000001600000015AEAE
          ACFFFFFFFFFFE3E1E0FFE7E6E5FFE8E7E6FFE4E3E2FFE4E3E2FFE7E6E5FFE9E8
          E7FFE7E6E5FFE6E5E4FFE9E8E7FFEAE9E8FFE8E7E6FFE4E3E2FFE2E0DFFFE3E2
          E1FFE6E5E4FFE6E5E4FFE6E5E4FFE3E2E1FFE2E0DFFFE3E2E1FFE6E5E4FFE6E5
          E4FFE6E5E4FFE3E2E1FFE0DFDEFFFFFFFFFFAEAEACFF000000150000000DAFAF
          ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFADFF0000000F000000047C7C
          7AB4B0B0ADFFAEAEACFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAE
          ABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAE
          ABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAEABFFAEAE
          ABFFAEAEABFFAEAEABFFAEAEACFFB0B0ADFF9A9A98DC00000005}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000070000000E00000013000000160000001600000016000000160000
          0016000000130000000E00000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000090000
          001500000024000000320000003C000000410000004300000043000000430000
          00410000003C0000003200000024000000150000000900000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000600000014000000280000
          003C2524237C565353C373706FEA837F7EFF837E7EFF837E7EFF837E7EFF837F
          7EFF73706FEA565353C32524237C0000003C0000002800000014000000060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000070000001C000000372F2D2D8A807C
          7BF9958F90FFB4ACAFFFC9C0C5FFD9CFD5FFDACFD5FFDACFD6FFDACFD5FFD9CF
          D5FFC9C0C4FFB4ACAEFF958F90FF807C7BF92F2D2D8A000000370000001C0000
          0007000000010000000000000000000000000000000000000000000000000000
          00000000000000000001000000090000001F05050546797574ED9A9595FFC2B9
          BEFFB5B7B1FF4F814DFF216820FF004E00FF004D00FF004C00FF004D00FF004D
          00FF286E27FF51854FFFBCBFB9FFC2BBBEFF9A9494FF797574ED050505460000
          001F000000080000000100000000000000000000000000000000000000000000
          00000000000000000008000000210F0F0F56888483FFB4ACAFFFB1B3ACFF3C73
          3AFF004B00FF024600FF0F400DFF193B16FF1B3917FF007C00FF1B3917FF193B
          16FF0E400CFF014600FF004B00FF447B42FFBABCB5FFB3ABAEFF888483FF100F
          0F560000001F0000000700000000000000000000000000000000000000000000
          0000000000060000001D1B1A1A648F8A8AFFC3BABDFF81977EFF005200FF0444
          03FF163D13FF0D5E0BFF096E07FF097007FF0B680BFF008700FF0B680BFF0970
          07FF086E07FF0D5E0BFF163D13FF034403FF005300FF8DA28AFFC4BBBFFF8F8A
          89FF0F0F0F530000001C00000006000000000000000000000000000000000000
          000200000014060505408C8887FFC0B7BCFF738C70FF004C00FF103E0EFF0F58
          0DFF067605FF11560FFF194016FF194016FF1A3D17FF007D00FF1A3D17FF1940
          16FF194016FF11560FFF067605FF0F580DFF103E0DFF004B00FF7E9B7BFFC3BA
          BFFF8B8786FF0606064100000014000000020000000000000000000000000000
          0009000000287E7A79ECB1AAACFF738C70FF004B00FF026302FF086C07FF0B64
          0AFF184114FF174313FF164313FF174314FF184015FF007E00FF184015FF1743
          14FF164313FF174313FF184114FF0B640AFF086C07FF026301FF004900FF8BA0
          88FFB1ABADFF7D7A78EC00000028000000090000000000000000000000010000
          0015333231819F999AFFA9AAA6FF004F00FF0F410DFF076D06FF027003FF1644
          13FF164314FF164414FF164314FF174215FF183F15FF007D00FF183F15FF1742
          15FF164314FF164414FF164314FF164413FF027003FF076D06FF0E400CFF004F
          00FFB4B5AFFF9E9999FF33313181000000150000000100000000000000070000
          00248C8887F9B7AEB1FF40703EFF044403FF0D5A0BFF0A6509FF154512FF046A
          05FF154711FF164214FF086C07FF037B02FF0A6909FF008600FF0A6909FF037B
          02FF086C07FF164214FF154711FF046A05FF154512FF0A6509FF0C5A0AFF0444
          03FF447642FFBEB5B9FF8B8786F90000002400000007000000000000000E2827
          276B9C9796FFA9ABA5FF004700FF10430EFF047603FF154412FF144512FF1248
          10FF056704FF047903FF0E570CFF154313FF164213FF007D00FF164213FF1543
          13FF0E570CFF047903FF056704FF124810FF144512FF154412FF047603FF1043
          0EFF004600FFB3B3AFFF9C9797FF2827276B0000000E0000000000000013615E
          5EBCAFA8AAFF4F784DFF044502FF096308FF0D590CFF134711FF134710FF1444
          12FF047803FF056804FF114810FF144611FF144412FF007E00FF144412FF1446
          11FF114810FF056804FF047803FF144412FF134710FF134711FF0D590CFF0963
          08FF034501FF527B4FFFB2ABADFF615E5DBC000000130000000000000016837F
          7EE8BAB2B6FF1F5B1DFF0A4508FF057104FF114710FF10480FFF104810FF066C
          05FF0C590BFF10490FFF046B03FF10490FFF124411FF008000FF124411FF1049
          0FFF046B03FF10490FFF0C590BFF066C05FF104810FF10480FFF114710FF0571
          04FF0A4408FF2D642BFFBEB7BAFF827E7EE80000001600000000000000169692
          91FFC5BBBFFF004300FF0D450CFF057204FF10480FFF0F490EFF10480FFF037C
          02FF10460FFF10480FFF0F4A0EFF036E02FF047303FF086A06FF047403FF0468
          03FF0F4A0EFF10480FFF10460FFF037C02FF10480FFF0F490EFF10480FFF0572
          04FF0C450CFF004300FFC8BEC3FF969191FF0000001600000000000000169894
          93FFC5BAC0FF004200FF0D460BFF066B05FF10460FFF10480FFF10460FFF076B
          05FF10460FFF10470EFF10450EFF037202FF0F420AFF0F430AFF0F450DFF0375
          03FF10460FFF10470FFF10460FFF076B05FF10460FFF10480FFF10460FFF066B
          05FF0C460CFF004200FFC8BDC2FF989493FF0000001600000000000000169994
          94FFCCC2C8FF003F00FF007C00FF008500FF007C00FF007D00FF007B00FF0083
          00FF007A00FF007A00FF007700FF056B03FF0E7833FF0DA85BFF0E4408FF066B
          05FF007D00FF007D00FF007C00FF008600FF007F00FF007D00FF007C00FF0085
          00FF007C00FF003F00FFC7BDC2FF999594FF0000001600000000000000169995
          94FFD5CBD1FF003F00FF0A4809FF066C04FF0E480CFF0E490CFF0E470BFF0668
          01FF0E4106FF0E4E0FFF0E8940FF05B75EFF0BA557FF0D9F53FF0D4306FF0374
          02FF0E490CFF0E4B09FF0E4B02FF067100FF0E4C00FF0E4C02FF0E4909FF066C
          04FF0A4809FF004000FFCCC2C8FF9A9595FF0000001600000000000000139A97
          95FFDED6DAFF003D00FF074806FF037202FF0C4908FF0B4706FF0C4202FF0283
          16FF0C9649FF0CB763FF0AAB5AFF05A650FF089F4BFF09984AFF027000FF036A
          02FF0B4E08FF0C4E01FF053A69FF0022D9FF0023D9FF053A69FF0C4D01FF0473
          01FF084907FF003E00FFD0C8CCFF9C9797FF00000013000000000000000E8885
          84E6DDD5D9FF255723FF064602FF027000FF0A4201FF0A7227FF0AA24FFF04C3
          65FF08B45EFF09A756FF07A34DFF099549FF0A8D45FF099142FF0A4604FF094F
          08FF036D00FF0A5400FF0023D9FF0027C7FF0027C7FF0023D9FF0C4F00FF0275
          00FF054804FF2A5C28FFCAC2C6FF898585E60000000E00000000000000076664
          63B3D0CACCFF5D7C5BFF033E00FF028723FF05B55DFF09BE67FF09B762FF0AAD
          5AFF04AC52FF06A14DFF099348FF0A8A43FF0B833FFF0B883BFF094A03FF094D
          08FF095105FF036F00FF0021D9FF0026C8FF0027C8FF0022D9FF066200FF0267
          00FF034301FF617F5EFFBEB9BBFF676464B30000000700000000000000012C2B
          2A56B5B0B0FFCBCAC7FF003300FF04B25CFF01C564FF07B35EFF07AB58FF07A2
          52FF06A04CFF079A46FF098D42FF0B813DFF0D7838FF0E7D35FF074B03FF074D
          07FF065E03FF017E00FF014766FF0021D9FF0021D9FF043869FF017C00FF034B
          00FF003A00FFCAC9C7FFAAA5A5FF2C2B2B560000000100000000000000000000
          00099B9796F7E2DBDEFF54714FFF065D1DFF02BF61FF04B057FF06A152FF069E
          4BFF089046FF098841FF0B873BFF0C8435FF0D7E30FF0F812DFF016E00FF0179
          00FF027102FF074F03FF075400FF027000FF075400FF046D00FF016400FF0244
          01FF5B7A58FFD2CBCFFF9A9695F7000000090000000000000000000000000000
          000239373767BDB8B7FFD5D3D0FF0F3906FF037329FF03AC54FF05A04CFF0890
          45FF0A8840FF0B803AFF0C7835FF0E6F30FF0F652CFF117827FF044E02FF0550
          05FF055105FF055105FF055104FF055202FF007400FF007200FF004A00FF1141
          0FFFD1D1CFFFB1ADADFF39383767000000020000000000000000000000000000
          0000000000068F8C8BE7DED9DBFF9AA795FF023200FF008723FF069A47FF098D
          40FF0B7F39FF0D7634FF0E6E2FFF0F6629FF115C24FF147A20FF025001FF0453
          04FF045304FF045204FF045104FF016C02FF007300FF006900FF013900FF9DAB
          9AFFCAC5C6FF908D8CE700000006000000000000000000000000000000000000
          00000000000007070712A7A4A3FFF5EFF3FF9FA99AFF013400FF045711FF0781
          36FF0B8335FF0E752FFF106428FF115B23FF12511EFF157A1AFF015001FF0352
          03FF035203FF026202FF007A00FF006500FF004A00FF013700FFA4B1A2FFE2DB
          DFFFA39F9EFF0606061200000000000000000000000000000000000000000000
          0000000000000000000112121124AEABAAFFFAF6F9FFA5B2A4FF133B0CFF0442
          04FF046118FF0D7327FF107822FF12761DFF146F17FF178414FF007000FF0075
          00FF007600FF006B00FF005000FF014200FF143E10FFB7C2B7FFE6E1E4FFA8A5
          A4FF201F1F380000000100000000000000000000000000000000000000000000
          000000000000000000000000000121201F38ABA8A7FFEDE8ECFFEDECEAFF667F
          62FF022F00FF043E02FF074A0BFF0A530BFF11520EFF137B0FFF005200FF0053
          00FF004B00FF013F00FF043001FF678165FFE9EAE9FFD4CFD2FFA5A09FFF1212
          1222000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000706061094908FE6CFCBCCFFFFFD
          FFFFF1F1F0FF788E76FF355732FF032C00FF042D01FF052C02FF062D02FF052C
          01FF375835FF7A9078FFF2F1F0FFF1EBEEFFBAB5B5FF969291E6070606100000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000023A39395FA5A1
          9FF7C8C4C4FFEDE9EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEF9FDFFDFDCDCFFB8B5B4FFA19D9CF73A3A395F00000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00012F2E2D4C6E6B6BAC93908EE2A8A4A2FFA8A4A2FFA8A4A2FFA8A4A2FFA8A4
          A3FF94908FE26E6C6BAC2F2E2E4C000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000D000000130000000D00000004000000000000000000000000000000000000
          00030000000B0000001300000016000000160000001000000005000000000000
          00060000000B0000000600000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000D0000
          002B0000003C0000002B0000000D000000000000000000000001000000070000
          00170000002C0000003D00000042000000420000003100000010000000060000
          001C0000002D0000001C00000006000000000000000000000000000000000000
          0000000000040000000D000000130000000D0000000400000000000000154D4B
          4AC56D6A69FF4D4B4AC500000015000000000000000500000011000000230000
          003C5E4423A8B17E41FAB68242FFB78343FFAD7D41F3000000180000001C0000
          003DB88444FF0000003D0000001C000000060000000000000000000000000000
          00000000000D0000002B0000003C0000002E000000160000000D000000236E6B
          6AFFEEEDEBFF6E6B6AFF000000230000000E0000001B00000035140E075BB984
          43FFC69252FFE7B771FFF8C87FFFFBCD85FFB88545FF000000270000003DB581
          42FFFBCD82FFB58142FF0000003D0000001C0000000600000000000000000000
          000000000013514E4EC4716D6DFF4C4A49C50000003700000030000000406D69
          69FFEAE9E7FF6D6969FF00000040000000330000003E656465EEB88343FFCE9B
          58FFF3C680FFF1C47DFFF3C581FFD9A865FF5840218F00000040B58142FFF3C3
          78FFF0C076FFF3C378FFB58142FF0000003D0000001C00000006000000000000
          00000000000D74716FFFEFEEECFF9D9B99FF464443BD2D2C2B94696664F4706E
          6CFFE5E4E2FF706E6CFF686564F42A29299397999CE7C0A583FFBF8845FFF0C5
          82FFEABB72FFEEC381FFCC9B5AFF1A13093B00000039B68242FFEEBD72FFEAB8
          6FFFE9B76DFFEAB86FFFEFBD73FFB68243FF0000003700000011000000000000
          0000000000044F4D4DB39F9C9BFFEAE9E8FF9A9796FF928F8EFFCFCCCCFFE1E0
          DFFFDEDDDCFFE1E0DFFFCDCBCAFFA3A1A1FFD5D7DDFFBF8D4EFFD9A968FFE9BA
          77FFE8BB78FFDFB374FF2B1E0F4F00000012B98445FFECBA6FFFE7B56AFFE4B1
          66FFE3B066FFE4B167FFE7B56BFFECBA6FFFB98545FF00000011000000000000
          0000000000000000000D484646B09B9998FFE5E4E2FFE0DFDDFFDBD9D8FFD8D7
          D6FFD8D7D6FFD8D7D6FFDAD7D6FFE3E2E1FFF7FBFFFFB37831FFEAC388FFE0B0
          67FFE8C288FFC9995BFF0000001600000006BA8646FFB78243FFBF8A47FFECCD
          9DFFDEAA5DFFEDCD9EFFB47F3FFFB88344FFBA8646FF00000006000000040000
          000D00000015000000232E2D2D89959391FFE0E0DFFFD2D1CEFFD5D4D2FFDDDC
          DAFFDFDFDCFFDCDCDAFFD9D8D8FFD5D6D7FFF3F9FFFFB27831FFE9C38CFFDDAB
          63FFE8C38DFFC29254FF00000027000000110000000600000016C18C4AFFECCD
          A1FFD9A658FFEDCEA2FFB6813FFF0000001600000000000000000000000D0000
          002B0000004000000048726E6CF4D3D1D0FFD4D2D1FFD0CFCDFFDDDCDBFFA5A3
          A2FF898685FFA2A1A0FFF6F7F7FFEDF0F6FFEFF7FFFFB37A34FFE8C592FFD5A2
          54FFE8C594FFC08C49FF00000048000000320000001200000019C39356FFEBCF
          A4FFD9A960FFECD0A6FFB7813FFF000000160000000000000000000000135957
          55C37D7A78FF7A7775FF7B7877FFE6E4E3FFC5C3C1FFDCDBD9FFA19D9DFF4947
          46A910101032474545A9DDE0E3FFB5772BFFB57B34FFB57E3BFFE7C89DFFD29C
          4CFFE7C89DFFBD8843FFB88342FFBA8545FF0000001B00000027C99E66FFEBD0
          AAFFD5A45DFFECD3AEFFB7813FFF0000001300000000000000000000000D817E
          7BFFF5F5F4FFF1F0EFFFECEBEAFFDDDCDAFFBFBCBBFFE1E1DFFF8D8B89FF1111
          10520000002811101052D3D7DAFFB5782DFFE8C99DFFCE9745FFCD9748FFCD98
          4AFFCD9749FFCE9847FFEACFA6FFB98443FF000000282B1E0F6EDEBE94FFDDB9
          83FFDCB67EFFD7B587FFB27E3FF80000000B0000000000000000000000045C59
          59B5827E7CFF7E7B79FF807C7CFFE8E7E6FFB9B6B3FFDADAD8FFACAAA9FF4C4B
          49B9111111634B4947B9DBDCDDFFF3F8FFFFB2762CFFE6CBA3FFC89040FFC892
          43FFC89041FFE8CFA9FFB7813EFF0000002D1A12095ECBA16DFFE8D0AEFFD0A0
          5BFFEAD3B3FFBD8B4DFF5E44238D000000030000000000000000000000000000
          0000000000000000000D797775F2D9D8D6FFC4C2C1FFBDBAB9FFE2E2E1FFA8A6
          A3FF9A9796FFADABA9FFDEDEDEFFE4E4E6FFE7ECF2FFB3762CFFE6CFA9FFC388
          36FFE7D0AAFFB77D37FF0000002B5B432699D3AF7EFFECDABFFFE5CDA9FFE9D4
          B6FFCBA26DFFB88342FF00000007000000000000000000000000000000000000
          0000000000040000001633323284A19F9DFFE5E4E2FFADAAA8FFBBB7B5FFDADA
          D7FFDFDEDCFFD9D9D7FFB9B6B4FFAAA7A5FFF7F8FAFFD3D8DFFFB4772DFFE7CE
          AAFFB5782EFFB5BAC4FE0000003BC7975CFFECD7B8FFC9974EFFE8D2B5FFC495
          5AFFB8823FFF1610082400000001000000000000000000000000000000000000
          00000000000D0000002E535150BBAAA8A6FFEEEEEDFFE6E5E3FFC3BFBEFFAEAB
          A8FFAEAAA8FFAEABA8FFC2BFBEFFE5E4E2FFEAEAE9FFD8D9DAFFA0A4A9DDB575
          27FFF3F7FDFFCDCDD1FF2D2D2F7A976427DEB77C33FFB67A32FFBB8748FFBAA1
          84FF000000110000000000000000000000000000000000000000000000000000
          0000000000135D5C5AC0B0ADACFFF4F4F3FFACAAA8FFA6A2A2FFDDDDDBFFECEC
          EBFFDEDDDBFFECECEBFFDEDDDBFFA6A2A2FFABA9A6FFF0EFEFFFD6D7D8FF6060
          629CDCDEE0FFB6B6B4FF7D7B7CFFB5B3B2FFB8B7B8FFE3E9EEFFD4D8DDFF6668
          6DB50000001F0000001100000014000000150000000D00000004000000000000
          00000000000D8C8987FFFAFAF9FFB2AFAEFF565453A63635346B817E7CF18B88
          87FFF3F2F1FF8B8887FF7A7775E83534338E4E4C4BAAA4A2A0FFEBE9E8FF4F4D
          4CD99B9797FFDEDDDBFFDDDDDBFFDCDCDCFFDBDBDAFFDDDCDBFF9C999AFF5C5B
          5BE400000040000000390000003E000000400000002B0000000D000000000000
          000000000004656362B68F8B89FF615F5EB00000000400000000000000158B88
          86FFF9F8F6FF8C8987FF3E3C3BAD757270FF4B4948C219181873575554DAA8A6
          A4FFE1E0DEFFDAD9D7FFD9D8D7FFD8D8D7FFD8D7D6FFD9D8D6FFE1E0DEFFAAA9
          A7FF625F5EE5484746BD767371FF787573FF565453C300000011000000000000
          00000000000000000000000000000000000000000000000000000000000D908D
          8BFFFEFDFCFF918E8CFF777472FFEAEAE8FFB8B6B5FF888583FF93928FFFE2E1
          DFFFD4D2D1FFD5D4D3FFDDDCDBFFDFDEDCFFDDDCDBFFD5D4D3FFD4D2D1FFE2E1
          DFFFA3A19FFFB5B3B3FFE7E7E5FFDBDBD8FF7A7776FF0000000A000000000000
          0000000000000000000000000000000000000000000000000000000000046766
          64B594918FFF5E5D5BA56A6867E0908C8CFFC2C0BEFFE4E3E1FFE6E5E3FFD2CF
          CFFFD1CFCDFFDCDBD9FFA4A2A1FF908E8DFFA4A2A1FFDCDBD9FFD1CFCDFFD0CE
          CDFFE6E5E3FFC5C4C2FF9C9A98FF7A7676FF3938387900000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000032221204D555353BC7B7877FFE6E6E4FFC5C3
          C2FFDCDBD9FFA7A5A3FF494746A911101032494746A9A7A5A3FFDCDBD9FFC5C3
          C2FFE7E7E5FF767371FF27262563000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000050000001300000024000000397A7775FFE9E8E8FFBFBC
          BBFFE1E0DEFF959291FF111110520000002811111052959291FFE1E0DEFFBFBC
          BBFFE6E5E3FF7B7876FF0000002E000000170000000A00000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000010000000322322227A595755C9807D7CFFE9E9E8FFB7B5
          B3FFDADAD7FFABA9A8FF4C4B49B9111111634C4B49B9ABA9A8FFDADAD7FFB7B5
          B3FFEAE9E9FF7B7875FF292827830000003E000000260000000A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000147D7A78F1979593FFC8C6C4FFE8E8E7FFECEBE9FFC0BD
          BCFFBCBAB8FFE2E2E1FFA8A6A3FF9A9796FFAEACAAFFE2E2E1FFBCBAB8FFBCBA
          B8FFECEBE9FFCBC9C8FFA3A19FFF83807EFF3D3C3B9300000011000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000D878482FFF1F0EFFFC2C0BEFF959391FFA19F9DFFE7E6
          E4FFB2AFADFFB9B7B5FFDAD9D7FFE2E1DFFFD9D9D7FFB9B7B5FFB2AFADFFE6E6
          E4FFAEACAAFFC0BDBBFFEDECEBFFE2E1DFFF888583FF0000000D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000004615F5DB6888583FF595755AB1413132E74716FE1BBB9
          B7FFE8E7E5FFBEBAB9FFADAAA8FFADAAA8FFADAAA8FFBEBAB9FFE8E7E5FFBAB8
          B6FF706E6CDC535150A4878482FF888583FF615F5DB600000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000A7673
          71E3A5A2A1FFEFEEEDFFEFEFEEFFF0F0EFFFEFEFEEFFEFEEEDFFA5A2A1FF7673
          71E30000000A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000E1514
          14509B9896FFEDECEBFF8B8887FF878481FF8B8887FFEDECEBFF9B9896FF1514
          14500000000E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000125C5A
          58BAC8C6C5FFCECCCBFF62605EBC0000000E62605EBCCECCCBFFC8C6C5FF5C5A
          59BB000000120000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000D908D
          8BFFF5F4F4FFA3A09EFF272726530000000327272653A3A09EFFF5F4F4FF908D
          8BFF0000000D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000046766
          65B6A09E9CFF898685EE000000050000000000000005898685EEA09E9CFF6765
          64B6000000040000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000030000000900000011000000150000001600000016000000160000
          0016000000150000001100000009000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000060000
          00100000001B0000002900000038000000410000004300000043000000430000
          00430000004100000038000000290000001B0000001000000006000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000030000000D000000200000
          00350606064C393837996A6866DE827F7DFF817E7CFF817E7CFF817E7CFF817E
          7CFF827F7DFF6A6866DE393837990606064C00000035000000200000000D0000
          0003000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000005000000160000002E10100F5A6C69
          68DF848181FF959290FF9E9C9AFFA9A5A5FFABA9A7FFAAA8A6FFAAA8A6FFABA9
          A7FFA9A5A5FF9E9C9AFF959290FF848181FF6C6968DF10100F5A0000002E0000
          0016000000050000000000000000000000000000000000000000000000000000
          000000000000000000000000000500000019000000384E4D4CB4878482FF9E9B
          98FFAFADABFFBEBCBAFFCECDCBFFDCDBD9FFE0DFDDFFE0DFDDFFE0DFDDFFE0DF
          DDFFDCDBD9FFCECDCBFFBEBCBAFFAFADABFF9E9B98FF878482FF4E4D4CB40000
          0038000000190000000500000000000000000000000000000000000000000000
          00000000000000000005000000190000003A797674ED928F8CFFA9A8A7FFC0BE
          BCFFD5D5D3FFC1C0BEFFAAA8A6FF979391FF8E8B89FF8E8B89FF8E8B89FF8E8B
          89FF979391FFAAA8A6FFC1C0BEFFD5D5D3FFC0BEBCFFA9A8A7FF928F8CFF7976
          74ED0000003A0000001900000005000000000000000000000000000000000000
          0000000000030000001600000038797674EB9D9A99FFB1AFADFFC9C7C6FFC0BE
          BCFF93918FFF8D8A88FF8F8C8AFF908D8BFF918E8CFF918E8CFF918E8CFF918E
          8CFF908D8BFF8F8C8AFF8D8A88FF93918FFFC0BEBCFFC9C7C6FFB1AFADFF9D9A
          99FF797674EB0000003800000016000000030000000000000000000000000000
          00010000000D0000002E7C7977EC9E9B99FFB2B0AEFFC6C5C3FFA5A3A1FF8B88
          86FF8D8A89FF8E8B8BFF8E8C8BFF8E8C8BFF8E8C8BFF8E8C8BFF8E8C8BFF8E8C
          8BFF8E8C8BFF8E8C8BFF8E8B8BFF8D8A89FF8B8886FFA5A3A1FFC6C5C3FFB2B0
          AEFF9E9B99FF7B7876EC0000002E0000000D0000000100000000000000000000
          00060000001F514F4EB0959290FFB0AEACFFBEBEBBFF9E9B9AFF8A8787FF8B89
          8BFF88898FFF86888FFF85868EFF85868DFF85868DFF85868DFF85868EFF8586
          8DFF85868DFF85868EFF86888FFF88898FFF8B898BFF8A8787FF9E9B9AFFBEBE
          BBFFB0AEACFF959290FF514F4EB1000000200000000600000000000000000000
          001010100F4C8E8B89FFAEABA9FFB6B4B2FF9D9B99FF8A8785FF8B8988FF8789
          8EFFE3981BFFEEB760FFECB45AFFEBB258FFEBB258FFEBB359FFECB45BFFEBB3
          59FFEBB358FFECB45AFFEEB760FFE3981BFF87898EFF8B8988FF8A8785FF9D9B
          99FFB6B4B2FFAEABA9FF8E8B89FF1110104D0000001000000000000000030000
          001B747270DDA4A2A0FFB1AEADFFA6A3A2FF888582FF8A8785FF8A8888FF8487
          90FFD98F10FFDDA341FFF6E4C6FFF5E2C1FFF5E2C1FFF5E4C4FFDB9F3AFFF5E4
          C4FFF5E3C2FFF6E4C6FFDDA341FFD98F10FF848790FF8A8888FF8A8785FF8885
          82FFA6A3A2FFB1AEADFFA4A2A0FF747270DD0000001B00000003000000090606
          0632908D8BFFB3B0AEFFA9A7A5FF8A8785FF878482FF898684FF888686FF8285
          8FFFD78903FFD69424FFD4911FFFD38F1DFFD38F1DFFD4901FFFD49121FFD490
          1FFFD48F1DFFD4911FFFD69424FFD78903FF82858FFF888686FF898684FF8784
          82FF8A8785FFA9A7A5FFB3B0AEFF908D8BFF0606063200000009000000113E3D
          3C8DA09D9BFFAEABAAFF979593FF858281FF878483FF878484FF878485FF8284
          8DFFD88200FFD48600FFD38500FFD38400FFD38400FFD38400FFD38500FFD384
          00FFD38400FFD38500FFD48600FFD88200FF82848DFF878485FF878484FF8784
          83FF858281FF979593FFAEABAAFFA09D9BFF3E3D3C8D00000011000000157673
          72DAAAA7A5FFA2A09FFF8A8886FF868381FF898583FF8A8784FF8A8786FF8887
          89FF85878EFF838791FF838791FF838691FF828690FF818590FF818590FF8286
          90FF838691FF838791FF838791FF85878EFF888789FF8A8786FF8A8785FF8A86
          84FF878482FF8B8987FFA2A09FFFAAA7A5FF767372DA00000015000000169491
          8FFFB5B2B1FF92908EFF858280FF878481FF686664FF565453FF575554FF5756
          56FF575656FF575657FF575657FF555455FF514F51FF4D4C4DFF4D4C4DFF514F
          51FF555455FF575657FF575657FF575656FF575656FF575554FF575554FF5654
          53FF6A6867FF868381FF92908EFFB5B2B1FF94918FFF00000016000000169592
          90FFB9B6B4FF878583FF827F7EFF666463FF4D4B4BFF504E4EFF555353FF5856
          56FF585657FF585657FF575555FF525050FF949393FFD6D7D7FFD6D7D7FF9493
          93FF525050FF575555FF585657FF585657FF585656FF555353FF504E4EFF4F4D
          4DFF504E4EFF848080FF878583FFB9B6B4FF959290FF00000016000000169592
          90FFC2BFBDFF7F7D7CFF837F7DFF484746FFDEDEDEFFDFDFDFFF4E4D4CFF5554
          53FF565554FF565554FF555452FF4D4C49FFD9D9D7FFCECECDFFCDCDCDFFD8D8
          D8FF4C4B4AFF545352FF565554FF565554FF555453FF4E4D4CFFDFE0E0FFDEDF
          DFFF494847FF83807EFF7F7D7CFFC2BFBDFF959290FF00000016000000169794
          92FFC7C4C4FF777473FF817E7CFF464544FFDFE0E0FFE0E0E0FF4B4A49FF5151
          50FF535251FF535250FF53524BFF4E4B3EFFE0DDD0FFD1D0CAFFCECECDFFD8D9
          D9FF494846FF51504FFF535251FF535251FF515150FF4B4A49FFE0E0E0FFDFE0
          E0FF464544FF817E7CFF777473FFC7C4C4FF979492FF00000016000000159895
          93FFD2D0CEFF6E6B6AFF807D7CFF494746FF484645FF494745FF4E4C4BFF514F
          4DFF514F4DFF535049FF57513EFF1435C7FF001AFFFFE0DED1FFDADAD8FF908F
          8FFF4B4847FF504E4DFF514F4EFF514F4EFF514F4DFF4E4C4BFF494745FF4846
          45FF494746FF807D7CFF6E6B6AFFD2D0CEFF989593FF00000015000000119996
          94FFD7D5D3FF6B6967FF7D7977FF565454FF4B4949FF4C4A4AFF4E4C4CFF4E4C
          4CFF504C48FF544E3EFF253DABFF002AFFFF1233C6FF494439FF454240FF4845
          45FF4C4A4AFF4E4C4CFF4E4C4CFF4E4C4CFF4E4C4CFF4E4C4CFF4C4A4AFF4B49
          49FF565454FF7D7977FF6B6967FFD7D5D3FF999694FF00000011000000097C7A
          78D6CECCCAFF7F7D7BFF726E6DFF666463FF484646FF4B4949FF4B4948FF4B48
          46FF4F4A3EFF2E408EFF002BFFFF293E9AFF514B39FF4B4843FF4A4747FF4A48
          48FF4B4949FF4B4949FF4A4848FF494747FF494747FF4A4848FF4B4949FF4846
          46FF666463FF726E6DFF7F7D7BFFCECCCAFF7C7A78D600000009000000034341
          417CBDBBB9FFACA9A8FF615E5DFF767372FF434141FF464444FF464341FF4540
          38FF373E5EFF002EFFFF323F7EFF4D4839FF4A4742FF484645FF484646FF4846
          46FF484646FF474545FF444242FF3F3D3DFF3F3D3DFF444242FF464444FF4341
          41FF767372FF615E5DFFACA9A8FFBDBBB9FF4341417C00000003000000000707
          071AA19E9CFFDFDEDDFF575454FF757271FF555454FF413F3FFF3F3C39FFDFE0
          E2FF1646FFFF363C5DFF484339FF474341FF454344FF454344FF454344FF4543
          44FF454344FF434142FF3C3A3BFFE3E3E3FFE3E3E3FF3B393AFF403E40FF5554
          54FF757271FF575454FFDFDEDDFFA19E9CFF0707071A00000000000000000000
          0006817F7DD6CECCCAFF9A9897FF585554FF767372FF3F3D3EFF3C3934FF456B
          FFFFE0E1E3FF3F3A33FF423F3EFF424040FF413F40FF403E3FFF403E3FFF413F
          40FF424041FF403E3FFF393638FFE3E4E4FFE3E3E3FF363435FF3F3D3EFF7673
          72FF585554FF9A9897FFCECCCAFF817F7DD60000000600000000000000000000
          000112121229A4A09EFFEDEDEAFF666362FF62605FFF6D6A68FF3C3B38FF3937
          31FF393733FF3C3B39FF3F3E3DFF3E3E3DFF3B3A3AFF353434FF353434FF3B3A
          3AFF3E3E3DFF3E3E3DFF3B3A3AFF353434FF333232FF393939FF6D6A68FF6260
          5FFF666362FFEDEDEAFFA4A09EFF121212290000000100000000000000000000
          0000000000035D5C5B9CBAB8B6FFE3E1E0FF4D4A4AFF64605FFF6C6866FF3938
          37FF383736FF3A3939FF3B3A3AFF3A3939FF323131FFE4E4E4FFE4E4E4FF3231
          31FF3A3939FF3B3A3AFF3A3939FF373636FF383738FF6B6866FF64605FFF4D4A
          4AFFE3E1E0FFBAB8B6FF5D5C5B9C000000030000000000000000000000000000
          00000000000000000005918D8CE7D3D2D0FFDCDBDAFF494746FF5E5A59FF726E
          6DFF4B494BFF333234FF353536FF353436FF2E2D2EFFE4E4E4FFE4E4E4FF2E2D
          2EFF353436FF353536FF333234FF4B494BFF726E6DFF5E5A59FF494746FFDCDB
          DAFFD3D2D0FF918D8CE700000005000000000000000000000000000000000000
          0000000000000000000000000005908D8BE5D6D6D5FFECEBECFF5E5C5CFF4947
          46FF6B6968FF6C6968FF565454FF414040FF2C2B2CFF262526FF262526FF2C2B
          2CFF414040FF565454FF6C6968FF6B6968FF494746FF5E5C5CFFECEBECFFD6D6
          D5FF908D8BE50000000500000000000000000000000000000000000000000000
          000000000000000000000000000000000005928F8EE6C1BFBDFFFFFFFFFF9F9E
          9EFF424040FF484645FF5C5857FF6A6665FF726E6DFF716E6DFF716E6DFF726E
          6DFF6A6665FF5C5857FF484645FF424040FF9F9E9EFFFFFFFFFFC1BFBDFF928F
          8EE6000000050000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000003615F5E99AAA8A6FFE4E2
          E3FFFFFFFEFFBBBAB9FF767675FF3E3D3CFF32302FFF33302FFF33302FFF3230
          2FFF3E3D3CFF767675FFBBBAB9FFFFFFFEFFE4E2E3FFAAA8A6FF615F5E990000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001141313238885
          83D3ACA9A7FFD3D1D0FFEEEDECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEEEDECFFD3D1D0FFACA9A7FF888583D314131323000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000707070E48474672868482D1A6A3A1FFA7A4A2FFA7A4A2FFA7A4A2FFA7A4
          A2FFA6A3A1FF868482D1484746720707070E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 656
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
    Left = 528
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
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'DarkSide'
    Left = 784
    Top = 65528
  end
end
