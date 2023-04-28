object F_estoque: TF_estoque
  Left = 0
  Top = 0
  Caption = 'Estoque'
  ClientHeight = 633
  ClientWidth = 1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 31
    Width = 1100
    Height = 602
    ActivePage = iten
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 22
    ExplicitWidth = 1094
    object iten: TTabSheet
      Caption = 'Item Cadastro'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1092
        Height = 69
        Align = alTop
        Color = 8279083
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 1086
        object Label1: TLabel
          Left = 13
          Top = 8
          Width = 52
          Height = 17
          Caption = 'Cod iten'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ed_pesquisa_cod_item: TEdit
          Left = 13
          Top = 31
          Width = 121
          Height = 23
          ImeName = 'ED_PESQUISA_COD_ITEM'
          TabOrder = 0
          OnExit = ed_pesquisa_cod_itemExit
        end
      end
      object Panel6: TPanel
        Left = -1
        Top = 75
        Width = 621
        Height = 494
        Color = 8279083
        ParentBackground = False
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 446
          Top = 121
          Width = 18
          Height = 22
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000023232394353535E01A1A1A7000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000001E1E1E813C3C3CFF3C3C3CFF353535E000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2323239400000000000000000000
            0000000000000000000000000000000000000000000000000000000000001E1E
            1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
            0000000000011616165C282828AB363636E6363636E6282828AB292929AE3C3C
            3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
            00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000001616
            165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F3C3C3CFF3C3C
            3CFF292929AD0000000000000000000000000000000000000000000000002828
            28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
            3CFF282828AB0000000000000000000000000000000000000000000000003636
            36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
            3CFF363636E60000000000000000000000000000000000000000000000003636
            36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
            3CFF363636E60000000000000000000000000000000000000000000000002828
            28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
            3CFF282828AB0000000000000000000000000000000000000000000000001616
            165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F363636E53C3C
            3CFF1616165C0000000000000000000000000000000000000000000000000000
            00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
            1E80000000010000000000000000000000000000000000000000000000000000
            0000000000011616165C282828AB363636E6363636E6282828AB1616165C0000
            0001000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
        end
        object Label4: TLabel
          Left = 32
          Top = 24
          Width = 78
          Height = 15
          Caption = 'Descri'#231#227'o item'
          FocusControl = ed_descricao_item
        end
        object Label5: TLabel
          Left = 32
          Top = 99
          Width = 68
          Height = 15
          Caption = 'Tipo estoque'
        end
        object Label6: TLabel
          Left = 32
          Top = 179
          Width = 66
          Height = 15
          Caption = 'Link compra'
          FocusControl = cxDBTextEdit2
        end
        object ed_descricao_item: TcxDBTextEdit
          Left = 32
          Top = 45
          DataBinding.DataField = 'DS_ITEM'
          DataBinding.DataSource = ds_item
          TabOrder = 0
          Width = 432
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 32
          Top = 200
          DataBinding.DataField = 'LINK_COMPRA'
          DataBinding.DataSource = ds_item
          TabOrder = 2
          Width = 408
        end
        object ed_cod_tipo_estoque: TcxDBTextEdit
          Left = 32
          Top = 120
          DataBinding.DataField = 'COD_TIPO_ESTOQUE'
          DataBinding.DataSource = ds_item
          TabOrder = 1
          OnExit = ed_cod_tipo_estoqueExit
          Width = 89
        end
        object ed_tipo_estoque: TEdit
          Left = 127
          Top = 120
          Width = 313
          Height = 23
          TabStop = False
          TabOrder = 3
        end
        object Panel7: TPanel
          Left = 1
          Top = 453
          Width = 619
          Height = 40
          Align = alBottom
          TabOrder = 4
          object bt_novo_confirmar: TSpeedButton
            Left = 6
            Top = 5
            Width = 114
            Height = 33
            Caption = 'Novo'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = bt_novo_confirmarClick
          end
          object bt_alterar_item: TSpeedButton
            Left = 126
            Top = 1
            Width = 144
            Height = 37
            Caption = 'Alterar'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = bt_alterar_itemClick
          end
          object bt_deletar_item: TSpeedButton
            Left = 272
            Top = 1
            Width = 144
            Height = 37
            Caption = 'Deletar'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = bt_deletar_itemClick
          end
          object bt_cancelar_item: TSpeedButton
            Left = 416
            Top = 1
            Width = 144
            Height = 37
            Caption = 'Cancelar'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = bt_cancelar_itemClick
          end
        end
      end
      object Panel8: TPanel
        Left = 616
        Top = 75
        Width = 473
        Height = 494
        Color = 8279083
        ParentBackground = False
        TabOrder = 2
        object Label7: TLabel
          Left = 10
          Top = 8
          Width = 46
          Height = 15
          Caption = 'pesquisa'
        end
        object Label8: TLabel
          Left = 17
          Top = 40
          Width = 86
          Height = 15
          Caption = 'Descri'#231#227'o item:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 176
          Top = 152
          Width = 45
          Height = 15
          Caption = 'DS_ITEM'
        end
        object db_item_pesquisa: TDBGrid
          Left = 7
          Top = 65
          Width = 447
          Height = 416
          TabStop = False
          DataSource = DS_PESQUISA_ITEM
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnCellClick = db_item_pesquisaCellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_ITEM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DS_ITEM'
              Title.Caption = 'DESCRICAO'
              Width = 331
              Visible = True
            end>
        end
        object ed_pesquisa_item: TEdit
          Left = 111
          Top = 36
          Width = 346
          Height = 23
          TabStop = False
          TabOrder = 1
          OnChange = ed_pesquisa_itemChange
        end
      end
    end
    object Tipo_estoque: TTabSheet
      Caption = 'Tipo_estoque'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 3
        Width = 605
        Height = 566
        Color = 8279083
        ParentBackground = False
        TabOrder = 0
        object Label2: TLabel
          Left = 32
          Top = 96
          Width = 98
          Height = 15
          Caption = 'DS_TIPO_ESTOQUE'
          FocusControl = ed_ds_tipo_estoque
        end
        object Label3: TLabel
          Left = 152
          Top = 271
          Width = 246
          Height = 31
          Caption = 'Lista de tipo de estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -23
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object ed_ds_tipo_estoque: TcxDBTextEdit
          Left = 32
          Top = 117
          DataBinding.DataField = 'DS_TIPO_ESTOQUE'
          DataBinding.DataSource = ds_sql_estoque_tipo
          TabOrder = 0
          Width = 333
        end
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 603
          Height = 57
          Align = alTop
          TabOrder = 1
          object ed_estoque_tipo: TLabel
            Left = 11
            Top = 6
            Width = 94
            Height = 15
            Caption = 'Cod tipo estoque:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object ed_cod_tipo: TEdit
            Left = 27
            Top = 27
            Width = 102
            Height = 23
            TabOrder = 0
            OnExit = ed_cod_tipoExit
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 224
          Width = 614
          Height = 41
          Color = 8279083
          ParentBackground = False
          TabOrder = 2
          object bt_cadastrar: TSpeedButton
            Left = 120
            Top = -1
            Width = 121
            Height = 42
            Caption = 'Cadastrar'
            Enabled = False
            Flat = True
            OnClick = bt_cadastrarClick
          end
          object bt_novo: TSpeedButton
            Left = 0
            Top = 0
            Width = 114
            Height = 41
            Caption = 'Novo'
            Flat = True
            OnClick = bt_novoClick
          end
          object bt_deletar: TSpeedButton
            Left = 344
            Top = 1
            Width = 118
            Height = 40
            Caption = 'Deletar'
            Enabled = False
            Flat = True
            OnClick = bt_deletarClick
          end
          object bt_alterar: TSpeedButton
            Left = 224
            Top = 2
            Width = 114
            Height = 37
            Caption = 'Alterar'
            Enabled = False
            Flat = True
            OnClick = bt_alterarClick
          end
          object bt_cancelar: TSpeedButton
            Left = 463
            Top = 4
            Width = 111
            Height = 37
            Caption = 'Cancelar'
            Flat = True
            OnClick = bt_cancelarClick
          end
        end
        object DBGrid1: TDBGrid
          Left = 32
          Top = 308
          Width = 516
          Height = 209
          DataSource = ds_sql_estoque_tipo
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
    end
    object item_recebimento: TTabSheet
      Caption = 'Recebimento de item'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1100
    Height = 25
    Align = alTop
    Color = 8279083
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 1094
  end
  object SQL_ESTOQUE_TIPO: TFDQuery
    Connection = F_principal.FDConnection1
    SQL.Strings = (
      'SELECT * FROM ESTOQUE_TIPO'
      ' WHERE COD_TIPO_ESTOQUE = :COD_TIPO_ESTOQUE')
    Left = 612
    Top = 57
    ParamData = <
      item
        Name = 'COD_TIPO_ESTOQUE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object SQL_ESTOQUE_TIPOCOD_TIPO_ESTOQUE: TFDAutoIncField
      DisplayWidth = 21
      FieldName = 'COD_TIPO_ESTOQUE'
      Origin = 'COD_TIPO_ESTOQUE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_ESTOQUE_TIPODS_TIPO_ESTOQUE: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 60
      FieldName = 'DS_TIPO_ESTOQUE'
      Origin = 'DS_TIPO_ESTOQUE'
      Size = 50
    end
  end
  object ds_sql_estoque_tipo: TDataSource
    DataSet = SQL_ESTOQUE_TIPO
    Left = 656
    Top = 56
  end
  object sql_item: TFDQuery
    AfterInsert = sql_itemAfterInsert
    AfterEdit = sql_itemAfterEdit
    Connection = F_principal.FDConnection1
    SQL.Strings = (
      'SELECT * FROM ITEM_MATERIA_PRIMA'
      ' WHERE COD_ITEM = :COD_ITEM')
    Left = 612
    Top = 9
    ParamData = <
      item
        Name = 'COD_ITEM'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object sql_itemDS_ITEM: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 71
      FieldName = 'DS_ITEM'
      Origin = 'DS_ITEM'
      Size = 50
    end
    object sql_itemCOD_TIPO_ESTOQUE: TIntegerField
      AutoGenerateValue = arDefault
      DisplayWidth = 25
      FieldName = 'COD_TIPO_ESTOQUE'
      Origin = 'COD_TIPO_ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object sql_itemLINK_COMPRA: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 50
      FieldName = 'LINK_COMPRA'
      Origin = 'LINK_COMPRA'
      Size = 50
    end
    object sql_itemCOD_ITEM: TFDAutoIncField
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object ds_item: TDataSource
    DataSet = sql_item
    Left = 656
    Top = 8
  end
  object sql_aux: TFDQuery
    Connection = F_principal.FDConnection1
    SQL.Strings = (
      'SELECT * FROM ESTOQUE_TIPO')
    Left = 580
    Top = 249
    object sql_auxCOD_TIPO_ESTOQUE: TFDAutoIncField
      FieldName = 'COD_TIPO_ESTOQUE'
      Origin = 'COD_TIPO_ESTOQUE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_auxDS_TIPO_ESTOQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DS_TIPO_ESTOQUE'
      Origin = 'DS_TIPO_ESTOQUE'
      Size = 50
    end
  end
  object SQL_PESQUISA_ITEM: TFDQuery
    Connection = F_principal.FDConnection1
    SQL.Strings = (
      'SELECT * FROM ITEM_MATERIA_PRIMA'
      '')
    Left = 1013
    Top = 232
    object SQL_PESQUISA_ITEMCOD_ITEM: TFDAutoIncField
      FieldName = 'COD_ITEM'
      Origin = 'COD_ITEM'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_PESQUISA_ITEMDS_ITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DS_ITEM'
      Origin = 'DS_ITEM'
      Size = 50
    end
    object SQL_PESQUISA_ITEMCOD_TIPO_ESTOQUE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_TIPO_ESTOQUE'
      Origin = 'COD_TIPO_ESTOQUE'
    end
    object SQL_PESQUISA_ITEMLINK_COMPRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LINK_COMPRA'
      Origin = 'LINK_COMPRA'
      Size = 50
    end
  end
  object DS_PESQUISA_ITEM: TDataSource
    DataSet = SQL_PESQUISA_ITEM
    Left = 1040
    Top = 232
  end
  object SQL_VERIFICA_ITEM_ESTOQUE: TFDQuery
    Connection = F_principal.FDConnection1
    SQL.Strings = (
      'SELECT * FROM ESTOQUE_ITEM_MATERIA_PRIMA'
      ' WHERE COD_ITEM = :COD_ITEM ')
    Left = 579
    Top = 372
    ParamData = <
      item
        Name = 'COD_ITEM'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
