unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FireDAC.Stan.Intf, FireDAC.Stan.Option,inifiles,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    titulo: TLabel;
    Label1: TLabel;
    codigo: TLabel;
    textCodigo: TEdit;
    nombre: TLabel;
    textNombre: TEdit;
    horas: TLabel;
    textHoras: TEdit;
    registrar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure registrarClick(Sender: TObject);
  private
    { Private declarations }
  public
        procedure crearDatos;
  end;

var
  Form1: TForm1;
  ArchivoDatos : TIniFile;

implementation

{$R *.fmx}

uses Unit2;

procedure TForm1.crearDatos;
begin
      ArchivoDatos := TIniFile.Create(ExtractFilePath(ParamStr(0)) + '\Datos.txt');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     crearDatos;
end;

procedure TForm1.registrarClick(Sender: TObject);
begin
     ArchivoDatos.WriteString('Datos','Codigo',textCodigo.Text);
     ArchivoDatos.WriteString('Datos','Nombre',textNombre.Text);
     ArchivoDatos.WriteString('Datos','Horas',textHoras.Text);
     Form2.ShowModal;
end;

end.
