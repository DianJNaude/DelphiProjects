unit User;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin, Vcl.WinXPickers, Vcl.ComCtrls, Vcl.Imaging.jpeg, Vcl.Buttons,
  Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmUser = class(TForm)
    imgP1: TImage;
    btnScoring: TButton;
    btnMyscore: TButton;
    btnMatch: TButton;
    btnResign: TButton;
    btnAppointment: TButton;
    btnLeft: TButton;
    btnWinrate: TButton;
    btnLost: TButton;
    sedUser: TSpinEdit;
    sedOponent: TSpinEdit;
    lblUser: TLabel;
    lblOponenet: TLabel;
    sedPlayer: TSpinEdit;
    lblOppNo: TLabel;
    lblVenue: TLabel;
    edtVenue: TEdit;
    dtpMatch: TDateTimePicker;
    lblDaterime: TLabel;
    tpGame: TTimePicker;
    pnlScheduleMatch: TPanel;
    pnlAddScore: TPanel;
    pnlQuerries: TPanel;
    lblTitlescore: TLabel;
    lblSM: TLabel;
    lblQuerries: TLabel;
    imgP2: TImage;
    lblUserName: TLabel;
    bmbLogout: TBitBtn;
    bmbHelp: TBitBtn;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    pnlTables: TPanel;
    btnMatchU: TButton;
    btnPlayerU: TButton;
    btnVenueU: TButton;
    btnScoreUT: TButton;
    procedure bmbLogoutClick(Sender: TObject);
    procedure btnAppointmentClick(Sender: TObject);
    procedure btnLostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser: TfrmUser;

implementation
uses  Admin, dmData, Login;

{$R *.dfm}

procedure TfrmUser.bmbLogoutClick(Sender: TObject);
begin
frmUser.Hide;
frmLogin.Show;
end;

procedure TfrmUser.btnAppointmentClick(Sender: TObject);
var
x:integer;
begin
dmDataA.tblScoreM.First;
x := dmDataA.tblScoreM['2'];
showmessage( inttostr(x));
end;

procedure TfrmUser.btnLostClick(Sender: TObject);
begin
ShowMessage('Ben, you have lost 5 matches');
end;

end.
