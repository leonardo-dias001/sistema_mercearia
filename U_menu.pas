unit U_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TF_menu = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lb_usuario: TLabel;
    bt_apoio: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure bt_apoioClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_menu: TF_menu;

implementation

{$R *.dfm}

uses U_Principal_DM, U_Apoio, U_Estoque, U_Fornecedor;

procedure TF_menu.bt_apoioClick(Sender: TObject);
begin
    F_apoio_adm.ShowModal;
end;

procedure TF_menu.SpeedButton1Click(Sender: TObject);
begin
    F_estoque.ShowModal;
end;

procedure TF_menu.SpeedButton2Click(Sender: TObject);
begin
  F_fornecedor.ShowModal;
end;

end.
