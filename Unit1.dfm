object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'FFMPEG loudness front end'
  ClientHeight = 818
  ClientWidth = 1046
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 401
    Height = 799
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 753
    object Label11: TLabel
      Left = 8
      Top = 770
      Width = 111
      Height = 13
      Cursor = crHandPoint
      Caption = 'Hens Zimmerman Audio'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      OnClick = Label11Click
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 385
      Height = 137
      Caption = 'Generic'
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 67
        Height = 13
        Caption = 'Input (*.wav)'
      end
      object Label2: TLabel
        Left = 16
        Top = 51
        Width = 80
        Height = 13
        Caption = 'Loudness (LUFS)'
      end
      object Label3: TLabel
        Left = 16
        Top = 78
        Width = 83
        Height = 13
        Caption = 'True peak (dBTP)'
      end
      object Label4: TLabel
        Left = 16
        Top = 105
        Width = 99
        Height = 13
        Caption = 'Loudness range (LU)'
      end
      object InputSpeedButton: TSpeedButton
        Left = 357
        Top = 20
        Width = 23
        Height = 22
        Caption = '...'
        Flat = True
        OnClick = InputSpeedButtonClick
      end
      object InputEdit: TEdit
        Left = 128
        Top = 21
        Width = 225
        Height = 21
        TabStop = False
        TabOrder = 0
      end
      object LoudnessEdit: TEdit
        Left = 128
        Top = 48
        Width = 225
        Height = 21
        BiDiMode = bdLeftToRight
        NumbersOnly = True
        ParentBiDiMode = False
        TabOrder = 1
        Text = '-23'
      end
      object TruePeakEdit: TEdit
        Left = 128
        Top = 75
        Width = 225
        Height = 21
        BiDiMode = bdLeftToRight
        NumbersOnly = True
        ParentBiDiMode = False
        TabOrder = 2
        Text = '-2'
      end
      object LoudnessRangeEdit: TEdit
        Left = 128
        Top = 102
        Width = 225
        Height = 21
        BiDiMode = bdLeftToRight
        NumbersOnly = True
        ParentBiDiMode = False
        TabOrder = 3
        Text = '20'
      end
      object LoudnessUpDown: TUpDown
        Left = 353
        Top = 48
        Width = 16
        Height = 21
        Associate = LoudnessEdit
        Min = -70
        Max = -5
        Position = -23
        TabOrder = 4
      end
      object TruePeakUpDown: TUpDown
        Left = 353
        Top = 75
        Width = 16
        Height = 21
        Associate = TruePeakEdit
        Min = -9
        Max = 0
        Position = -2
        TabOrder = 5
      end
      object LoudnessRangeUpDown: TUpDown
        Left = 353
        Top = 102
        Width = 16
        Height = 21
        Associate = LoudnessRangeEdit
        Min = 1
        Max = 20
        Position = 20
        TabOrder = 6
      end
    end
    object ProcessingModeRadioGroup: TRadioGroup
      Left = 8
      Top = 151
      Width = 385
      Height = 146
      Caption = 'Processing mode'
      ItemIndex = 1
      Items.Strings = (
        'Read only (1 pass)'
        'Dynamic (1 pass)'
        'Linear (2 pass)'
        'Dynamic audio normalizer (3 pass)')
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 303
      Width = 385
      Height = 266
      Caption = 'Dynamic processing parameters'
      TabOrder = 3
      object Label5: TLabel
        Left = 16
        Top = 27
        Width = 63
        Height = 13
        Caption = 'Frame length'
      end
      object Label6: TLabel
        Left = 16
        Top = 54
        Width = 75
        Height = 13
        Caption = 'Gauss filter size'
      end
      object Label7: TLabel
        Left = 16
        Top = 81
        Width = 58
        Height = 13
        Caption = 'Target peak'
      end
      object Label8: TLabel
        Left = 16
        Top = 108
        Width = 75
        Height = 13
        Caption = 'Max gain factor'
      end
      object Label9: TLabel
        Left = 16
        Top = 135
        Width = 56
        Height = 13
        Caption = 'Target RMS'
      end
      object Label10: TLabel
        Left = 16
        Top = 162
        Width = 79
        Height = 13
        Caption = 'Compress factor'
      end
      object FrameLengthEdit: TEdit
        Left = 128
        Top = 24
        Width = 225
        Height = 21
        BiDiMode = bdLeftToRight
        NumbersOnly = True
        ParentBiDiMode = False
        TabOrder = 0
        Text = '500'
      end
      object Edit6: TEdit
        Left = 128
        Top = 51
        Width = 225
        Height = 21
        BiDiMode = bdLeftToRight
        NumbersOnly = True
        ParentBiDiMode = False
        TabOrder = 1
        Text = '31'
      end
      object Edit7: TEdit
        Left = 128
        Top = 78
        Width = 225
        Height = 21
        BiDiMode = bdLeftToRight
        NumbersOnly = True
        ParentBiDiMode = False
        TabOrder = 2
        Text = '95'
      end
      object Edit8: TEdit
        Left = 128
        Top = 105
        Width = 225
        Height = 21
        BiDiMode = bdLeftToRight
        NumbersOnly = True
        ParentBiDiMode = False
        TabOrder = 3
        Text = '10'
      end
      object Edit9: TEdit
        Left = 128
        Top = 132
        Width = 225
        Height = 21
        BiDiMode = bdLeftToRight
        NumbersOnly = True
        ParentBiDiMode = False
        TabOrder = 4
        Text = '0'
      end
      object Edit10: TEdit
        Left = 128
        Top = 159
        Width = 225
        Height = 21
        BiDiMode = bdLeftToRight
        NumbersOnly = True
        ParentBiDiMode = False
        TabOrder = 5
        Text = '0'
      end
      object FrameLengthUpDown: TUpDown
        Left = 353
        Top = 24
        Width = 16
        Height = 21
        Associate = FrameLengthEdit
        Min = 10
        Max = 8000
        Position = 500
        TabOrder = 6
      end
      object GaussFilterUpDown: TUpDown
        Left = 353
        Top = 51
        Width = 16
        Height = 21
        Associate = Edit6
        Min = 3
        Max = 301
        Position = 31
        TabOrder = 7
      end
      object TargetPeakUpDown: TUpDown
        Left = 353
        Top = 78
        Width = 16
        Height = 21
        Associate = Edit7
        Position = 95
        TabOrder = 8
      end
      object MaxGainUpDown: TUpDown
        Left = 353
        Top = 105
        Width = 16
        Height = 21
        Associate = Edit8
        Min = 1
        Position = 10
        TabOrder = 9
      end
      object TargetRMSUpDown: TUpDown
        Left = 353
        Top = 132
        Width = 16
        Height = 21
        Associate = Edit9
        TabOrder = 10
      end
      object CompressFactorUpDown: TUpDown
        Left = 353
        Top = 159
        Width = 16
        Height = 21
        Associate = Edit10
        Max = 30
        TabOrder = 11
      end
      object DCBiasCorrectionCheckBox: TCheckBox
        Left = 16
        Top = 214
        Width = 129
        Height = 17
        Caption = 'DC bias correction'
        TabOrder = 12
      end
      object ChannelCouplingCheckBox: TCheckBox
        Left = 16
        Top = 191
        Width = 97
        Height = 17
        Caption = 'Channel coupling'
        Checked = True
        State = cbChecked
        TabOrder = 13
      end
      object AlternativeBoundaryModeCheckBox: TCheckBox
        Left = 16
        Top = 237
        Width = 185
        Height = 17
        Caption = 'Alternative boundary mode'
        TabOrder = 14
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 575
      Width = 385
      Height = 150
      Caption = 'Presets'
      TabOrder = 4
      object SavePresetButton: TButton
        Left = 14
        Top = 64
        Width = 99
        Height = 25
        Caption = 'Save...'
        TabOrder = 0
        OnClick = SavePresetButtonClick
      end
      object PresetMemo: TMemo
        Left = 126
        Top = 64
        Width = 225
        Height = 65
        Lines.Strings = (
          'Your description goes here')
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object PresetsComboBox: TComboBox
        Left = 14
        Top = 32
        Width = 337
        Height = 21
        Style = csDropDownList
        TabOrder = 2
      end
    end
    object DoBitBtn: TBitBtn
      Left = 8
      Top = 735
      Width = 385
      Height = 25
      Caption = 'Process'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 2
      OnClick = DoBitBtnClick
    end
  end
  object OutputMemo: TMemo
    Left = 401
    Top = 0
    Width = 645
    Height = 799
    Align = alClient
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitHeight = 753
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 799
    Width = 1046
    Height = 19
    Panels = <>
    SimplePanel = True
    ExplicitTop = 753
  end
  object InputOpenDialog: TOpenDialog
    DefaultExt = 'wav'
    Filter = 'WAV (*.wav)|*.wav'
    Left = 448
    Top = 696
  end
end
