unit U_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit;

type
  TF_fornecedor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ed_cod_fornecedor: TEdit;
    Label1: TLabel;
    bt_cadastrar: TSpeedButton;
    bt_alterar: TSpeedButton;
    bt_deletar: TSpeedButton;
    bt_cancelar: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SQL_FORNECEDOR: TFDQuery;
    SQL_FORNECEDORCOD_FORNECEDOR: TFDAutoIncField;
    SQL_FORNECEDORCIDADE: TStringField;
    SQL_FORNECEDORTELEFONE: TStringField;
    SQL_FORNECEDORDESCRICAO: TStringField;
    SQL_FORNECEDORPRODUTO_FORNECIDO: TStringField;
    ds_fornecedor: TDataSource;
    Label2: TLabel;
    ed_cidade: TcxDBTextEdit;
    Label3: TLabel;
    ed_telefone: TcxDBTextEdit;
    Label4: TLabel;
    ed_descricao: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    procedure bt_cadastrarClick(Sender: TObject);
    procedure ed_cod_fornecedorExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed_cod_fornecedorChange(Sender: TObject);
    procedure SQL_FORNECEDORPRODUTO_FORNECIDOChange(Sender: TField);
    procedure ed_cidadeExit(Sender: TObject);
    procedure ed_descricaoExit(Sender: TObject);
    procedure cxDBTextEdit4Exit(Sender: TObject);
    procedure ed_telefoneExit(Sender: TObject);
    procedure bt_deletarClick(Sender: TObject);
    procedure bt_alterarClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_fornecedor: TF_fornecedor;

implementation

{$R *.dfm}

uses U_Principal_DM;

procedure TF_fornecedor.bt_deletarClick(Sender: TObject);
begin
  SQL_FORNECEDOR.Delete;

   if MessageBox(Handle, 'Você realmente deseja deletar este fornecedor?', 'Confirmação', MB_YESNO or MB_ICONQUESTION) = IDYES then
  begin
    try
     SQL_FORNECEDOR.Delete;
     bt_deletar.Enabled := False;
     bt_cadastrar.Enabled := False;
     bt_alterar.Enabled := False;
     ShowMessage('Fornecedor deletado!.');

    except
      SQL_FORNECEDOR.Cancel;
    end;
  end;

end;

procedure TF_fornecedor.cxDBTextEdit4Exit(Sender: TObject);
begin
  ed_descricao.Text := UpperCase(ed_descricao.Text);
  ed_descricao.SelStart := Length(ed_descricao.Text);
end;

procedure TF_fornecedor.ed_cidadeExit(Sender: TObject);
begin
  ed_cidade.Text := UpperCase(ed_cidade.Text);
  ed_cidade.SelStart := Length(ed_cidade.Text);
end;

procedure TF_fornecedor.ed_cod_fornecedorChange(Sender: TObject);
begin
  ed_cod_fornecedor.Text := UpperCase(ed_cod_fornecedor.Text);
  ed_cod_fornecedor.SelStart := Length(ed_cod_fornecedor.Text);
end;

procedure TF_fornecedor.ed_cod_fornecedorExit(Sender: TObject);
begin
    if ed_cod_fornecedor.Text <> '' then
  begin
   SQL_FORNECEDOR.Close;
   SQL_FORNECEDOR.ParamByname('COD_FORNECEDOR').AsString := ed_cod_fornecedor.Text;
   SQL_FORNECEDOR.Open;

   if SQL_FORNECEDOR.IsEmpty then
     begin
       ShowMessage('Fornecedor não encontrado.. Verifique');
       ed_cod_fornecedor.Clear;
       ed_cod_fornecedor.SetFocus;
     end
     else
      begin

         bt_alterar.Enabled        := True;
         bt_deletar.Enabled        := True;
      end;
  end
  else
   begin
    if ed_cidade.Text <> '' then //INSERE NOVOS FORNECEDORES
     begin
       SQL_FORNECEDOR.EmptyDataSet;
     end;
      bt_alterar.Enabled := False;
      bt_deletar.Enabled := False;
      SQL_FORNECEDOR.Open;
      SQL_FORNECEDOR.Append;
      ed_cidade.SetFocus;
      bt_cadastrar.Enabled := True;
   end;
end;

procedure TF_fornecedor.ed_descricaoExit(Sender: TObject);
begin
  ed_descricao.Text := UpperCase(ed_descricao.Text);
  ed_descricao.SelStart := Length(ed_descricao.Text);
end;

procedure TF_fornecedor.ed_telefoneExit(Sender: TObject);
var
 PhoneNumber: string;
begin
   PhoneNumber := ed_telefone.Text;

  if (Length(PhoneNumber) = 10) then
  begin
    PhoneNumber := Format('(%s) %s-%s', [
      Copy(PhoneNumber, 1, 2),
      Copy(PhoneNumber, 3, 4),
      Copy(PhoneNumber, 7, 4)
    ]);
    ed_telefone.Text := PhoneNumber;
  end
  else if (Length(PhoneNumber) = 11) then
  begin
    PhoneNumber := Format('(%s) %s-%s', [
      Copy(PhoneNumber, 1, 2),
      Copy(PhoneNumber, 3, 5),
      Copy(PhoneNumber, 8, 4)
    ]);
    ed_telefone.Text := PhoneNumber;
  end;
end;

procedure TF_fornecedor.FormCreate(Sender: TObject);
begin{
  }
end;

procedure TF_fornecedor.FormShow(Sender: TObject);
begin
    ed_cod_fornecedor.SetFocus;
end;

procedure TF_fornecedor.SQL_FORNECEDORPRODUTO_FORNECIDOChange(Sender: TField);
begin
    ed_descricao.Text := UpperCase(ed_descricao.Text);
  ed_descricao.SelStart := Length(ed_descricao.Text);
end;

procedure TF_fornecedor.bt_alterarClick(Sender: TObject);
begin
  SQL_FORNECEDOR.Edit;
end;

procedure TF_fornecedor.bt_cadastrarClick(Sender: TObject);
begin
    SQL_FORNECEDOR.Post;
    ShowMessage('Fornecedor incluido');
end;

procedure TF_fornecedor.bt_cancelarClick(Sender: TObject);
begin
  SQL_FORNECEDOR.Cancel;
  SQL_FORNECEDOR.Close;
end;

end.
