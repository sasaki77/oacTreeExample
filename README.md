# oac-tree example

## Run IOC

```bash
$ cd iocBoot/iocoacTreeExample/
$ ./st.cmd
#!../../bin/linux-x86_64/oacTreeExample
#< envPaths
## Register all support components
dbLoadDatabase "../../dbd/oacTreeExample.dbd"
oacTreeExample_registerRecordDeviceDriver(pdbbase)
## Load record instances
dbLoadRecords("../../db/test.db","user=sasaki")
dbLoadRecords("../../db/vacuum.db","user=ET_SASAKI")
iocInit()
Starting iocInit
############################################################################
## EPICS R7.0.9
## Rev. 2025-09-24T11:07+0900
## Rev. Date build date/time:
############################################################################
iocRun: All initialization complete
## Start any sequence programs
#seq sncVacuum,"user=ET_SASAKI"
epics> dbl
ET_SASAKI:VAC:PRES
ET_SASAKI:VAC:CRYO
ET_SASAKI:VAC:ROUGH
ET_SASAKI:VAC:VALVE
TEST:LONGOUT
TEST:LONGOUT1
TEST:LONGOUT2
TEST:LONGOUT3
ET_SASAKI:VAC:STAT
```

## Run OACTree

```bash
oac-tree-cli -f OACTree/vacuum.xml
```

## Run Sequencer

```bash
./bin/linux-x86_64/sncProgram "user=ET_SASAKI"
```
