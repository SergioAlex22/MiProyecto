unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm3 = class(TForm)
    curso1: TLabel;
    notaMC: TLabel;
    txtnotaMC: TEdit;
    notaEF: TLabel;
    txtnotaEF: TEdit;
    notaPP: TLabel;
    txtnotaPP: TEdit;
    prom: TButton;
    procedure promClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

uses Unit4;

procedure TForm3.promClick(Sender: TObject);
begin
     Form4.show;
end;

end.