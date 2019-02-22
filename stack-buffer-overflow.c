#include<stdio.h>
#include<stdlib.h>

int main(int argc, char **argv) {
  int array[100];
  array[0] = 0;
  return array[argc + 100];  // !! illegal access
}

