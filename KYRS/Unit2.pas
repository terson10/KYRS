unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOQTovari: TADOQuery;
    DataSTovari: TDataSource;
    ADOTPers: TADOTable;
    DataSPers: TDataSource;
    ADOQCheck: TADOQuery;
    DataSCheck: TDataSource;
    ADOTCategory: TADOTable;
    DataSCategory: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQWork: TADOQuery;
    DataSWork: TDataSource;
    ADOQProdazi: TADOQuery;
    DataSProdazi: TDataSource;
    ADOQRep: TADOQuery;
    ADOQProd1: TADOQuery;
    DataSProd1: TDataSource;
    ADOQProd2: TADOQuery;
    DataSProd2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses Unit1, Unit3, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

end.
