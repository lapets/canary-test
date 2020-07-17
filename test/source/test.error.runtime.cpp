#include <cstdint>

#if (defined(WIN32) || defined(_WIN32) || defined(__WIN32)) && !defined(__CYGWIN__)
    #define DLLEXPORT __declspec(dllexport)
#else
    #define DLLEXPORT
#endif

extern "C" {
    DLLEXPORT unsigned int canary(unsigned char* c, unsigned char* t) {
        c[INTPTR_MAX] = 123;
        return 0;
    }
}
