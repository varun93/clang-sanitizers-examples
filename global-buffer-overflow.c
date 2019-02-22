#include<stdio.h>
#include<stdlib.h>
int array[100] = {-1};
int main(int argc, char **argv) {
  return array[argc + 100];  // !! illegal access
}

