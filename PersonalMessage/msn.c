#include <windows.h>

void Change(char *type, char *message) {
	unsigned int message_len = strlen(message);
	
	char *ascii_buf = (char*)malloc(sizeof(char)*(message_len)+32);
	sprintf(ascii_buf, "\\0%s\\01\\0{0}\\0%s\\0\\0\\0", type, message);
	WCHAR *utf8_buf = (WCHAR*)malloc(sizeof(WCHAR)*(message_len)+64);
	MultiByteToWideChar(CP_ACP, 0, ascii_buf,sizeof(char)*(message_len)+32 , utf8_buf, sizeof(WCHAR)*(message_len)+64);

	HWND msnui = FindWindow("MsnMsgrUIManager", NULL);
	COPYDATASTRUCT msndata;	
	msndata.dwData = 0x547;
	msndata.lpData = utf8_buf;
	msndata.cbData = (lstrlenW(utf8_buf)*2)+2;
	SendMessage(msnui, WM_COPYDATA, 0, (LPARAM)&msndata);
	
	free(ascii_buf);
	free(utf8_buf);
}

void Disable(void) {
	Change("Music","");
}