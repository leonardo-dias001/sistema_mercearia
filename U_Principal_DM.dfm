object F_principal: TF_principal
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 393
  ClientWidth = 485
  Color = 1508629
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 192
    Top = 136
    Width = 95
    Height = 32
    Caption = 'Usuario:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 208
    Top = 232
    Width = 68
    Height = 32
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 485
    Height = 65
    Align = alTop
    Caption = 'Login'
    Color = 16746773
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 481
  end
  object Panel2: TPanel
    Left = 0
    Top = 327
    Width = 485
    Height = 66
    Align = alBottom
    Color = 16746773
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 326
    ExplicitWidth = 481
    object bt_login: TSpeedButton
      Left = 4
      Top = 0
      Width = 231
      Height = 61
      Caption = 'LOGIN'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = bt_loginClick
    end
    object bt_cancelar: TSpeedButton
      Left = 231
      Top = 3
      Width = 257
      Height = 59
      Caption = 'CANCELAR'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = bt_cancelarClick
    end
  end
  object ed_usuario: TEdit
    Left = 112
    Top = 174
    Width = 257
    Height = 23
    TabOrder = 2
    OnChange = ed_usuarioChange
  end
  object ed_senha: TEdit
    Left = 112
    Top = 270
    Width = 257
    Height = 23
    TabOrder = 3
    OnChange = ed_senhaChange
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=lddados'
      'User_Name= leonardo2'
      'Password=sistema2395@'
      'Server=lddados.mysql.uhserver.com'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 88
  end
  object sql_verifica_usuarios: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM USUARIOS'
      ' WHERE USUARIO = :USUARIO'
      '   AND SENHA   = :SENHA')
    Left = 40
    Top = 160
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDConnection2: TFDConnection
    Left = 384
    Top = 88
  end
end
