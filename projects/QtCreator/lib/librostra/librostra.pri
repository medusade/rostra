########################################################################
# Copyright (c) 1988-2018 $organization$
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
#   File: librostra.pri
#
# Author: $author$
#   Date: 5/6/2018, 12/26/2020
#
# QtCreator .pri file for rostra library librostra
########################################################################

########################################################################
# librostra

# librostra TARGET
#
librostra_TARGET = rostra
librostra_TEMPLATE = lib
librostra_CONFIG += staticlib

# librostra INCLUDEPATH
#
librostra_INCLUDEPATH += \
$${rostra_INCLUDEPATH} \

# librostra DEFINES
#
librostra_DEFINES += \
$${rostra_DEFINES} \
XOS_DEFAULT_LOG_ERROR \

########################################################################
# librostra OBJECTIVE_HEADERS
#
#librostra_OBJECTIVE_HEADERS += \
#$${ROSTRA_SRC}/rostra/base/Base.hh \

# librostra OBJECTIVE_SOURCES
#
#librostra_OBJECTIVE_SOURCES += \
#$${ROSTRA_SRC}/rostra/base/Base.mm \

########################################################################
# librostra HEADERS
#
librostra_HEADERS += \
$${ROSTRA_SRC}/xos/platform/platform.hpp \
$${ROSTRA_SRC}/xos/lib/rostra/version.hpp \

# librostra SOURCES
#
librostra_SOURCES += \
$${ROSTRA_SRC}/xos/platform/platform.cpp \
$${ROSTRA_SRC}/xos/lib/rostra/version.cpp \

########################################################################



