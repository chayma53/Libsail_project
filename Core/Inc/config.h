/*  This file is part of SAIL (https://github.com/smoked-herring/sail)

    Copyright (c) 2020 Dmitry Baryshev

    The MIT License

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
*/

#ifndef SAIL_CONFIG_H
#define SAIL_CONFIG_H

#define SAIL_VERSION_MAJOR 0
#define SAIL_VERSION_MINOR 9
#define SAIL_VERSION_PATCH 0

#define SAIL_VERSION_STRING "0.9.0"

#define SAIL_BUILD_VERSION(major, minor, patch) ((major << 16) | (minor << 8) | (patch))

#define SAIL_VERSION SAIL_BUILD_VERSION(0, 9, 0)

/* Unused when SAIL_COMBINE_CODECS is ON. */
#define SAIL_CODECS_PATH ""
#define SAIL_AZURE_RTOS
#ifdef SAIL_AZURE_RTOS
#include "tx_api.h"
extern TX_BYTE_POOL tx_app_byte_pool;
#define sail_pool tx_app_byte_pool
// #define tx_byte_allocate
#endif
#define SAIL_COMBINE_CODECS

//#define SAIL_UNIX --> modifié

/* #undef SAIL_MINGW */
/* #undef SAIL_CYGWIN */
/* #undef SAIL_APPLE */

#define SAIL_HAVE_ALIGNAS

#ifdef SAIL_HAVE_ALIGNAS
    #define SAIL_ALIGNAS(x) _Alignas(x)
#else
    #define SAIL_ALIGNAS(x)
#endif

/* Do we compile for VCPKG (port or client)? */
/* #undef SAIL_VCPKG */

/* Build static libs. SAIL_SHARED_[ON|OFF] is a helper macro, use SAIL_STATIC instead. */
#define SAIL_SHARED_OFF

#ifdef SAIL_SHARED_OFF
    #define SAIL_STATIC
#endif

/* Combine all codecs into a single library. */
#define SAIL_COMBINE_CODECS

/* Buffer size to read from I/O sources to detect file types by magic numbers. */
#define SAIL_MAGIC_BUFFER_SIZE 16

/* Load third-party codecs from SAIL_THIRD_PARTY_CODECS_PATH. */
//#define SAIL_THIRD_PARTY_CODECS_PATH

/* Enable working in multi-threaded environments. */
//#define SAIL_THREAD_SAFE

#endif
