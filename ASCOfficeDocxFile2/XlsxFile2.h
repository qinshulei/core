#pragma once
#include "resource.h" 
#include "../Common/OfficeFileTemplate.h"
#include "DocWrapper/XlsxSerializer.h"
#include "../XlsxSerializerCom/Common/Common.h"
#include "../XlsxSerializerCom/Common/BinReaderWriterDefines.h"
#include "../DesktopEditor/common/Directory.h"

[
	object,
	uuid("B7AD8AA6-A103-4260-82BE-338C32543B90"),
	dual,	helpstring("IAVSOfficeXlsxSerizer Interface"),
	pointer_default(unique)
]
__interface IAVSOfficeXlsxSerizer : public IAVSOfficeFileTemplate
{
	[id(20)] HRESULT SetFontDir([in] BSTR bsFontDir);

	[id(30)] HRESULT LoadChart([in] BSTR bsFilename, [out, satype("BYTE")] SAFEARRAY** ppBinary);
	[id(31)] HRESULT SaveChart([in, satype("BYTE")] SAFEARRAY* pBinaryObj, [in] LONG lStart, [in] LONG lLength, [in] BSTR bsFilename, [in] BSTR bsContentTypePath, [out] BSTR* bsContentTypeElement);
	[id(32)] HRESULT SetDrawingConverter([in] IUnknown* pDocument);

	[id(120)]	HRESULT SetAdditionalParam([in] BSTR ParamName, [in] VARIANT ParamValue);
	[id(130)]	HRESULT GetAdditionalParam([in] BSTR ParamName, [out, retval] VARIANT* ParamValue);
};

[
	coclass,
	default(IAVSOfficeXlsxSerizer),
	event_receiver(native),
	threading(apartment),
	vi_progid("ASCOfficeXlsxSerizer.AVSDocume"),
	progid("ASCOfficeXlsxSerizer.AVSDocu.1"),
	version(1.0),
	uuid("BDE1A2A6-2EE0-4507-BD2E-0C42DA4101C2"),
	helpstring("ASCOfficeXlsxSerizer Class")
]
class ATL_NO_VTABLE CAVSOfficeXlsxSerizer : public IAVSOfficeXlsxSerizer
{
private:
	BinXlsxRW::CXlsxSerializer m_oXlsxSerializer;
	IUnknown* m_pThis;
public:
	CAVSOfficeXlsxSerizer()
	{
	}

	DECLARE_PROTECT_FINAL_CONSTRUCT()

	HRESULT FinalConstruct()
	{
		return S_OK;
	}

	void FinalRelease()
	{
	}
public:
	STDMETHOD(LoadFromFile)(BSTR sSrcFileName, BSTR bstrDstPath, BSTR bstrXMLOptions)
	{
		CString sDstPath = bstrDstPath;
		CString sMediaPath;
		
		m_oXlsxSerializer.CreateXlsxFolders(CString(bstrXMLOptions), sDstPath, sMediaPath);

		bool bRes = m_oXlsxSerializer.loadFromFile(CString(sSrcFileName), sDstPath, CString(bstrXMLOptions), sMediaPath);
		return bRes ? S_OK : S_FALSE;
	}
	STDMETHOD(SaveToFile)(BSTR sDstFileName, BSTR sSrcPath, BSTR sXMLOptions)
	{
		bool bRes = m_oXlsxSerializer.saveToFile(CString(sDstFileName), CString(sSrcPath), CString(sXMLOptions)) ? S_OK : S_FALSE;
		return bRes ? S_OK : S_FALSE;
	}
	STDMETHOD(LoadChart)(BSTR bsFilename, SAFEARRAY** ppBinary)
	{
		unsigned char* pData = NULL;
		long lDataSize = 0;
		bool bRes = true;
		//m_oXlsxSerializer.loadChart(CString(bsFilename), &pData, lDataSize);
		if(NULL != pData && lDataSize > 0)
		{
			SAFEARRAYBOUND	rgsabound[1];
			rgsabound[0].lLbound = 0;
			rgsabound[0].cElements = lDataSize;
			LPSAFEARRAY pArray = SafeArrayCreate(VT_UI1, 1, rgsabound);

			BYTE* pDataD = (BYTE*)pArray->pvData;
			BYTE* pDataS = pData;
			memcpy(pDataD, pDataS, lDataSize);

			*ppBinary = pArray;
		}
		RELEASEARRAYOBJECTS(pData);
		return bRes ? S_OK : S_FALSE;
	}
	STDMETHOD(SaveChart)(SAFEARRAY* pBinaryObj, LONG lStart, LONG lLength, BSTR bsFilename, BSTR bsContentTypePath, BSTR* bsContentTypeElement)
	{
		CString* sContentTypeElement = NULL;
		bool bRes = true;
		//m_oXlsxSerializer.saveChart(pBinaryObj, lStart, lLength, CString(bsFilename), CString(bsContentTypePath), &sContentTypeElement);
		if(NULL != sContentTypeElement)
			*bsContentTypeElement = sContentTypeElement->AllocSysString();
		return bRes ? S_OK : S_FALSE;
	}
	STDMETHOD(SetDrawingConverter)(IUnknown* pDocument)
	{
		//m_oXlsxSerializer.setDrawingConverter(pDocument);
		return S_OK;
	}
	STDMETHOD(SetFontDir)(BSTR bsFontDir)
	{
		m_oXlsxSerializer.setFontDir(CString(bsFontDir));
		return S_OK;
	}
	STDMETHOD(SetAdditionalParam)(BSTR ParamName, VARIANT ParamValue)
	{
		CString sParamName; sParamName = ParamName;
		if (_T("EmbeddedFontsDirectory") == sParamName && ParamValue.vt == VT_BSTR)
		{		
			m_oXlsxSerializer.setEmbeddedFontsDir(CString(ParamValue.bstrVal));
			return S_OK;
		}		
		return S_OK;
	}
	STDMETHOD(GetAdditionalParam)(BSTR ParamName, VARIANT* ParamValue)
	{
		return S_OK;
	}
private:

};