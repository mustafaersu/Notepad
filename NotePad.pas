unit NotePad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.Clipbrd;

type
  TfmNotePad = class(TForm)
    MainMenu: TMainMenu;
    ActionList: TActionList;
    actFileNew: TAction;
    actFileOpen: TAction;
    actFileSave: TAction;
    actFileSaveAs: TAction;
    actFileClose: TAction;
    actEditCopy: TAction;
    actEditPaste: TAction;
    actEditCut: TAction;
    actSelectAll: TAction;
    actSelectNone: TAction;
    actViewStatusbar: TAction;
    mFile: TMenuItem;
    mEdit: TMenuItem;
    mView: TMenuItem;
    actEdit: TAction;
    actFile: TAction;
    actView: TAction;
    mViewStatusbar: TMenuItem;
    mEditCopy: TMenuItem;
    mEditPaste: TMenuItem;
    mEditCut: TMenuItem;
    mEditSelectAll: TMenuItem;
    mEditN1: TMenuItem;
    mEditSelectNone: TMenuItem;
    mFileNew: TMenuItem;
    mFileOpen: TMenuItem;
    mFileSave: TMenuItem;
    mFileSaveAs: TMenuItem;
    mFileClose: TMenuItem;
    mmText: TMemo;
    StatusBar: TStatusBar;
    PopupMenu: TPopupMenu;
    pmCopy: TMenuItem;
    pmCut: TMenuItem;
    pmPaste: TMenuItem;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    actEditUndo: TAction;
    mEditN2: TMenuItem;
    mEditUndo: TMenuItem;
    procedure mmTextChange(Sender: TObject);
    procedure actEditCopyExecute(Sender: TObject);
    procedure actEditCutExecute(Sender: TObject);
    procedure actEditPasteExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSelectNoneExecute(Sender: TObject);
    procedure actViewStatusbarExecute(Sender: TObject);
    procedure actFileCloseExecute(Sender: TObject);
    procedure actFileNewExecute(Sender: TObject);
    procedure actFileSaveExecute(Sender: TObject);
    procedure actFileOpenExecute(Sender: TObject);
    procedure actFileSaveAsExecute(Sender: TObject);
    procedure actEditUndoExecute(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure mEditClick(Sender: TObject);
  private
    { Private declarations }
    FileName: String;
  public
    { Public declarations }
  end;

var
  fmNotePad: TfmNotePad;

implementation

{$R *.dfm}

procedure TfmNotePad.actEditCopyExecute(Sender: TObject);
begin
  mmText.CopyToClipboard;
end;

procedure TfmNotePad.actEditCutExecute(Sender: TObject);
begin
  mmText.CutToClipboard;
end;

procedure TfmNotePad.actEditPasteExecute(Sender: TObject);
begin
  mmText.PasteFromClipboard;
end;

procedure TfmNotePad.actEditUndoExecute(Sender: TObject);
begin
  mmText.Undo;
end;

procedure TfmNotePad.actFileCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmNotePad.actFileNewExecute(Sender: TObject);
begin
  FileName := '';
  mmText.Lines.Clear;
end;

procedure TfmNotePad.actFileOpenExecute(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    FileName := OpenDialog.FileName;
    mmText.Lines.LoadFromFile(FileName);
  end;

end;

procedure TfmNotePad.actFileSaveAsExecute(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    FileName := SaveDialog.FileName;
    mmText.Lines.SaveToFile(FileName);
  end;
end;

procedure TfmNotePad.actFileSaveExecute(Sender: TObject);
begin
  if FileName = '' then
  begin
    actFileSaveAs.Execute;
  end else
  begin
    mmText.Lines.SaveToFile(FileName);
  end;
end;

procedure TfmNotePad.actSelectAllExecute(Sender: TObject);
begin
  mmText.SelectAll;
end;

procedure TfmNotePad.actSelectNoneExecute(Sender: TObject);
begin
  mmText.SelLength := 0;
end;

procedure TfmNotePad.actViewStatusbarExecute(Sender: TObject);
begin
  StatusBar.Visible := not StatusBar.Visible;
end;

procedure TfmNotePad.mEditClick(Sender: TObject);
begin
  mEditCopy.Enabled := mmText.SelLength <> 0;
  mEditPaste.Enabled := mmText.SelLength <> 0;
  mEditCut.Enabled := Clipboard.AsText <> '';
  mEditSelectAll.Enabled := mmText.SelLength <> Length(mmText.Lines.Text);
  mEditSelectNone.Enabled := mmText.SelLength <> 0;
  mEditUndo.Enabled := mmText.CanUndo;
end;

procedure TfmNotePad.mmTextChange(Sender: TObject);
begin
  StatusBar.SimpleText := IntToStr(mmText.Lines.Count - 1) + 'lines';
end;

procedure TfmNotePad.PopupMenuPopup(Sender: TObject);
begin
  pmCopy.Enabled := mmText.SelLength <> 0;
  pmPaste.Enabled := mmText.SelLength <> 0;
  pmCut.Enabled := mmText.SelLength <> 0;
end;

end.
