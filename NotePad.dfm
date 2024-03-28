object fmNotePad: TfmNotePad
  Left = 0
  Top = 0
  Caption = 'Notepad'
  ClientHeight = 532
  ClientWidth = 856
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu
  TextHeight = 15
  object mmText: TMemo
    Left = 0
    Top = 0
    Width = 856
    Height = 513
    Align = alClient
    Lines.Strings = (
      '')
    PopupMenu = PopupMenu
    TabOrder = 0
    OnChange = mmTextChange
    ExplicitTop = -6
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 513
    Width = 856
    Height = 19
    Panels = <>
    ExplicitLeft = 440
    ExplicitTop = 288
    ExplicitWidth = 0
  end
  object MainMenu: TMainMenu
    Left = 728
    Top = 16
    object mFile: TMenuItem
      Caption = 'File'
      object mFileNew: TMenuItem
        Action = actFileNew
      end
      object mFileOpen: TMenuItem
        Action = actFileOpen
      end
      object mFileSave: TMenuItem
        Action = actFileSave
      end
      object mFileSaveAs: TMenuItem
        Action = actFileSaveAs
      end
      object mFileClose: TMenuItem
        Action = actFileClose
      end
    end
    object mEdit: TMenuItem
      Caption = 'Edit'
      OnClick = mEditClick
      object mEditCopy: TMenuItem
        Action = actEditCopy
      end
      object mEditPaste: TMenuItem
        Action = actEditPaste
      end
      object mEditCut: TMenuItem
        Action = actEditCut
      end
      object mEditN1: TMenuItem
        Caption = '-'
      end
      object mEditSelectAll: TMenuItem
        Action = actSelectAll
      end
      object mEditSelectNone: TMenuItem
        Action = actSelectNone
      end
      object mEditN2: TMenuItem
        Caption = '-'
      end
      object mEditUndo: TMenuItem
        Action = actEditUndo
      end
    end
    object mView: TMenuItem
      Caption = 'View'
      object mViewStatusbar: TMenuItem
        Action = actViewStatusbar
        AutoCheck = True
      end
    end
  end
  object ActionList: TActionList
    Left = 680
    Top = 16
    object actFileNew: TAction
      Category = 'File'
      Caption = 'New'
      ShortCut = 16462
      OnExecute = actFileNewExecute
    end
    object actFileOpen: TAction
      Category = 'File'
      Caption = 'Open...'
      ShortCut = 16463
      OnExecute = actFileOpenExecute
    end
    object actFileSave: TAction
      Category = 'File'
      Caption = 'Save'
      ShortCut = 16467
      OnExecute = actFileSaveExecute
    end
    object actFileSaveAs: TAction
      Category = 'File'
      Caption = 'Save As...'
      OnExecute = actFileSaveAsExecute
    end
    object actFileClose: TAction
      Category = 'File'
      Caption = 'Close'
      OnExecute = actFileCloseExecute
    end
    object actEditCopy: TAction
      Category = 'Edit'
      Caption = 'Copy'
      ShortCut = 16451
      OnExecute = actEditCopyExecute
    end
    object actEditPaste: TAction
      Category = 'Edit'
      Caption = 'Paste'
      ShortCut = 16470
      OnExecute = actEditPasteExecute
    end
    object actEditCut: TAction
      Category = 'Edit'
      Caption = 'Cut'
      ShortCut = 16472
      OnExecute = actEditCutExecute
    end
    object actSelectAll: TAction
      Category = 'Edit'
      Caption = 'Select All'
      ShortCut = 16449
      OnExecute = actSelectAllExecute
    end
    object actSelectNone: TAction
      Category = 'Edit'
      Caption = 'Select None'
      OnExecute = actSelectNoneExecute
    end
    object actViewStatusbar: TAction
      Category = 'View'
      AutoCheck = True
      Caption = 'Status Bar'
      Checked = True
      OnExecute = actViewStatusbarExecute
    end
    object actEditUndo: TAction
      Category = 'Edit'
      Caption = 'Undo'
      ShortCut = 16474
      OnExecute = actEditUndoExecute
    end
    object actEdit: TAction
      Category = 'Edit'
      Caption = 'Edit'
    end
    object actFile: TAction
      Category = 'File'
      Caption = 'File'
    end
    object actView: TAction
      Category = 'View'
      Caption = 'View'
    end
  end
  object PopupMenu: TPopupMenu
    OnPopup = PopupMenuPopup
    Left = 632
    Top = 16
    object pmCopy: TMenuItem
      Action = actEditCopy
    end
    object pmCut: TMenuItem
      Action = actEditCut
    end
    object pmPaste: TMenuItem
      Action = actEditPaste
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Text Files (*.txt)|*.txt|All Files (*.*)|*.*'
    Left = 824
    Top = 16
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text Files (*.txt)|*.txt|All Files (*.*)|*.*'
    Left = 776
    Top = 16
  end
end
