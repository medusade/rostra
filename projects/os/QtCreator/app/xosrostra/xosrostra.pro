########################################################################
# Copyright (c) 1988-2021 $organization$
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
#   File: xosrostra.pro
#
# Author: $author$
#   Date: 6/13/2021
#
# QtCreator .pro file for xosrostra executable xosrostra
########################################################################
include(../../../../../build/QtCreator/xosrostra.pri)
include(../../../../QtCreator/xosrostra.pri)
include(../../xosrostra.pri)
include(../../../../QtCreator/app/xosrostra/xosrostra.pri)

TARGET = $${xosrostra_exe_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${xosrostra_exe_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${xosrostra_exe_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${xosrostra_exe_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${xosrostra_exe_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${xosrostra_exe_HEADERS} \
$${xosrostra_exe_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${xosrostra_exe_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${xosrostra_exe_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${xosrostra_exe_LIBS} \
$${FRAMEWORKS} \


