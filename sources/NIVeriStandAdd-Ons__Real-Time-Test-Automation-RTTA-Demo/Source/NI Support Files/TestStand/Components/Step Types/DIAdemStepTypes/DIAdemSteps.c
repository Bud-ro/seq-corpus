#include <cvirte.h>		

#define CLEAR(__handle, __func)             \
    if(__handle)                   			\
    {			                            \
        __func(__handle);     		   	    \
        __handle = 0;                       \
    }


int __stdcall DllMain (HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved)
{
	switch (fdwReason)
		{
		case DLL_PROCESS_ATTACH:
			if (InitCVIRTE (hinstDLL, 0, 0) == 0)		
				return 0;	/* out of memory */
			break;
		case DLL_PROCESS_DETACH:
			if (!CVIRTEHasBeenDetached())		/* Do not call CVI functions if cvirte.dll has already been detached. */
				{
				CloseCVIRTE ();		
				}
			break;
		}

	return 1;
}


