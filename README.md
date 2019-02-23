# Clang Sanitizers

- Clang sanitizers are runtime checkers used to identify suspicious and undefined behavior. The checking occurs at runtime with actual runtime parameters so false positives are kept to a minimum. 
- Sanitizers work in two phases, one is during compile time when it instruments the source code, and then there is the runtime checking. 
- It goes without saying sanitizers come with a performance cost in terms of both execution time and memory overhead which usually depends on the detail  of errors a developer wants to track, amount of memory allocated etc. Again for certain sanitizers developer can reduce the runtime overhead using ``` -fsanitize-minimal-runtime``` flag.
- Clang Sanitizers do not have support all architectures.  
- There are options to turn turn off sanitizer instrumentations by use of an attribute ``` __attribute__((no_sanitize("address"))) ```. 

There are a number of sanitizers available, but two that used on a regular basis are the Address Sanitizer (or ASan) and the Undefined Behavior Sanitizer (or UBSan). ASan is invoked with the compiler option -fsanitize=address, and UBSan is invoked with -fsanitize=undefined. The flags are passed through CFLAGS and CXXFLAGS, and sometimes through CC and CXX (in addition to the compiler).  

I have included examples of some of the most commonly used sanitizer options.Plan to update the list as and 
when I explore more.

**Note** : I have committed the executables in the repository just in case someone wants to quickly try it. 

- **Address Santizers**
  - Use After Free
  - Stack Buffer Flow
  - Heap Buffer Flow
  - Global Buffer Flow
  - Stack Use After Return
  - Address Use After Scope
  - Memory Leak

- **Undefined Behaviour Sanitizers**
  - Integer Overflow
  - Use of Null Pointer
  - Float Cast Overflow
  - Divide By Zero

- **Memory Sanitizers**
  - Unitialized Memory Read
 
  
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
  - INTEGER_OVERFLOW
  - DIVIDE_BY_ZERO

## Option Two:
Compile using clang and run the executable with relevant flags:  
``` clang -fsanitize=SANITIZER -g SOURCE_PROGRAM -o EXECUTABLE ```  
``` ./EXECUTABLE  ```


# Resources
 - [Address Sanitizer](http://clang.llvm.org/docs/AddressSanitizer.html)
 - [Memory Sanitzer](http://clang.llvm.org/docs/MemorySanitizer.html)
 - [UndefinedBehaviorSanitizer](https://clang.llvm.org/docs/UndefinedBehaviorSanitizer.html)
 - [Google Sanitizers Wiki](https://github.com/google/sanitizers/)
