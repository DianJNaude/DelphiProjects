unit dmData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmDataA = class(TDataModule)
    ADOConnectionM: TADOConnection;
    DataSourceMP: TDataSource;
    tblPlayersM: TADOTable;
    tblMatchesM: TADOTable;
    tblVenueM: TADOTable;
    DataSourceMM: TDataSource;
    DataSourceMV: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDataA: TdmDataA;

implementation
uses User, Admin, Login;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
