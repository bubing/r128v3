//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H

//---------------------------------------------------------------------------

#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.Dialogs.hpp>
#include <Xml.XMLDoc.hpp>
#include <Xml.xmldom.hpp>
#include <Xml.XMLIntf.hpp>

#include <map>

#include "Presets.h"

//---------------------------------------------------------------------------

class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TMemo *OutputMemo;
	TGroupBox *GroupBox1;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TRadioGroup *ProcessingModeRadioGroup;
	TEdit *InputEdit;
	TEdit *LoudnessEdit;
	TEdit *TruePeakEdit;
	TEdit *LoudnessRangeEdit;
	TUpDown *LoudnessUpDown;
	TUpDown *TruePeakUpDown;
	TUpDown *LoudnessRangeUpDown;
	TSpeedButton *InputSpeedButton;
	TGroupBox *GroupBox2;
	TGroupBox *GroupBox3;
	TBitBtn *DoBitBtn;
	TEdit *FrameLengthEdit;
	TEdit *Edit6;
	TEdit *Edit7;
	TEdit *Edit8;
	TEdit *Edit9;
	TEdit *Edit10;
	TUpDown *FrameLengthUpDown;
	TUpDown *GaussFilterUpDown;
	TUpDown *TargetPeakUpDown;
	TUpDown *MaxGainUpDown;
	TUpDown *TargetRMSUpDown;
	TUpDown *CompressFactorUpDown;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Label7;
	TLabel *Label8;
	TLabel *Label9;
	TLabel *Label10;
	TCheckBox *DCBiasCorrectionCheckBox;
	TCheckBox *ChannelCouplingCheckBox;
	TCheckBox *AlternativeBoundaryModeCheckBox;
	TButton *SavePresetButton;
	TMemo *PresetMemo;
	TLabel *Label11;
	TOpenDialog *InputOpenDialog;
	TStatusBar *StatusBar;
	TComboBox *PresetsComboBox;
	TXMLDocument *XMLDocument1;
	void __fastcall InputSpeedButtonClick(TObject *Sender);
	void __fastcall DoBitBtnClick(TObject *Sender);
	void __fastcall SavePresetButtonClick(TObject *Sender);
	void __fastcall Label11Click(TObject *Sender);
	void __fastcall PresetsComboBoxSelect(TObject *Sender);
	void __fastcall PresetMemoClick(TObject *Sender);
private:	// User declarations
	bool Execute(const AnsiString Command);
	void ParseJSON(std::map <AnsiString, AnsiString>& Dictionary, AnsiString Text);
	void PopulateComboBox();

	AnsiString FInputFile;
	TPresets* FPresets;

public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
	__fastcall ~TForm1();
};

//---------------------------------------------------------------------------

extern PACKAGE TForm1 *Form1;

//---------------------------------------------------------------------------

#endif

//---------------------------------------------------------------------------

