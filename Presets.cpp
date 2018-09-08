//---------------------------------------------------------------------------

#include "Presets.h"

//---------------------------------------------------------------------------

TPresets::TPresets(const AnsiString Directory)
{

}

//---------------------------------------------------------------------------

void TPresets::AvailablePresets(std::vector <AnsiString>& List)
{
	List.clear();

	List.push_back("testing");
	List.push_back("one");
	List.push_back("two");
}

//---------------------------------------------------------------------------

