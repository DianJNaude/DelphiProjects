unit dmData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmDataA = class(TDataModule)
    ADOConnectionM: TADOConnection;
    dsrAnimal: TDataSource;
    tblAnimals: TADOTable;
    tblProducts: TADOTable;
    tblService: TADOTable;
    tblPurchaserecord: TADOTable;
    tblTransaction: TADOTable;
    tblClient: TADOTable;
    dsrProducts: TDataSource;
    dsrService: TDataSource;
    dsrPurchaserecord: TDataSource;
    dsrTransaction: TDataSource;
    dsrClient: TDataSource;
    tblAnimalDonations: TADOTable;
    dsrAnimalDonations: TDataSource;
    qrStore: TADOQuery;
    dsrStore: TDataSource;
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
