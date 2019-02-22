#!/bin/bash
program=$1 
case ${program} in 
  USE_AFTER_FREE) 
    ./use-after-free
    ;; 
  HEAP_BUFFER_OVERFLOW) 
    ./heap-buffer-overflow
    ;; 
  STACK_BUFFER_OVERFLOW) 
    ./stack-buffer-overflow
    ;; 
  GLOBAL_BUFFER_OVERFLOW) 
    ./global-buffer-overflow  
    ;;
  STACK_USE_AFTER_RETURN) 
    ./stack-use-after-return
    ;; 
  ADDRESS_USE_AFTER_SCOPE) 
    ./address-use-after-scope
    ;;
  MEMORY_LEAK) 
    ASAN_OPTIONS=detect_leaks=1 ./memory-leak
    ;; 
  UMR) 
    clang -fsanitize=memory -fno-omit-frame-pointer -g -O2 umr.c -o umr  
    ;;
  INTEGER_OVERFLOW) 
    ./integer-overflow
    ;;
  DIVIDE_BY_ZERO) 
    ./divide-by-zero
    ;;
   *)  
    echo "No such program" 
    exit 1 
    ;; 
esac 

