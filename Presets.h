//---------------------------------------------------------------------------

#ifndef PresetsH
#define PresetsH

//---------------------------------------------------------------------------

#include <vcl.h>

#include <vector>

//---------------------------------------------------------------------------

class TPresets
{
public:
	TPresets(const AnsiString Directory);

	void AvailablePresets(std::vector <AnsiString>& List);
private:
};

//---------------------------------------------------------------------------

#endif

//---------------------------------------------------------------------------
