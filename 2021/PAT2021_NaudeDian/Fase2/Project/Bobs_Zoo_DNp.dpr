program Bobs_Zoo_DNp;

uses
  Vcl.Forms,
  frmEntry_DNu in 'frmEntry_DNu.pas' {frmEntry},
  frmMain_DNu in 'frmMain_DNu.pas' {frmMain},
  frmGame1_DNu in 'frmGame1_DNu.pas' {frmGame1},
  frmGame2_DNu in 'frmGame2_DNu.pas' {frmGame2},
  frmGame3_DNu in 'frmGame3_DNu.pas' {frmGame3},
  frmGame4_DNu in 'frmGame4_DNu.pas' {frmGame4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmEntry, frmEntry);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmGame1, frmGame1);
  Application.CreateForm(TfrmGame2, frmGame2);
  Application.CreateForm(TfrmGame3, frmGame3);
  Application.CreateForm(TfrmGame4, frmGame4);
  Application.Run;
end.
