program LSDSIS;

uses
  Vcl.Forms,
  U_Principal_DM in 'U_Principal_DM.pas' {F_principal},
  U_menu in 'U_menu.pas' {F_menu},
  U_Apoio in 'U_Apoio.pas' {F_apoio_adm},
  U_Estoque in 'U_Estoque.pas' {F_estoque},
  U_Fornecedor in 'U_Fornecedor.pas' {F_fornecedor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_principal, F_principal);
  Application.CreateForm(TF_menu, F_menu);
  Application.CreateForm(TF_apoio_adm, F_apoio_adm);
  Application.CreateForm(TF_estoque, F_estoque);
  Application.CreateForm(TF_fornecedor, F_fornecedor);
  Application.Run;
end.
