#include <windows.h>

void Change(char *a, char *b) {
	COPYDATASTRUCT msndata;
	char buffer[1024];
	if(strlen(a) > 512) return;
	sprintf(buffer, "\\0%s\\01\\0{0}\\0%s\\0\\0\\0", a, b);
	WCHAR buf[sizeof(buffer)*2];
	MultiByteToWideChar(CP_ACP, 0, buffer, sizeof(buffer), buf, sizeof(buf));
	HWND msnui = FindWindow("MsnMsgrUIManager", NULL);
	msndata.dwData = 0x547;
	msndata.lpData = buf;
	msndata.cbData = (lstrlenW(buf)*2)+2;
	SendMessage(msnui, WM_COPYDATA, 0, (LPARAM)&msndata);
}

void Disable(void) {
	Change("Music","");
}