#include <stdlib.h>
#ifdef HOST
#include <stdio.h>
#endif
int main(void)
{
int i = 100;
#ifdef HOST
printf("Marhaban: %d\n",i);
#endif
return 0;
}

