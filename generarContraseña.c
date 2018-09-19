#define _XOPEN_SOURCE
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main()
{
    printf("%s\n",crypt("abc","6"));
    exit(0);
}
