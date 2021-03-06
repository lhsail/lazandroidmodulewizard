{Hint: save all files to location: \jni }
unit unit2;
  
{$mode delphi}
  
interface
  
uses
  Classes, SysUtils, And_jni, And_jni_Bridge, Laz_And_Controls,
  Laz_And_Controls_Events, AndroidWidget;
  
type

  { TAndroidModule2 }

  TAndroidModule2 = class(jForm)
      jButton1: jButton;
      jEditText1: jEditText;
      jEditText2: jEditText;
      jImageList1: jImageList;
      jImageView1: jImageView;
      jImageView2: jImageView;
      jImageView3: jImageView;
      jImageView4: jImageView;
      jImageView5: jImageView;
      jScrollView1: jScrollView;
      jTextView1: jTextView;
      jTextView2: jTextView;
      jTextView3: jTextView;
      procedure AndroidModule2Close(Sender: TObject);
      procedure AndroidModule2JNIPrompt(Sender: TObject);
      procedure jButton1Click(Sender: TObject);
    private
      {private declarations}
      FMens: string;
    public
      {public declarations}
  end;
  
var
  AndroidModule2: TAndroidModule2;

implementation

{$R *.lfm}

uses unit1;

{ TAndroidModule2 }

procedure TAndroidModule2.jButton1Click(Sender: TObject);
begin
  Self.Close;
end;

  //the last close event!
procedure TAndroidModule2.AndroidModule2Close(Sender: TObject);
begin
  ShowMessage('jForm 2 "game over!"!');
  Self.CallBackDataString:= jEditText1.Text;
  Self.CallBackDataInteger:= 3*StrToInt(jEditText2.Text);
  Self.CallBackDataDouble:= SQRT(Self.CallBackDataInteger);
end;

procedure TAndroidModule2.AndroidModule2JNIPrompt(Sender: TObject);
begin
  jEditText1.SetFocus;
end;

end.
