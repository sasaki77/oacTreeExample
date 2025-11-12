#!../../bin/linux-x86_64/oacTreeExample

#- SPDX-FileCopyrightText: 2005 Argonne National Laboratory
#-
#- SPDX-License-Identifier: EPICS

#- You may have to change oacTreeExample to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase "../../dbd/oacTreeExample.dbd"
oacTreeExample_registerRecordDeviceDriver(pdbbase)

## Load record instances
dbLoadRecords("../../db/test.db","user=sasaki")
dbLoadRecords("../../db/vacuum.db","user=ET_SASAKI")

iocInit()

## Start any sequence programs
#seq sncVacuum,"user=ET_SASAKI"
