#include <TargetConditionals.h>

/* opensslconf.h */
#if TARGET_OS_IPHONE && TARGET_OS_IOS && defined(__APPLE__) && (defined (__arm64__) || defined (__aarch64__))
# include <openssl/opensslconf-ios-arm64.h>
#endif

#if TARGET_OS_IPHONE && TARGET_OS_IOS && defined(__APPLE__) && defined (__arm__) && (defined (__ARM_ARCH_7A__) || defined (__ARM_ARCH_7S__))
# include <openssl/opensslconf-ios-armv7.h>
#endif

#if TARGET_OS_SIMULATOR
# include <openssl/opensslconf-sim.h>
#endif

#if !TARGET_OS_IPHONE && !TARGET_OS_SIMULATOR && TARGET_OS_MAC && defined(__APPLE__) && defined (__x86_64__)
# include <openssl/opensslconf-osx-x86_64.h>
#endif

#if !TARGET_OS_IPHONE && !TARGET_OS_SIMULATOR && TARGET_OS_MAC && defined(__APPLE__) && (defined (__arm64__) || defined (__aarch64__))
# include <openssl/opensslconf-osx-arm64.h>
#endif

