#include<stdio.h>
#include<stdlib.h>

int main(int argc, char **argv) {
  int *array = NULL;
  array = malloc(sizeof(int)*100);
  array[0] = 0;
  int res = array[argc + 100];  // !! illegal access
  free(array);
  return res;
}

