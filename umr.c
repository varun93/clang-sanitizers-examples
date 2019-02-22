#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv) {
  int *a = NULL;
  a = malloc(10);
  a[5] = 0;
  if (a[argc])
    printf("xx\n");
  return 0;
}
