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
///   File: platform_unix.cpp
///
/// Author: $author$
///   Date: 9/11/2017
///////////////////////////////////////////////////////////////////////
#include "xos/platform/platform_unix.hpp"

namespace xos {
namespace platform {

} // namespace platform 
} // namespace xos 

#if !defined(WINDOWS)
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
BOOL WINAPI CloseHandle(
  _In_ HANDLE hObject
) {
    ::xos::platform::microsoft::windows::Handle* handle = 0;
    if ((handle = ((::xos::platform::microsoft::windows::Handle*)hObject))) {
        BOOL success = handle->CloseHandle();
        delete handle;
        return success;
    }
    return FALSE;
}
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
BOOL WINAPI ReleaseMutex(
  _In_ HANDLE hMutex
) {
    ::xos::platform::microsoft::windows::Handle* handle = 0;
    if ((handle = ((::xos::platform::microsoft::windows::Handle*)hMutex))) {
        BOOL success = handle->ReleaseMutex();
        return success;
    }
    return FALSE;
}
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
DWORD WINAPI WaitForSingleObject(
  _In_ HANDLE hHandle,
  _In_ DWORD  dwMilliseconds
) {
    ::xos::platform::microsoft::windows::Handle* handle = 0;
    if ((handle = ((::xos::platform::microsoft::windows::Handle*)hHandle))) {
        DWORD dwStatus = handle->WaitForSingleObject(dwMilliseconds);
        return dwStatus;
    }
    return WAIT_FAILED;
}
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
DWORD WINAPI GetLastError(void) {
    DWORD dwLastError = 1;
    return dwLastError;
}
#endif // !defined(WINDOWS)
