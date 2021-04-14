unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    edt_namarule: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt_bbv1: TEdit;
    edt_bbn1: TEdit;
    edt_bav: TEdit;
    edt_ban: TEdit;
    edt_satuan: TEdit;
    smdbgrd1: TSMDBGrid;
    cbb1: TComboBox;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses
  Unit5,Unit4, Unit1, Unit2;
{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
Form3.Hide;

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

procedure TForm3.btn2Click(Sender: TObject);
begin
//opsi simpan
if MessageDlg('Yakin Data '+edt_namarule.Text+' Ingin Disimpan??..',mtConfirmation,[mbYes,mbNo],0)=idno then
begin
  if DM1.zqry2.RecordCount > 0 then
     DM1.zqry2.Cancel;
     edt_namarule.SetFocus;
     exit;
end;
//opsi isi semua data
if (edt_namarule.text='')or(cbb1.Text='Pilih Tipe')or(edt_bbv1.Text='')or(edt_bbn1.Text='')or(edt_bav.Text='')or(edt_ban.Text='')or(edt_satuan.Text='')then
begin
  MessageDlg(' Harus Diisi Semua!..',mtError,[mbOK],0);
  edt_namarule.SetFocus;
  exit;
end
else
//input data
if (edt_namarule.text<>'')and(cbb1.Text<>'Pilih Tipe')and(edt_bbv1.Text<>'')and(edt_bbn1.Text<>'')and(edt_bav.Text<>'')and(edt_ban.Text<>'')and(edt_satuan.Text<>'')then
DM1.zqry2.Append;
DM1.zqry2.FieldByName('variabel').AsString:=edt_namarule.Text;
DM1.zqry2.FieldByName('tipe').AsString:=cbb1.Text;
DM1.zqry2.FieldByName('bb_nama').AsString:=edt_bbv1.Text;
DM1.zqry2.FieldByName('bb_nilai').AsString:=edt_bbn1.Text;
DM1.zqry2.FieldByName('ba_nama').AsString:=edt_bav.Text;
DM1.zqry2.FieldByName('ba_nilai').AsString:=edt_ban.Text;
DM1.zqry2.FieldByName('satuan').AsString:=edt_satuan.Text;
DM1.zqry2.Post;
MessageDlg('Data '+edt_namarule.Text+' Berhasil Ditambah..',mtInformation,[mbOK],0);
//reset inputan
edt_namarule.Clear;
cbb1.Text := ('Pilih Tipe');
edt_bbv1.Clear;
edt_bbn1.Clear;
edt_bav.clear;
edt_ban.clear;
edt_satuan.clear;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
Form3.Hide;
form1.show;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
Form3.Hide;
form2.show;
end;

end.
