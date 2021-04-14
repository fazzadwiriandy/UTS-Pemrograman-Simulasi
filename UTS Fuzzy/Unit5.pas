unit Unit5;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDM1 = class(TDataModule)
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    zqry2: TZQuery;
    ds2: TDataSource;
    zqry3: TZQuery;
    ds3: TDataSource;
    zqry4: TZQuery;
    ds4: TDataSource;
    zqry5: TZQuery;
    ds5: TDataSource;
    zqry6: TZQuery;
    ds6: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{$R *.dfm}

end.
