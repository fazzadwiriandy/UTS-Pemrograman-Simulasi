unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TeeProcs, TeEngine, Chart, Buttons, Grids,
  DBGrids, SMDBGrid, Series;

type
  TForm4 = class(TForm)
    lbl2: TLabel;
    smdbgrd1: TSMDBGrid;
    smdbgrd2: TSMDBGrid;
    btn1: TBitBtn;
    btn2: TBitBtn;
    smdbgrd3: TSMDBGrid;
    cht1: TChart;
    lbl1: TLabel;
    lbl3: TLabel;
    cht2: TChart;
    lbl4: TLabel;
    smdbgrd4: TSMDBGrid;
    lbl5: TLabel;
    smdbgrd6: TSMDBGrid;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    btn3: TBitBtn;
    edt1: TEdit;
    btn4: TBitBtn;
    lnsrsSeries1: TLineSeries;
    lnsrsSeries2: TLineSeries;
    lnsrsSeries3: TLineSeries;
    lnsrsSeries4: TLineSeries;
    lbl10: TLabel;
    edt_soal: TEdit;
    lbl11: TLabel;
    edt2: TEdit;
    btn5: TBitBtn;
    edt3: TEdit;
    lbl12: TLabel;
    edt4: TEdit;
    lbl13: TLabel;
    edt5: TEdit;
    lbl14: TLabel;
    edt6: TEdit;
    lbl15: TLabel;
    lnsrsSeries5: TLineSeries;
    lbl16: TLabel;
    lbl17: TLabel;
    edt7: TEdit;
    edt8: TEdit;
    lbl6: TLabel;
    smdbgrd5: TSMDBGrid;
    btn6: TBitBtn;
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses
  Unit5,Unit2,Unit3,Unit1;

var
  a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q : Single;
  rata1, rata2,total : Single;
  rule,rule2 : string;
  nilai : real;
  random1, random2,random3,random4,random5,random6,random7,random8 : Integer;
{$R *.dfm}

procedure TForm4.btn4Click(Sender: TObject);
begin
Form4.Close;
Form1.Show;

end;

procedure TForm4.btn5Click(Sender: TObject);
begin

a := StrToFloat(edt3.Text); //batas atas persediaan barang
b := StrToFloat(edt4.Text); // batas bawah persediaan barang
c := StrToFloat(edt6.Text); //batas atas nilai permintaan
d := StrToFloat(edt5.Text); //batas bawah nilai permintaan

e := StrToFloat(edt_soal.Text); //soal permintaan
f := StrToFloat(edt2.Text); //soal persediaan barang

//fuzifikasi permintaan
g := ((c - e)/(c - d)); //uturun
h := ((e - f)/(c - d)); //unaik

//fuzifikasi persediaan
i := ((a - f)/(a - b));//usedikit
j := ((f - b)/(a - b));//ubanyak

if (edt_soal.Text = '') or (edt2.Text = '') then
  ShowMessage('Isi terlebih dahulu nilai permintaan dan persediaan');

//grafik fuzifikasi permintaan
cht1.Series[0].Add(g, '', clRed);
cht1.Series[1].Add(h, '', clGreen);
cht1.Series[0].Add(g, '', clRed);
cht1.Series[1].Add(h, '', clGreen);

//grafik fuzifikasi persediaan
cht2.Series[0].Add(i, '',clRed);
cht2.Series[1].Add(j, '', clGreen);
cht2.Series[0].Add(i, '',clRed);
cht2.Series[1].Add(j, '', clGreen);

//mengambil nilai terkecil
//R1
if g>j then
k := j //nilai r1 = k
else
k := g; //nilai r1 = k
//R2
if g>i then //uturun usedikit
l := i //nilai r2 = L
else
l := g; //nilai r2 = L
//R3
if h>j then //uturun usedikit
o := j //nilai r3 = L
else
o := h; //nilai r3 = L
//R4
if h>i then //uturun usedikit
p := i //nilai r4 = L
else
p := h; //nilai r4 = L

//mencari nilai terbesar berkurang
if k>l then
m := k
else
m := l;
//mencari nilai terbesar bertambah
if o>p then
q := o
else
q := p;

rule := 'R1';
rule2 := 'R2';

//memasukkan nilai K
DM1.zqry3.Append;
DM1.zqry3.FieldByName('rules').AsString:= rule;
DM1.zqry3.FieldByName('nilai').AsString:= FloatToStr(k);
DM1.zqry3.Post;

//masukkan nilai L
DM1.zqry3.Append;
DM1.zqry3.FieldByName('rules').AsString:= rule2;
DM1.zqry3.FieldByName('nilai').AsString:= FloatToStr(l);
DM1.zqry3.Post;

//masukkan nilai O
DM1.zqry3.Append;
DM1.zqry3.FieldByName('rules').AsString:= 'R3';
DM1.zqry3.FieldByName('nilai').AsString:= FloatToStr(o);
DM1.zqry3.Post;

//masukkan nilai P
DM1.zqry3.Append;
DM1.zqry3.FieldByName('rules').AsString:= 'R4';
DM1.zqry3.FieldByName('nilai').AsString:= FloatToStr(p);
DM1.zqry3.Post;

//memasukkan nilai K ke tabel implikasi
DM1.zqry4.Append;
DM1.zqry4.FieldByName('rules').AsString:= rule;
DM1.zqry4.FieldByName('nilai').AsString:= FloatToStr(k);
DM1.zqry4.FieldByName('ketentuan').AsString:= 'berkurang';
DM1.zqry4.Post;

//masukkan nilai L  ke tabel implikasi
DM1.zqry4.Append;
DM1.zqry4.FieldByName('rules').AsString:= rule2;
DM1.zqry4.FieldByName('nilai').AsString:= FloatToStr(l);
DM1.zqry4.FieldByName('ketentuan').AsString:= 'berkurang';
DM1.zqry4.Post;

//masukkan nilai O  ke tabel implikasi
DM1.zqry4.Append;
DM1.zqry4.FieldByName('rules').AsString:= 'R3';
DM1.zqry4.FieldByName('nilai').AsString:= FloatToStr(o);
DM1.zqry4.FieldByName('ketentuan').AsString:= 'bertambah';
DM1.zqry4.Post;

//masukkan nilai P  ke tabel implikasi
DM1.zqry4.Append;
DM1.zqry4.FieldByName('rules').AsString:= 'R4';
DM1.zqry4.FieldByName('nilai').AsString:= FloatToStr(p);
DM1.zqry4.FieldByName('ketentuan').AsString:= 'bertambah';
DM1.zqry4.Post;

DM1.zqry6.Append;
DM1.zqry6.FieldByName('berkurang').AsString:= FloatToStr(m);
DM1.zqry6.FieldByName('bertambah').AsString:= FloatToStr(q);
DM1.zqry6.Post;

random1 := StrToInt(edt7.Text) + Random(StrToInt(edt8.Text));     //nilai random
random2 := StrToInt(edt7.Text) + Random(StrToInt(edt8.Text));     //nilai random
random3 := StrToInt(edt7.Text) + Random(StrToInt(edt8.Text));     //nilai random
random4 := StrToInt(edt7.Text) + Random(StrToInt(edt8.Text));     //nilai random
random5 := StrToInt(edt7.Text) + Random(StrToInt(edt8.Text));     //nilai random
random6 := StrToInt(edt7.Text) + Random(StrToInt(edt8.Text));     //nilai random
random7 := StrToInt(edt7.Text) + Random(StrToInt(edt8.Text));     //nilai random
random8 := StrToInt(edt7.Text) + Random(StrToInt(edt8.Text));     //nilai random

//masukkan nilai random ke field berkurang
DM1.zqry5.Append;
DM1.zqry5.FieldByName('berkurang').AsInteger:= random1;
DM1.zqry5.FieldByName('bertambah').AsInteger:= random5;
DM1.zqry5.Post;
DM1.zqry5.Append;
DM1.zqry5.FieldByName('berkurang').AsInteger:= random2;
DM1.zqry5.FieldByName('bertambah').AsInteger:= random6;
DM1.zqry5.Post;
DM1.zqry5.Append;
DM1.zqry5.FieldByName('berkurang').AsInteger:= random3;
DM1.zqry5.FieldByName('bertambah').AsInteger:= random7;
DM1.zqry5.Post;
DM1.zqry5.Append;
DM1.zqry5.FieldByName('berkurang').AsInteger:= random4;
DM1.zqry5.FieldByName('bertambah').AsInteger:= random8;
DM1.zqry5.Post;

end;
procedure TForm4.btn3Click(Sender: TObject);
begin
rata1 := (random1+random2+random3+random4)/4; //rata-rata 'berkurang'
rata2 := (random5+random6+random7+random8)/4; //rata-rata 'bertambah'
total := ((rata2*q)+(rata1*m))/((q*4)+(m*4));

edt1.Text:= FloatToStr(total);
end;

procedure TForm4.btn6Click(Sender: TObject);
begin
Form4.Hide;
Form1.Show;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
form4.Hide;
form2.Show;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
Form4.Hide;
Form3.Show;
end;

end.
