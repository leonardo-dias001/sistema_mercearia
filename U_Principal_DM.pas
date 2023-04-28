unit U_Principal_DM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TF_principal = class(TForm)
    FDConnection1: TFDConnection;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    ed_usuario: TEdit;
    Label2: TLabel;
    ed_senha: TEdit;
    sql_verifica_usuarios: TFDQuery;
    bt_login: TSpeedButton;
    bt_cancelar: TSpeedButton;
    FDConnection2: TFDConnection;
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_loginClick(Sender: TObject);
    procedure ed_usuarioChange(Sender: TObject);
    procedure ed_senhaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_principal: TF_principal;

implementation

{$R *.dfm}

uses U_menu;



procedure TF_principal.bt_cancelarClick(Sender: TObject);
begin
  ed_usuario.Clear;
  ed_senha.Clear;
  ed_usuario.SetFocus;
end;

procedure TF_principal.bt_loginClick(Sender: TObject);
begin
  sql_verifica_usuarios.Close;
  sql_verifica_usuarios.ParamByname('USUARIO').AsString := ed_usuario.Text;
  sql_verifica_usuarios.ParamByname('SENHA').AsString   := ed_senha.Text;
  sql_verifica_usuarios.Open;

  if not sql_verifica_usuarios.IsEmpty then
  begin
    F_menu.lb_usuario.Caption := 'USUARIO: ' + ed_usuario.Text;
    F_menu.ShowModal;

  end
  else
    showMessage('Usuario ou Senha incorreto');

end;

procedure TF_principal.ed_senhaChange(Sender: TObject);
begin
  ed_senha.Text := UpperCase(ed_senha.Text);
  ed_senha.SelStart := Length(ed_senha.Text);
end;

procedure TF_principal.ed_usuarioChange(Sender: TObject);
begin
  ed_usuario.Text := UpperCase(ed_usuario.Text);
  ed_usuario.SelStart := Length(ed_usuario.Text);
end;

procedure TF_principal.FormCreate(Sender: TObject);
begin

  ed_usuario.Text := 'LEO-DIAS';
  ed_senha.Text   := 'QQ123';

end;

end.
