########################################################################
# Copyright (c) 1988-2017 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: rostra.pri
#
# Author: $author$
#   Date: 9/7/2017
#
# QtCreator .pri file for rostra
########################################################################

OTHER_PKG = ../../../../../../../..
OTHER_BLD = ..

########################################################################
# xos_rostra
XOS_ROSTRA_PKG = $${OTHER_PKG}/rostra/cpp/xos
XOS_ROSTRA_PRJ = $${XOS_ROSTRA_PKG}
XOS_ROSTRA_SRC = $${XOS_ROSTRA_PKG}/src

xos_rostra_INCLUDEPATH += \
$${XOS_ROSTRA_SRC} \

xos_rostra_DEFINES += \

xos_rostra_LIBS += \

########################################################################
# rostra
ROSTRA_PKG = ../../../../..
ROSTRA_BLD = ../..

ROSTRA_PRJ = $${ROSTRA_PKG}
ROSTRA_BIN = $${ROSTRA_BLD}/bin
ROSTRA_LIB = $${ROSTRA_BLD}/lib
ROSTRA_SRC = $${ROSTRA_PKG}/src

CONFIG(debug, debug|release) {
BUILD_CONFIG = Debug
rostra_DEFINES += DEBUG_BUILD
} else {
BUILD_CONFIG = Release
rostra_DEFINES += RELEASE_BUILD
}

rostra_INCLUDEPATH += \
$${ROSTRA_SRC} \
$${xos_rostra_INCLUDEPATH} \
$${build_rostra_INCLUDEPATH} \

rostra_DEFINES += \
$${xos_rostra_DEFINES} \
$${build_rostra_DEFINES} \

rostra_LIBS += \
-L$${ROSTRA_LIB}/librostra \
-lrostra \
