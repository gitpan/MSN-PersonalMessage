#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "msn.c"

MODULE = MSN::PersonalMessage		PACKAGE = MSN::PersonalMessage		

void 
Change(char *type, char *message)

void 
Disable()
