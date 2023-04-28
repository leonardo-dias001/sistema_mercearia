object F_fornecedor: TF_fornecedor
  Left = 0
  Top = 0
  Caption = 'Fornecedores'
  ClientHeight = 369
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object Label2: TLabel
    Left = 8
    Top = 88
    Width = 41
    Height = 15
    Caption = 'CIDADE'
    FocusControl = ed_cidade
  end
  object Label3: TLabel
    Left = 304
    Top = 143
    Width = 54
    Height = 15
    Caption = 'TELEFONE'
    FocusControl = ed_telefone
  end
  object Label4: TLabel
    Left = 8
    Top = 148
    Width = 63
    Height = 15
    Caption = 'DESCRICAO'
    FocusControl = ed_descricao
  end
  object Label5: TLabel
    Left = 8
    Top = 208
    Width = 123
    Height = 15
    Caption = 'PRODUTO_FORNECIDO'
    FocusControl = cxDBTextEdit4
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 693
    Height = 57
    Align = alTop
    Color = 8279083
    ParentBackground = False
    TabOrder = 4
    ExplicitWidth = 687
    object Label1: TLabel
      Left = 20
      Top = 5
      Width = 90
      Height = 15
      Caption = 'Cod fornecedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton5: TSpeedButton
      Left = 120
      Top = 27
      Width = 18
      Height = 20
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
        00000000000100000004000000090000000D0000000F0000000F0000000C0000
        00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
        0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
        1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
        02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
        50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
        3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
        C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
        7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
        88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
        C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
        87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
        F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
        A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
        FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
        A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
        F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
        92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
        D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
        6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
        A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
        84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
        4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
        F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
        020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
        A2FC62504B900404031000000002000000000000000000000000000000000000
        000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
        1F3E000000060000000100000000000000000000000000000000}
    end
    object ed_cod_fornecedor: TEdit
      Left = 18
      Top = 26
      Width = 94
      Height = 23
      TabStop = False
      ImeName = 'ed_cod_fornecedor'
      TabOrder = 0
      OnChange = ed_cod_fornecedorChange
      OnExit = ed_cod_fornecedorExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 320
    Width = 693
    Height = 49
    Align = alBottom
    Color = 8279083
    ParentBackground = False
    TabOrder = 5
    ExplicitTop = 311
    ExplicitWidth = 687
    object bt_cadastrar: TSpeedButton
      Left = 0
      Top = 0
      Width = 145
      Height = 49
      Caption = 'Cadastrar'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = bt_cadastrarClick
    end
    object bt_alterar: TSpeedButton
      Left = 149
      Top = 0
      Width = 137
      Height = 49
      Caption = 'Alterar'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = bt_alterarClick
    end
    object bt_deletar: TSpeedButton
      Left = 292
      Top = 3
      Width = 133
      Height = 42
      Caption = 'Deletar'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = bt_deletarClick
    end
    object bt_cancelar: TSpeedButton
      Left = 429
      Top = 0
      Width = 118
      Height = 49
      Caption = 'Cancelar'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = bt_cancelarClick
    end
  end
  object ed_cidade: TcxDBTextEdit
    Left = 8
    Top = 104
    DataBinding.DataField = 'CIDADE'
    DataBinding.DataSource = ds_fornecedor
    TabOrder = 0
    OnExit = ed_cidadeExit
    Width = 465
  end
  object ed_telefone: TcxDBTextEdit
    Left = 304
    Top = 164
    DataBinding.DataField = 'TELEFONE'
    DataBinding.DataSource = ds_fornecedor
    TabOrder = 2
    OnExit = ed_telefoneExit
    Width = 169
  end
  object ed_descricao: TcxDBTextEdit
    Left = 8
    Top = 164
    DataBinding.DataField = 'DESCRICAO'
    DataBinding.DataSource = ds_fornecedor
    TabOrder = 1
    OnExit = ed_descricaoExit
    Width = 290
  end
  object cxDBTextEdit4: TcxDBTextEdit
    Left = 8
    Top = 229
    DataBinding.DataField = 'PRODUTO_FORNECIDO'
    DataBinding.DataSource = ds_fornecedor
    TabOrder = 3
    OnExit = cxDBTextEdit4Exit
    Width = 290
  end
  object SQL_FORNECEDOR: TFDQuery
    Connection = F_principal.FDConnection1
    SQL.Strings = (
      'SELECT *'
      '  FROM FORNECEDOR'
      'WHERE COD_FORNECEDOR = :COD_FORNECEDOR')
    Left = 520
    Top = 176
    ParamData = <
      item
        Name = 'COD_FORNECEDOR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object SQL_FORNECEDORCOD_FORNECEDOR: TFDAutoIncField
      FieldName = 'COD_FORNECEDOR'
      Origin = 'COD_FORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_FORNECEDORCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object SQL_FORNECEDORTELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object SQL_FORNECEDORDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object SQL_FORNECEDORPRODUTO_FORNECIDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_FORNECIDO'
      Origin = 'PRODUTO_FORNECIDO'
      OnChange = SQL_FORNECEDORPRODUTO_FORNECIDOChange
      Size = 50
    end
  end
  object ds_fornecedor: TDataSource
    DataSet = SQL_FORNECEDOR
    Left = 520
    Top = 224
  end
end
