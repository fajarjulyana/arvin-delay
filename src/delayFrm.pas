unit delayFrm;

interface

uses 
  Windows, Messages, SysUtils, Classes, Forms, DAVDCommon, DVSTModule,
  cDIBImageList, cDIBControl, cDIBImage, Controls, ExtCtrls, cDIBPanel,
  cDIBKnob;

type
  TEditorDelay = class(TForm)
    DIBContainer1: TDIBContainer;
    DIBImage1: TDIBImage;
    skin: TDIBImageList;
    Knob: TDIBImageList;
    DIBKnob1: TDIBKnob;
    DIBKnob2: TDIBKnob;
    procedure DIBKnob2Change(Sender: TObject);
    procedure DIBKnob1Change(Sender: TObject);
  end;

implementation

{$R *.DFM}

procedure TEditorDelay.DIBKnob2Change(Sender: TObject);
begin
DIBKnob2.IndexMain.DIBIndex := DIBKnob2.Position;
end;

procedure TEditorDelay.DIBKnob1Change(Sender: TObject);
begin
DIBKnob1.IndexMain.DIBIndex := DIBKnob1.Position;
end;

end.