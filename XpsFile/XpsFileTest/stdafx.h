// stdafx.h : include file for standard system include files,
// or project specific include files that are used frequently, but
// are changed infrequently
//

#pragma once

#include "targetver.h"

#include <stdio.h>

#ifdef _DEBUG
#pragma comment(lib, "../../Common/DocxFormat/Source/XML/libxml2/win_build/x64/Debug/libxml2.lib")
#pragma comment(lib, "../../ASCOfficeUtils/ASCOfficeUtilsLib/Win/x64/Debug/ASCOfficeUtilsLib.lib")
#pragma comment(lib, "../x64/Debug/XpsFile.lib")
#pragma comment(lib, "../../DesktopEditor/Qt_build/graphics/project/debug/graphics.lib")
#else
#pragma comment(lib, "../x64/Release/XpsFile.lib")
#pragma comment(lib, "../../DesktopEditor/Qt_build/graphics/project/release/graphics.lib")
#endif


// TODO: reference additional headers your program requires here