# SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#
# SPDX-License-Identifier: EPICS

TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = oacTreeExample
# oacTreeExample.dbd will be created and installed
DBD += oacTreeExample.dbd

# oacTreeExample.dbd will be made up from these files:
oacTreeExample_DBD += base.dbd

# Include dbd files from all support applications:
#oacTreeExample_DBD += xxx.dbd
oacTreeExample_DBD += snc.dbd

# Add all the support libraries needed by this IOC
#oacTreeExample_LIBS += xxx
oacTreeExample_LIBS += seq pv

# oacTreeExample_registerRecordDeviceDriver.cpp derives from oacTreeExample.dbd
oacTreeExample_SRCS += oacTreeExample_registerRecordDeviceDriver.cpp
oacTreeExample_SRCS += sncVacuum.stt

# Build the main IOC entry point on workstation OSs.
oacTreeExample_SRCS_DEFAULT += oacTreeExampleMain.cpp
oacTreeExample_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#oacTreeExample_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

oacTreeExample_SNCFLAGS += +r

# standalone snc build
PROD_HOST += sncProgram
sncProgram_SNCFLAGS += +m
sncProgram_SRCS += sncProgram.st
sncProgram_LIBS += seq pv
sncProgram_LIBS += $(EPICS_BASE_HOST_LIBS)

# Finally link to the EPICS Base libraries
oacTreeExample_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

