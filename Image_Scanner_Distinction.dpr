program Image_Scanner_Distinction;

uses
  Forms,
  Start_Form in 'Start_Form.pas' {StartForm},
  OneImage_Form in 'OneImage_Form.pas' {OneImageForm},
  TwoImage_Form in 'TwoImage_Form.pas' {TwoImageForm},
  PixelSelect_Form in 'PixelSelect_Form.pas' {PixelSelectPreview_Form},
  OneImageTools_Form in 'OneImageTools_Form.pas' {OneImageToolsForm},
  TwoImageTools_Form in 'TwoImageTools_Form.pas' {TwoImageToolsForm};

{$R *.res}
{$SetPEFlags $20} //можно использовать >2Gb

begin
  Application.Initialize;
  Application.Title := 'Отличия в изображениях';
  Application.CreateForm(TStartForm, StartForm);
  Application.CreateForm(TPixelSelectPreview_Form, PixelSelectPreview_Form);
//  Application.CreateForm(TOneImageToolsForm, OneImageToolsForm);
  Application.CreateForm(TTwoImageToolsForm, TwoImageToolsForm);
  Application.Run;
end.
