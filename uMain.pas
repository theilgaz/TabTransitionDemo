unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Gestures, FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GestureManager1: TGestureManager;
    TabItem4: TTabItem;
    procedure TabControl1Gesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.TabControl1Gesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiRight:
      TabControl1.Previous(TTabTransition.Slide,TTabTransitionDirection.Normal);
    sgiLeft:
      TabControl1.Next(TTabTransition.Slide,TTabTransitionDirection.Normal);

  end;
end;

end.
