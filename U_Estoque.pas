unit U_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxSpinEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxTextEdit, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Datasnap.Provider;

type
  TF_estoque = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    item_recebimento: TTabSheet;
    iten: TTabSheet;
    Panel2: TPanel;
    ed_pesquisa_cod_item: TEdit;
    Label1: TLabel;
    Tipo_estoque: TTabSheet;
    SQL_ESTOQUE_TIPO: TFDQuery;
    SQL_ESTOQUE_TIPOCOD_TIPO_ESTOQUE: TFDAutoIncField;
    SQL_ESTOQUE_TIPODS_TIPO_ESTOQUE: TStringField;
    ds_sql_estoque_tipo: TDataSource;
    Panel4: TPanel;
    Label2: TLabel;
    ed_ds_tipo_estoque: TcxDBTextEdit;
    Panel5: TPanel;
    ed_cod_tipo: TEdit;
    ed_estoque_tipo: TLabel;
    Panel3: TPanel;
    bt_cadastrar: TSpeedButton;
    bt_novo: TSpeedButton;
    bt_deletar: TSpeedButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    bt_alterar: TSpeedButton;
    bt_cancelar: TSpeedButton;
    sql_item: TFDQuery;
    sql_itemDS_ITEM: TStringField;
    sql_itemCOD_TIPO_ESTOQUE: TIntegerField;
    sql_itemLINK_COMPRA: TStringField;
    ds_item: TDataSource;
    sql_aux: TFDQuery;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    ed_descricao_item: TcxDBTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    ed_cod_tipo_estoque: TcxDBTextEdit;
    ed_tipo_estoque: TEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    db_item_pesquisa: TDBGrid;
    Label7: TLabel;
    ed_pesquisa_item: TEdit;
    Label8: TLabel;
    bt_novo_confirmar: TSpeedButton;
    sql_auxCOD_TIPO_ESTOQUE: TFDAutoIncField;
    sql_auxDS_TIPO_ESTOQUE: TStringField;
    SQL_PESQUISA_ITEM: TFDQuery;
    DS_PESQUISA_ITEM: TDataSource;
    Label9: TLabel;
    SQL_PESQUISA_ITEMCOD_ITEM: TFDAutoIncField;
    SQL_PESQUISA_ITEMDS_ITEM: TStringField;
    SQL_PESQUISA_ITEMCOD_TIPO_ESTOQUE: TIntegerField;
    SQL_PESQUISA_ITEMLINK_COMPRA: TStringField;
    sql_itemCOD_ITEM: TFDAutoIncField;
    bt_alterar_item: TSpeedButton;
    bt_deletar_item: TSpeedButton;
    SQL_VERIFICA_ITEM_ESTOQUE: TFDQuery;
    bt_cancelar_item: TSpeedButton;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_cadastrarClick(Sender: TObject);
    procedure bt_deletarClick(Sender: TObject);
    procedure bt_alterarClick(Sender: TObject);
    procedure ed_cod_tipoExit(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure ed_cod_tipo_estoqueExit(Sender: TObject);
    procedure bt_novo_confirmarClick(Sender: TObject);
    procedure ed_pesquisa_itemChange(Sender: TObject);
    procedure db_item_pesquisaCellClick(Column: TColumn);
    procedure ed_pesquisa_cod_itemExit(Sender: TObject);
    procedure bt_alterar_itemClick(Sender: TObject);
    procedure bt_deletar_itemClick(Sender: TObject);
    procedure bt_cancelar_itemClick(Sender: TObject);
    procedure sql_itemAfterEdit(DataSet: TDataSet);
    procedure sql_itemAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_estoque: TF_estoque;

implementation

{$R *.dfm}

uses U_menu, U_Principal_DM;

procedure TF_estoque.bt_alterarClick(Sender: TObject);
begin
   SQL_ESTOQUE_TIPO.Edit;
   bt_cadastrar.Enabled := True;
   bt_cadastrar.Caption := 'Salvar';
   bt_alterar.Enabled   := False;
   bt_deletar.Enabled   := False;
end;

procedure TF_estoque.bt_alterar_itemClick(Sender: TObject);
begin

  bt_novo_confirmar.Caption := 'Salvar';
  bt_deletar_item.Enabled := False;
  sql_item.Edit;

  if bt_novo_confirmar.Enabled = False then
    bt_novo_confirmar.Enabled := True;


end;

procedure TF_estoque.bt_cadastrarClick(Sender: TObject);
begin
    SQL_ESTOQUE_TIPO.Post;
    SQL_ESTOQUE_TIPO.Close;


    if bt_cadastrar.Caption = 'Cadastrar' then
     begin
        ShowMessage('cadastrado com sucesso!');
     end;

     if bt_cadastrar.Caption = 'Salvar' then
     begin
       ShowMessage('registro salvo com sucesso!');
     end;

     bt_cadastrar.Enabled := False;

end;

procedure TF_estoque.bt_cancelarClick(Sender: TObject);
begin
  SQL_ESTOQUE_TIPO.Cancel;
end;

procedure TF_estoque.bt_cancelar_itemClick(Sender: TObject);
begin
  sql_item.Cancel;
  sql_item.Close;
  ed_pesquisa_cod_item.Clear;
  SQL_VERIFICA_ITEM_ESTOQUE.Active := False;
  bt_alterar_item.Enabled := False;

  bt_novo_confirmar.Caption := 'Novo';
  ed_pesquisa_cod_item.SetFocus;

end;

procedure TF_estoque.bt_novoClick(Sender: TObject);
begin
  ed_ds_tipo_estoque.SetFocus;
  SQL_ESTOQUE_TIPO.Append;
  bt_cadastrar.Enabled := True;
  bt_novo.Enabled := False;
end;

procedure TF_estoque.db_item_pesquisaCellClick(Column: TColumn);
begin
   ed_pesquisa_cod_item.Text :=  db_item_pesquisa.Fields[0].Value;
   ed_pesquisa_cod_item.SetFocus;
end;

procedure TF_estoque.ed_pesquisa_cod_itemExit(Sender: TObject);
begin

  if ed_pesquisa_cod_item.Text <> '' then    //Caso o usuario digite algo:
 begin
   sql_item.Close;
   sql_item.ParamByName('COD_ITEM').AsString :=  ed_pesquisa_cod_item.Text;
   sql_item.Open;

   if sql_item.IsEmpty then
   begin
     ShowMessage('Item não encontrado. experimente busca-lo pela pesquisa ao lado!');
     ed_pesquisa_cod_item.clear;
     bt_novo_confirmar.Enabled := True;
   end
   else //caso ache item, habilita para usuario conseguir editar/deletar.
   begin
     bt_alterar_item.Enabled := True;
     bt_deletar_item.Enabled := True;
   end;
 end;

  if ed_pesquisa_cod_item.Text = '' then
    begin
      bt_novo_confirmar.Enabled := True;
      ed_pesquisa_item.SetFocus;

      if bt_alterar_item.Enabled = True then
       begin
         bt_alterar_item.Enabled := False;
       end;

      if bt_deletar_item.Enabled = True then
        begin
          bt_deletar_item.Enabled := False;
        end;
    end;


end;

procedure TF_estoque.ed_pesquisa_itemChange(Sender: TObject);
begin

  with SQL_PESQUISA_ITEM do
   begin
    Close;
    sql.clear;
    sql.add('SELECT * FROM ITEM_MATERIA_PRIMA WHERE DS_ITEM LIKE :DS_ITEM');
    parambyname('DS_ITEM').AsString  := ed_pesquisa_item.text+'%';
    open;
    end;



end;

procedure TF_estoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  sql_item.Close;
end;

procedure TF_estoque.sql_itemAfterEdit(DataSet: TDataSet);
begin
  bt_cancelar_item.Enabled := True;
end;

procedure TF_estoque.sql_itemAfterInsert(DataSet: TDataSet);
begin

  bt_cancelar_item.Enabled := True;

end;

procedure TF_estoque.ed_cod_tipo_estoqueExit(Sender: TObject);
var
  Resultado: string;
begin

  if ed_cod_tipo_estoque.Text <> '' then
  begin
    sql_aux.Connection := F_principal.FDConnection1;
    sql_aux.SQL.Text := 'SELECT * FROM ESTOQUE_TIPO A WHERE A.COD_TIPO_ESTOQUE = ' + ed_cod_tipo_estoque.Text;
    sql_aux.Open;

    // Verifique se o SELECT retornou algum registro
    if not sql_aux.IsEmpty then
    begin
      Resultado := sql_aux.FieldByName('DS_TIPO_ESTOQUE').AsString;
      ed_tipo_estoque.Text := Resultado;
    end
    else
    begin
      // Se o SELECT não retornou nenhum registro,
      // limpe o valor do TEdit de resultado
      ed_tipo_estoque.Text := '';
    end;

    // Feche o objeto TADOQuery
    sql_aux.Close;
  end;

end;

procedure TF_estoque.bt_novo_confirmarClick(Sender: TObject);
begin
 if bt_novo_confirmar.Caption = 'Novo' then
   begin
     sql_item.Open;
     sql_item.Append;
     ed_descricao_item.SetFocus;
     bt_novo_confirmar.Caption := 'Salvar';
     ed_pesquisa_cod_item.Clear;
     ed_pesquisa_item.Clear;
     ed_descricao_item.SetFocus;

   end
   else //feito para não usar dois botoes
   begin
   if bt_novo_confirmar.Caption = 'Salvar' then
    begin

      sql_item.Post;
      ed_tipo_estoque.Clear;

      ShowMessage('Concluido com sucesso');
      sql_item.Close;


      bt_alterar_item.Enabled := False;
      bt_deletar_item.Enabled := False;
      bt_novo_confirmar.Enabled := False;
      bt_novo_confirmar.Caption := 'Novo';
      ed_pesquisa_cod_item.Clear;
      ed_pesquisa_cod_item.SetFocus;

    end;

   end;


end;

procedure TF_estoque.ed_cod_tipoExit(Sender: TObject);
begin

  if ed_cod_tipo.Text <> '' then
  begin
    SQL_ESTOQUE_TIPO.Close;
    SQL_ESTOQUE_TIPO.ParamByName('COD_TIPO_ESTOQUE').AsString := ed_cod_tipo.Text;
    SQL_ESTOQUE_TIPO.Open;

    if SQL_ESTOQUE_TIPO.IsEmpty then
    begin
      ShowMessage('Nenhum registro encontrado!');
    end
    else
    begin
      bt_deletar.Enabled := True;
      bt_alterar.Enabled := True;
      bt_cancelar.Enabled := True;
    end;

  end;

end;

procedure TF_estoque.bt_deletarClick(Sender: TObject);
begin
   SQL_ESTOQUE_TIPO.Delete;
   ShowMessage('registro deletado!');
   bt_deletar.Enabled := False;
end;

procedure TF_estoque.bt_deletar_itemClick(Sender: TObject);
begin
   if MessageDlg('Tem certeza que deseja deletar o item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      SQL_VERIFICA_ITEM_ESTOQUE.Close;
      SQL_VERIFICA_ITEM_ESTOQUE.ParamByName('COD_ITEM').AsString := sql_itemCOD_ITEM.AsString;
      SQL_VERIFICA_ITEM_ESTOQUE.Open;

      if  not SQL_VERIFICA_ITEM_ESTOQUE.IsEmpty then   //VERIFICA SE O ITEM ESTA NA TABLE ESTOQUE_ITEM_MATERIA_PRIMA
      begin
        ShowMessage('Não podera excluir pois o item esta presente na tabela de estoque');
        bt_deletar_item.Enabled := False;
      end
      else
      begin
        SQL_VERIFICA_ITEM_ESTOQUE.Delete;
      end;

    end;
end;

end.
