unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    edt_namarule: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    edt_param1: TEdit;
    lbl4: TLabel;
    edt_nilai1: TEdit;
    lbl5: TLabel;
    edt_param2: TEdit;
    lbl6: TLabel;
    edt_nilai2: TEdit;
    lbl7: TLabel;
    edt_param3: TEdit;
    lbl8: TLabel;
    edt_nilai3: TEdit;
    btn1: TBitBtn;
    smdbgrid1: TDBGrid;
    btn2: TBitBtn;
    btn3: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Unit5,Unit3,Unit4, Unit1;
{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
Form2.Hide;
Form3.Show;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
smdbgrid1.Tag := 40;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
//opsi simpan
if MessageDlg('Yakin Data '+edt_namarule.Text+' Ingin Disimpan??..',mtConfirmation,[mbYes,mbNo],0)=idno then
begin
  if DM1.zqry1.RecordCount > 0 then
     DM1.zqry1.Cancel;
     edt_namarule.SetFocus;
     exit;
end;
//opsi isi semua data
if (edt_namarule.text='')or(edt_param1.text='')or(edt_nilai1.Text='')or(edt_param2.Text='')or(edt_nilai2.Text='')or(edt_param3.Text='')or(edt_nilai3.Text='')then
begin
  MessageDlg(' Harus Diisi Semua!..',mtError,[mbOK],0);
  edt_namarule.SetFocus;
  exit;
end
else
//input data
if (edt_namarule.text<>'')and(edt_param1.text<>'')and(edt_nilai1.Text<>'')and(edt_param2.Text<>'')and(edt_nilai2.Text<>'')and(edt_param3.Text<>'')and(edt_nilai3.Text<>'')then
DM1.zqry1.Append;
DM1.zqry1.FieldByName('index').AsString:=edt_namarule.Text;
DM1.zqry1.FieldByName('param_1').AsString:=edt_param1.Text;
DM1.zqry1.FieldByName('nilai_1').AsString:=edt_nilai1.Text;
DM1.zqry1.FieldByName('param_2').AsString:=edt_param2.Text;
DM1.zqry1.FieldByName('nilai_2').AsString:=edt_nilai2.Text;
DM1.zqry1.FieldByName('param_3').AsString:=edt_param3.Text;
DM1.zqry1.FieldByName('nilai_3').AsString:=edt_nilai3.Text;
DM1.zqry1.Post;
MessageDlg('Data '+edt_namarule.Text+' Berhasil Ditambah..',mtInformation,[mbOK],0);
//reset inputan
edt_namarule.Clear;
edt_param1.Clear;
edt_param2.Clear;
edt_param3.Clear;
edt_nilai1.clear;
edt_nilai2.clear;
edt_nilai3.clear;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
Form2.Hide;
form1.show;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
Form2.Hide;
form1.show;
end;

end.
