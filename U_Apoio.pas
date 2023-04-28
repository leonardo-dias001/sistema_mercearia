unit U_Apoio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit;

type
  TF_apoio_adm = class(TForm)
    PageControl1: TPageControl;
    Panel2: TPanel;
    Usuario: TTabSheet;
    ed_usuario: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    sql_usuario: TFDQuery;
    sql_usuarioUSUARIO: TStringField;
    sql_usuarioSENHA: TStringField;
    sql_usuarioPERMISAO: TStringField;
    ds_usuario: TDataSource;
    P_principal_usuario: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    ed_usuario_in: TcxDBTextEdit;
    Label3: TLabel;
    ed_senha: TcxDBTextEdit;
    Label4: TLabel;
    bt_aletrar_senha: TSpeedButton;
    bt_canecelar_alteracao_senha: TSpeedButton;
    p_ed_senha: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ed_nova_senha: TEdit;
    ed_confirma_senha: TEdit;
    Panel4: TPanel;
    verifica_senha_1_certo: TSpeedButton;
    bt_verifica_senha_1_errado: TSpeedButton;
    bt_confimra_senha_certo: TSpeedButton;
    L_senha_errada: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    bt_inserir: TSpeedButton;
    bt_alterar: TSpeedButton;
    bt_deletar: TSpeedButton;
    bt_cancelar: TSpeedButton;
    CBBOX1: TComboBox;
    procedure bt_aletrar_senhaClick(Sender: TObject);
    procedure ed_nova_senhaChange(Sender: TObject);
    procedure ed_nova_senhaExit(Sender: TObject);
    procedure ed_confirma_senhaChange(Sender: TObject);
    procedure ed_confirma_senhaExit(Sender: TObject);
    procedure ed_usuarioExit(Sender: TObject);
    procedure bt_inserirClick(Sender: TObject);
    procedure bt_alterarClick(Sender: TObject);
    procedure bt_deletarClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ed_usuarioChange(Sender: TObject);
    procedure bt_canecelar_alteracao_senhaClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ed_usuario_inExit(Sender: TObject);
    procedure ed_senhaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_apoio_adm: TF_apoio_adm;

implementation

{$R *.dfm}

uses U_menu, U_Principal_DM;

procedure TF_apoio_adm.bt_aletrar_senhaClick(Sender: TObject);
begin

  //DESABILITA OS BOTOES PADDROES
  bt_alterar.Enabled  := False;
  bt_inserir.Enabled  := False;
  bt_cancelar.Enabled := False;

  //HABILITA VISIBILITADE DO PAINEL ED_SENHAS
  p_ed_senha.Visible := True;
  ed_nova_senha.SetFocus;
  bt_canecelar_alteracao_senha.Enabled := True;

  //FAZ UPDATE



end;

procedure TF_apoio_adm.bt_alterarClick(Sender: TObject);
begin
  sql_usuario.Edit;
  bt_inserir.Enabled := True;
  ed_usuario_in.SetFocus;
end;

procedure TF_apoio_adm.bt_canecelar_alteracao_senhaClick(Sender: TObject);
begin
 // ed_nova_senha.Text := '1234';
  sql_usuario.Cancel;
  p_ed_senha.Visible := False;
  bt_alterar.Enabled := True;
  bt_canecelar_alteracao_senha.Enabled := False;
end;

procedure TF_apoio_adm.bt_deletarClick(Sender: TObject);
begin
  if MessageBox(Handle, 'Você realmente deseja deletar?', 'Confirmação', MB_YESNO or MB_ICONQUESTION) = IDYES then
  begin
    try
     sql_usuario.Delete;
     bt_deletar.Enabled := False;
     bt_inserir.Enabled := False;
     bt_alterar.Enabled := False;
     ShowMessage('Usuario deletado.');

    except
      sql_usuario.Cancel;
    end;
  end;
end;

procedure TF_apoio_adm.bt_inserirClick(Sender: TObject);
begin
   if MessageBox(Handle, 'Você realmente deseja inserir?', 'Confirmação', MB_YESNO or MB_ICONQUESTION) = IDYES then
    begin
     try
     if (CBBOX1.Text <> 'SELECIONAR') OR (ed_usuario_in.Text <> '') or (ed_senha.Text <> '') then
     begin

        //recebe permicao
        if CBBOX1.Text = 'ADM' then
        begin
          sql_usuarioPERMISAO.AsString :=  'ADM';
        end;

        if CBBOX1.Text = 'REGULAR' then
        begin
          sql_usuarioPERMISAO.AsString :=  'REGULAR';
        end;
        
     
       sql_usuario.Post;
       ShowMessage('Registro salvo');
       sql_usuario.Close;
       bt_inserir.Enabled := False;
       ed_usuario.SetFocus;
     end;
       
       bt_alterar.Enabled := False;
    except
    sql_usuario.Cancel;
  end;


end;
end;

procedure TF_apoio_adm.ed_confirma_senhaChange(Sender: TObject);
begin
  if ed_confirma_senha.Text = ed_nova_senha.Text  then
    begin
      bt_confimra_senha_certo.Visible := True;
    end
    else
    begin
       bt_confimra_senha_certo.Visible := False;
    end;

  if ed_confirma_senha.Text = ''  then
    begin
      L_senha_errada.Visible := False
    end;
end;

procedure TF_apoio_adm.ed_confirma_senhaExit(Sender: TObject);
begin
  if (ed_confirma_senha.Text <> '') or (ed_confirma_senha.Text <> ed_nova_senha.Text ) then
  begin
    L_senha_errada.Visible := True; 
    bt_confimra_senha_certo.Visible := False; 

    
  end;

end;

procedure TF_apoio_adm.ed_nova_senhaChange(Sender: TObject);
begin
    if Length(ed_nova_senha.Text) > 3  then
  begin
    verifica_senha_1_certo.Visible := True;
    bt_verifica_senha_1_errado.Visible := False;
  end
  else
  begin
    bt_verifica_senha_1_errado.Visible := True;
    verifica_senha_1_certo.Visible := False;
  end;
end;

procedure TF_apoio_adm.ed_nova_senhaExit(Sender: TObject);
begin
  if Length(ed_nova_senha.Text) < 3 then
  begin
     ShowMessage('sua nova senha deve possuir mais de 3 digitos');
     ed_nova_senha.SetFocus;
  end;

end;

procedure TF_apoio_adm.ed_senhaExit(Sender: TObject);
begin
  ed_senha.Text := UpperCase(ed_senha.Text);
  ed_senha.SelStart := Length(ed_senha.Text);
end;

procedure TF_apoio_adm.ed_usuarioChange(Sender: TObject);
begin
  ed_usuario.Text := UpperCase(ed_usuario.Text);
  ed_usuario.SelStart := Length(ed_usuario.Text);
end;

procedure TF_apoio_adm.ed_usuarioExit(Sender: TObject);
begin
  if ed_usuario.Text <> '' then
  begin
   sql_usuario.Close;
   sql_usuario.ParamByname('USUARIO').AsString := ed_usuario.Text;
   sql_usuario.Open;

   if sql_usuario.IsEmpty then
     begin
       ShowMessage('Usuario não encontrado.. Verifique');
     end
     else
      begin
         bt_aletrar_senha.Enabled  := True;
         bt_alterar.Enabled        := True;
         bt_deletar.Enabled        := True;
         ed_senha.Enabled := False;
      end;
  end
  else
   begin
    if  ed_usuario_in.Text <> '' then //INSERE NOVOS USUARIOS
     begin
       sql_usuario.EmptyDataSet;
     end;
      sql_usuario.Open;
      sql_usuario.Append;
      ed_usuario_in.SetFocus;
      bt_inserir.Enabled := True;
   end;
end;

procedure TF_apoio_adm.ed_usuario_inExit(Sender: TObject);
begin
  ed_usuario_in.Text := UpperCase(ed_usuario_in.Text);
  ed_usuario_in.SelStart := Length(ed_usuario_in.Text);
end;

procedure TF_apoio_adm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  sql_usuario.ClearBlobs;
  sql_usuario.Close;
  bt_verifica_senha_1_errado.Visible := False;
  verifica_senha_1_certo.Visible     := False;
  bt_confimra_senha_certo.Visible    := False;
  bt_canecelar_alteracao_senha.Click;
end;

procedure TF_apoio_adm.SpeedButton6Click(Sender: TObject);
begin

  if (ed_nova_senha.Text <> '') or (ed_confirma_senha.Text <> '') then
 BEGIN
   if ed_nova_senha.Text = ed_confirma_senha.Text  then
   begin
     sql_usuario.Edit;   //atualiza senha e limpa campos
     sql_usuarioSENHA.AsString := ed_nova_senha.Text;
     sql_usuario.Post;
     ShowMessage('Senha atualizada!');
     bt_verifica_senha_1_errado.Visible := False;
     verifica_senha_1_certo.Visible     := False;
     bt_confimra_senha_certo.Visible    := False;
     bt_canecelar_alteracao_senha.Click;
   end
   else  //nao atualiza senha e limpa os campos
    begin
      ShowMessage('As senhas estao divergentes, verifique!');
      ed_confirma_senha.Clear;
      ed_nova_senha.Clear;
      ed_nova_senha.SetFocus;
    end;
 END;






   //limpa campos
   ed_nova_senha.Clear;
   ed_confirma_senha.Clear;
   p_ed_senha.Visible := True;

end;

procedure TF_apoio_adm.SpeedButton7Click(Sender: TObject);
begin
  bt_canecelar_alteracao_senha.Click;
end;

end.
