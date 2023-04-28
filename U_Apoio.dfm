object F_apoio_adm: TF_apoio_adm
  Left = 0
  Top = 0
  Caption = 'Apoio'
  ClientHeight = 517
  ClientWidth = 930
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 71
    Width = 930
    Height = 446
    Hint = 'Usuario Cadastro'
    ActivePage = Usuario
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 62
    ExplicitWidth = 924
    object Usuario: TTabSheet
      Caption = 'Usuario'
      object P_principal_usuario: TPanel
        Left = -3
        Top = 0
        Width = 922
        Height = 418
        Color = 8279083
        ParentBackground = False
        TabOrder = 0
        object Panel1: TPanel
          Left = 10
          Top = 341
          Width = 583
          Height = 42
          Color = 8279083
          ParentBackground = False
          TabOrder = 0
          object bt_inserir: TSpeedButton
            Left = 0
            Top = 4
            Width = 134
            Height = 32
            DisabledImageName = 'bt_inserir'
            Caption = 'Salvar'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = bt_inserirClick
          end
          object bt_alterar: TSpeedButton
            Left = 128
            Top = 6
            Width = 134
            Height = 32
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
            Left = 263
            Top = 4
            Width = 134
            Height = 32
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
            Left = 403
            Top = 6
            Width = 134
            Height = 32
            Caption = 'Cancelar'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel5: TPanel
          Left = 10
          Top = 10
          Width = 583
          Height = 329
          Color = 8279083
          ParentBackground = False
          TabOrder = 1
          object Label2: TLabel
            Left = 21
            Top = 57
            Width = 49
            Height = 15
            Caption = 'USUARIO'
            FocusControl = ed_usuario_in
          end
          object Label3: TLabel
            Left = 32
            Top = 193
            Width = 38
            Height = 15
            Caption = 'SENHA'
            FocusControl = ed_senha
          end
          object Label4: TLabel
            Left = 10
            Top = 120
            Width = 57
            Height = 15
            Caption = 'PERMISAO'
          end
          object bt_aletrar_senha: TSpeedButton
            Left = 76
            Top = 216
            Width = 98
            Height = 28
            Caption = 'Alterar Senha'
            Enabled = False
            OnClick = bt_aletrar_senhaClick
          end
          object bt_canecelar_alteracao_senha: TSpeedButton
            Left = 176
            Top = 216
            Width = 126
            Height = 28
            Caption = 'Cancelar'
            Enabled = False
            OnClick = bt_canecelar_alteracao_senhaClick
          end
          object ed_usuario_in: TcxDBTextEdit
            Left = 76
            Top = 52
            DataBinding.DataField = 'USUARIO'
            DataBinding.DataSource = ds_usuario
            TabOrder = 0
            OnExit = ed_usuario_inExit
            Width = 226
          end
          object ed_senha: TcxDBTextEdit
            Left = 76
            Top = 187
            DataBinding.DataField = 'SENHA'
            DataBinding.DataSource = ds_usuario
            TabOrder = 2
            OnExit = ed_senhaExit
            Width = 226
          end
          object p_ed_senha: TPanel
            Left = 382
            Top = 6
            Width = 185
            Height = 305
            Color = 8279083
            ParentBackground = False
            TabOrder = 3
            Visible = False
            object Label5: TLabel
              Left = 29
              Top = 41
              Width = 120
              Height = 25
              Caption = 'Alterar Senha'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 25
              Top = 105
              Width = 65
              Height = 15
              Caption = 'Nova senha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 25
              Top = 166
              Width = 95
              Height = 15
              Caption = 'Comfirmar senha:'
            end
            object verifica_senha_1_certo: TSpeedButton
              Left = 139
              Top = 100
              Width = 17
              Height = 20
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000090000
                000D0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
                000F0000000F00000010000000100000000F0000000A000000021D5A42C0287D
                5AFF277D5AFF277C5AFF277C59FF277B59FF277B58FF277A58FF267A58FF2678
                57FF267A56FF267856FF267755FF257756FF1B563DC1000000092B825FFF53C8
                A2FF51C7A0FF50C7A0FF4EC69FFF4DC59DFF4CC59DFF4AC49BFF49C39BFF47C3
                99FF45C298FF45C198FF43C096FF42C095FF277B59FF0000000D2C8664FF5DCC
                AAFF43C398FF42C299FF42C298FF43C298FF65CFADFF74D5B6FF4CC59DFF40C0
                95FF3EC095FF3EBF94FF3DBF94FF4BC49CFF297F5CFF0000000E2F8B68FF67D1
                B0FF48C69EFF48C59CFF47C59CFF5FCDABFF25825DFF00673BFF51BA96FF44C3
                9AFF43C399FF43C298FF42C298FF54C9A4FF2B8360FF0000000D31906DFF71D5
                B8FF4DC9A3FF4DC9A1FF60CFADFF3B9372FF87AF9DFFB1CFC1FF26875FFF53CA
                A5FF48C69EFF47C59DFF47C59DFF5DCEABFF2D8865FF0000000C339671FF7ADA
                BFFF52CCA7FF60D1AFFF4BA183FF699782FFF8F1EEFFF9F3EEFF357F5DFF5CBD
                9DFF4EC9A2FF4CC9A2FF4CC8A1FF67D2B2FF2F8C69FF0000000B359A76FF83DE
                C6FF59D0ADFF5AB094FF4F826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1C74
                4FFF69D5B4FF53CDA7FF52CCA6FF72D7B9FF32926EFF0000000B39A07CFF8CE2
                CBFF5FD4B3FF0D6742FFD2D2CBFF6A8F77FF136A43FF73967EFFF1E8E3FF72A2
                8BFF4CA384FF6AD9BAFF5AD2AFFF7BDBC0FF339773FF0000000A3AA681FF97E9
                D5FF69DEBFFF52BC9DFF0B6942FF389B79FF66DABAFF349773FF73967EFFF0EA
                E7FF4F886CFF60B89BFF67DABAFF87E2CAFF359C78FF000000093FAD88FF9FEC
                DAFF6DE1C3FF6DE1C3FF6DE0C2FF6CDFC1FF6BE0C1FF6BDFC0FF2C8966FF698E
                76FFE6E1DCFF176B47FF5FD1B2FF90E7D1FF3CA481FF0000000842B28DFFA5EE
                DDFF70E4C7FF70E4C6FF70E3C6FF6FE3C5FF6FE2C5FF6EE2C4FF6EE2C4FF3C9E
                7DFF1F6D4AFF2D8965FF6CE0C2FF97EAD6FF3DAA86FF0000000744B691FFAAEF
                E0FF73E6C9FF73E6C9FF72E5C9FF72E5C8FF71E5C8FF71E5C8FF71E4C7FF71E4
                C7FF64D3B5FF6DDFC2FF6FE3C6FF9EECDAFF41AF8BFF0000000746B994FFAEF1
                E2FF74E8CBFF74E7CBFF74E7CBFF74E7CAFF74E6CAFF73E6CAFF73E6CAFF73E6
                C9FF73E5C9FF72E5C9FF72E5C8FFA4EEDDFF42B38EFF0000000647BC97FFC5F4
                EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4
                EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFF44B792FF00000005348B70BF47BC
                97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BB97FF47BB
                97FF47BB96FF46BB96FF47BA95FF45BA94FF338A6EC000000003}
              Visible = False
            end
            object bt_verifica_senha_1_errado: TSpeedButton
              Left = 115
              Top = 104
              Width = 18
              Height = 17
              DisabledImageName = 'bt_verifica_senha_1_errado'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
                76E4120852AD06031B4D0000000E000000030000000000000000000000000000
                000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
                C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
                03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
                D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
                5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
                BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
                A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
                CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
                BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
                EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
                CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
                E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
                D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
                E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
                D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
                E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
                DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
                EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
                DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
                D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
                D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
                A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
                79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
                BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
                050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
                EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
                000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
                EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
                000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
                B5D040437D951212223000000004000000010000000000000000}
              Visible = False
            end
            object bt_confimra_senha_certo: TSpeedButton
              Left = 143
              Top = 163
              Width = 15
              Height = 18
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                00000000000000000002000000070000000C0000001000000012000000110000
                000E000000080000000200000000000000000000000000000000000000000000
                000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
                3AD20F2F21840001011500000005000000010000000000000000000000000000
                0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
                80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
                0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
                96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
                3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
                99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
                66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
                A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
                8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
                A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
                A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
                4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
                B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
                8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
                BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
                E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
                B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
                76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
                7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
                7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
                46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
                C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
                0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
                DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
                0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
                C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
                000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
                56B00E3226560000000600000002000000000000000000000000}
              Visible = False
            end
            object L_senha_errada: TLabel
              Left = 14
              Top = 216
              Width = 156
              Height = 15
              Caption = 'As senhas est'#227'o divergentes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object ed_nova_senha: TEdit
              Left = 21
              Top = 126
              Width = 145
              Height = 23
              TabOrder = 0
              OnChange = ed_nova_senhaChange
              OnExit = ed_nova_senhaExit
            end
            object ed_confirma_senha: TEdit
              Left = 21
              Top = 187
              Width = 145
              Height = 23
              ImeName = 'Portuguese (Brazilian ABNT)'
              TabOrder = 1
              OnChange = ed_confirma_senhaChange
              OnExit = ed_confirma_senhaExit
            end
            object Panel4: TPanel
              Left = 0
              Top = 267
              Width = 185
              Height = 38
              Color = 8279083
              ParentBackground = False
              TabOrder = 2
              object SpeedButton6: TSpeedButton
                Left = 2
                Top = 0
                Width = 88
                Height = 40
                Caption = 'Salvar'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = SpeedButton6Click
              end
              object SpeedButton7: TSpeedButton
                Left = 95
                Top = 0
                Width = 88
                Height = 40
                Caption = 'Cancelar'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = SpeedButton7Click
              end
            end
          end
          object CBBOX1: TComboBox
            Left = 73
            Top = 115
            Width = 226
            Height = 23
            TabOrder = 1
            Text = 'SELECIONAR'
            Items.Strings = (
              'ADM'
              'REGULAR')
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 930
    Height = 65
    Align = alTop
    Color = 8279083
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 924
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 43
      Height = 15
      Caption = 'Usuario:'
    end
    object SpeedButton1: TSpeedButton
      Left = 159
      Top = 29
      Width = 23
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
    object ed_usuario: TEdit
      Left = 24
      Top = 29
      Width = 129
      Height = 23
      TabStop = False
      TabOrder = 0
      OnChange = ed_usuarioChange
      OnExit = ed_usuarioExit
    end
  end
  object sql_usuario: TFDQuery
    ChangeAlertName = 'sql_usuario'
    Connection = F_principal.FDConnection1
    SQL.Strings = (
      'SELECT * FROM USUARIOS'
      ' WHERE USUARIO = :USUARIO'
      '   ')
    Left = 228
    Top = 18
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object sql_usuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 50
    end
    object sql_usuarioSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      EditMask = '************'
      Size = 50
    end
    object sql_usuarioPERMISAO: TStringField
      FieldName = 'PERMISAO'
      Origin = 'PERMISAO'
      Required = True
      FixedChar = True
      Size = 7
    end
  end
  object ds_usuario: TDataSource
    DataSet = sql_usuario
    Left = 288
    Top = 16
  end
end
