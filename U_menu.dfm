object F_menu: TF_menu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 545
  ClientWidth = 867
  Color = 8279083
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 519
    Width = 867
    Height = 26
    Align = alBottom
    Color = 8279083
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 510
    ExplicitWidth = 861
    object lb_usuario: TLabel
      Left = 42
      Top = 3
      Width = 40
      Height = 15
      Caption = 'usuario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 867
    Height = 23
    Align = alTop
    Color = 8279083
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 861
    object bt_apoio: TSpeedButton
      Left = -4
      Top = 0
      Width = 99
      Height = 22
      Caption = 'Apoio'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = bt_apoioClick
    end
    object SpeedButton1: TSpeedButton
      Left = 96
      Top = 0
      Width = 78
      Height = 22
      Caption = 'Estoque'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 180
      Top = 1
      Width = 79
      Height = 22
      Caption = 'Fornecedor'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
    end
  end
end
