# Clang Sanitizers

Plan to update the list as and when I explore more.

- Address Santizers
  - Use After Free
  - Stack Buffer Flow
  - Heap Buffer Flow
  - Global Buffer Flow
  - Stack Use After Return
  - Address Use After Scope
  - Memory Leak

- Memory Sanitizers
  - Unitialized Memory Read
 
- Undefined Behaviour Sanitizers
  - Integer Overflow
  - Use of Null Pointer
  - Float Cast Overflow
  - Divide By Zero
  
# How to Run?

## Option one

For quick run execute  

``` ./run-tests.sh PROGRAM_NAME  ```

PROGRAM_NAME can take the following values:  
  - USE_AFTER_FREE
  - HEAP_BUFFER_OVERFLOW
  - STACK_BUFFER_OVERFLOW
  - GLOBAL_BUFFER_OVERFLOW
  - STACK_USE_AFTER_RETURN
  - ADDRESS_USE_AFTER_SCOPE
  - MEMORY_LEAK
  - UMR

## Option Two:
Compile using clang and run the executable with relevant flags:  
``` clang -fsanitize=SANITIZER -g SOURCE_PROGRAM -o EXECUTABLE ```  
``` ./EXECUTABLE  ```


# Resources
 - [Address Sanitizer](http://clang.llvm.org/docs/AddressSanitizer.html)
 - [Memory Sanitzer](http://clang.llvm.org/docs/MemorySanitizer.html)
 - [UndefinedBehaviorSanitizer](https://clang.llvm.org/docs/UndefinedBehaviorSanitizer.html)
 - [Google Sanitizers Wiki](https://github.com/google/sanitizers/)
