program notdefteri;

uses
  Vcl.Forms,
  NotePad in 'NotePad.pas' {fmNotePad};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmNotePad, fmNotePad);
  Application.Run;
end.
