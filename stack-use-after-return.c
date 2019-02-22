#include <stdio.h>
#include <stdlib.h>

int *ptr;

__attribute__((noinline))
void some_function(){
  int local[100];
  ptr = &local[100];	
}

int main(int argc, char *argv[]){
 some_function();
 return ptr[argc];
}

