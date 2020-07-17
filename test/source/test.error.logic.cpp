#include <cstdint>

#if (defined(WIN32) || defined(_WIN32) || defined(__WIN32)) && !defined(__CYGWIN__)
    #define DLLEXPORT __declspec(dllexport)
#else
    #define DLLEXPORT
#endif

extern "C" {
    DLLEXPORT unsigned int canary(unsigned char* c, unsigned char* t) {
        if (t[0]=='t' && t[1]=='r' && t[2]=='e' && t[3]=='a' && t[4]=='t') {
            c[0] = 's'; c[1] = 'h'; c[2] = 'o'; c[3] = 'r'; c[4] = 'b';
        }
        return 1;
    }
}
