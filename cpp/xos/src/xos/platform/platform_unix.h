/*/
///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2017 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: platform_unix.h
///
/// Author: $author$
///   Date: 7/23/2017
///////////////////////////////////////////////////////////////////////
/*/
#ifndef _XOS_PLATFORM_PLATFORM_UNIX_H
#define _XOS_PLATFORM_PLATFORM_UNIX_H

#include "xos/platform/platform_build.h"
#include "xos/platform/platform_compiler.h"
#include "xos/platform/platform_includes.h"
#include "xos/platform/platform_defines.h"
#include "xos/platform/platform_types.h"
#include "xos/platform/platform_api.h"

#if !defined(WINDOWS)
/*/////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////*/
enum {
    WAIT_FAILED    = -1,
    WAIT_OBJECT_0  = 0,
    WAIT_ABANDONED = 0x80,
    WAIT_TIMEOUT   = 0x102
};
typedef struct _SECURITY_ATTRIBUTES {
  DWORD  nLength;
  LPVOID lpSecurityDescriptor;
  BOOL   bInheritHandle;
} SECURITY_ATTRIBUTES, *PSECURITY_ATTRIBUTES, *LPSECURITY_ATTRIBUTES;

/*/////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////*/
#if defined(__cplusplus)
extern "C" {
#endif /*/ defined(__cplusplus)  /*/

HANDLE WINAPI CreateMutex(
  _In_opt_ LPSECURITY_ATTRIBUTES lpMutexAttributes,
  _In_     BOOL                  bInitialOwner,
  _In_opt_ LPCTSTR               lpName
);
BOOL WINAPI ReleaseMutex(
  _In_ HANDLE hMutex
);
DWORD WINAPI WaitForSingleObject(
  _In_ HANDLE hHandle,
  _In_ DWORD  dwMilliseconds
);
BOOL WINAPI CloseHandle(
  _In_ HANDLE hObject
);
DWORD WINAPI GetLastError(void);

#if defined(__cplusplus)
} /*/ extern "C" /*/
#endif /*/ defined(__cplusplus)  /*/
/*/////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////*/
#endif /*/ !defined(WINDOWS) /*/

#if defined(__cplusplus)
namespace xos {
#endif /*/ defined(__cplusplus)  /*/

#if defined(__cplusplus)
} /*/ namespace xos /*/
#endif /*/ defined(__cplusplus)  /*/

#endif // _XOS_PLATFORM_PLATFORM_UNIX_H
