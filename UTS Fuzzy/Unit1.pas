unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
  Unit2,Unit4;
{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
Form1.Close;
Form2.Show;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
Form1.Hide;

Form2.Show;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
Form1.Hide;

//mengambil nilai bb permintaan
Form4.smdbgrd2.DataSource.DataSet.RecNo := 1;
form4.edt3.Text := Form4.smdbgrd2.Columns.Items[3].Field.AsString;
//mengambil nilai ba permintaan
Form4.smdbgrd2.DataSource.DataSet.RecNo := 1;
form4.edt6.Text := Form4.smdbgrd2.Columns.Items[5].Field.AsString;
//mengambil nilai bb persediaan
Form4.smdbgrd2.DataSource.DataSet.RecNo := 2;
form4.edt4.Text := Form4.smdbgrd2.Columns.Items[3].Field.AsString;
//mengambil nilai ba persediaan
Form4.smdbgrd2.DataSource.DataSet.RecNo := 2;
form4.edt5.Text := Form4.smdbgrd2.Columns.Items[5].Field.AsString;
//mengambil nilai bb permintaan
Form4.smdbgrd2.DataSource.DataSet.RecNo := 3;
form4.edt7.Text := Form4.smdbgrd2.Columns.Items[3].Field.AsString;
//mengambil nilai ba permintaan
Form4.smdbgrd2.DataSource.DataSet.RecNo := 3;
form4.edt8.Text := Form4.smdbgrd2.Columns.Items[5].Field.AsString;

Form4.Show;
end;

end.

