::/*#! 2> /dev/null                                   #
@ 2>/dev/null # 2>nul & echo off & goto BOF           #
if [ -z ${SIREUM_HOME} ]; then                        #
  echo "Please set SIREUM_HOME env var"               #
  exit -1                                             #
fi                                                    #
exec ${SIREUM_HOME}/bin/sireum slang run "$0" "$@"    #
:BOF
setlocal
if not defined SIREUM_HOME (
  echo Please set SIREUM_HOME env var
  exit /B -1
)
%SIREUM_HOME%\\bin\\sireum.bat slang run "%0" %*
exit /B %errorlevel%
::!#*/
// #Sireum

import org.sireum._

val SCRIPT_HOME: Os.Path = Os.slashDir
val PATH_SEP: String = Os.pathSep

val InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Instrumentation${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread",
  "--name", "InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread",
  "--apps", "RTS.InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread.instrumentationMockThread",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",

  //"--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=24;IS[Z,art.Art.PortId]=24",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=24;IS[Z,art.Art.PortId]=24;ISZ[((B,B,B,B,B,B,B,B,B,B,B,B),(B,B,B,B,B,B,B,B,B,B,B,B))]=9",

  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=24;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread.cmake",
  "--forward", "art.ArtNative=RTS.InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread.instrumentationMockThread",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread/InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread/InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread_adapter.c",
  "--lib-only")

val EventControlMockThread_i_eventControlMock_eventControlMockThread: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/EventControl${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/EventControlMockThread_i_eventControlMock_eventControlMockThread",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/EventControlMockThread_i_eventControlMock_eventControlMockThread",
  "--name", "EventControlMockThread_i_eventControlMock_eventControlMockThread",
  "--apps", "RTS.EventControlMockThread_i_eventControlMock_eventControlMockThread.eventControlMockThread",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",

  //"--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.Art.PortId]=2",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.Art.PortId]=2;IS[Z,(B,B)]=9",

  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=2;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_EventControlMockThread_i_eventControlMock_eventControlMockThread.cmake",
  "--forward", "art.ArtNative=RTS.EventControlMockThread_i_eventControlMock_eventControlMockThread.eventControlMockThread",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/EventControlMockThread_i_eventControlMock_eventControlMockThread/EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/EventControlMockThread_i_eventControlMock_eventControlMockThread/EventControlMockThread_i_eventControlMock_eventControlMockThread_adapter.c",
  "--lib-only")

val ActuatorsMockThread_i_actuatorsMock_actuatorsMockThread: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuators${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/ActuatorsMockThread_i_actuatorsMock_actuatorsMockThread",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/ActuatorsMockThread_i_actuatorsMock_actuatorsMockThread",
  "--name", "ActuatorsMockThread_i_actuatorsMock_actuatorsMockThread",
  "--apps", "RTS.ActuatorsMockThread_i_actuatorsMock_actuatorsMockThread.actuatorsMockThread",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.Art.PortId]=2",
  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=2;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_ActuatorsMockThread_i_actuatorsMock_actuatorsMockThread.cmake",
  "--forward", "art.ArtNative=RTS.ActuatorsMockThread_i_actuatorsMock_actuatorsMockThread.actuatorsMockThread",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/ActuatorsMockThread_i_actuatorsMock_actuatorsMockThread/ActuatorsMockThread_i_actuatorsMock_actuatorsMockThread_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/ActuatorsMockThread_i_actuatorsMock_actuatorsMockThread/ActuatorsMockThread_i_actuatorsMock_actuatorsMockThread_adapter.c",
  "--lib-only")

val CoincidenceLogic_i_actuationSubsystem_actuationUnit1_temperatureLogic_coincidenceLogic: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuation${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_temperatureLogic_coincidenceLogic",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_temperatureLogic_coincidenceLogic",
  "--name", "CoincidenceLogic_i_actuationSubsystem_actuationUnit1_temperatureLogic_coincidenceLogic",
  "--apps", "RTS.CoincidenceLogic_i_actuationSubsystem_actuationUnit1_temperatureLogic_coincidenceLogic.coincidenceLogic",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=4;IS[Z,art.Art.PortId]=4",
  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=5;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_CoincidenceLogic_i_actuationSubsystem_actuationUnit1_temperatureLogic_coincidenceLogic.cmake",
  "--forward", "art.ArtNative=RTS.CoincidenceLogic_i_actuationSubsystem_actuationUnit1_temperatureLogic_coincidenceLogic.coincidenceLogic",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_temperatureLogic_coincidenceLogic/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_temperatureLogic_coincidenceLogic_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_temperatureLogic_coincidenceLogic/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_temperatureLogic_coincidenceLogic_adapter.c",
  "--lib-only")

val CoincidenceLogic_i_actuationSubsystem_actuationUnit1_pressureLogic_coincidenceLogic: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuation${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_pressureLogic_coincidenceLogic",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_pressureLogic_coincidenceLogic",
  "--name", "CoincidenceLogic_i_actuationSubsystem_actuationUnit1_pressureLogic_coincidenceLogic",
  "--apps", "RTS.CoincidenceLogic_i_actuationSubsystem_actuationUnit1_pressureLogic_coincidenceLogic.coincidenceLogic",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=4;IS[Z,art.Art.PortId]=4",
  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=5;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_CoincidenceLogic_i_actuationSubsystem_actuationUnit1_pressureLogic_coincidenceLogic.cmake",
  "--forward", "art.ArtNative=RTS.CoincidenceLogic_i_actuationSubsystem_actuationUnit1_pressureLogic_coincidenceLogic.coincidenceLogic",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_pressureLogic_coincidenceLogic/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_pressureLogic_coincidenceLogic_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_pressureLogic_coincidenceLogic/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_pressureLogic_coincidenceLogic_adapter.c",
  "--lib-only")

val CoincidenceLogic_i_actuationSubsystem_actuationUnit1_saturationLogic_coincidenceLogic: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuation${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_saturationLogic_coincidenceLogic",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_saturationLogic_coincidenceLogic",
  "--name", "CoincidenceLogic_i_actuationSubsystem_actuationUnit1_saturationLogic_coincidenceLogic",
  "--apps", "RTS.CoincidenceLogic_i_actuationSubsystem_actuationUnit1_saturationLogic_coincidenceLogic.coincidenceLogic",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=4;IS[Z,art.Art.PortId]=4",
  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=5;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_CoincidenceLogic_i_actuationSubsystem_actuationUnit1_saturationLogic_coincidenceLogic.cmake",
  "--forward", "art.ArtNative=RTS.CoincidenceLogic_i_actuationSubsystem_actuationUnit1_saturationLogic_coincidenceLogic.coincidenceLogic",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_saturationLogic_coincidenceLogic/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_saturationLogic_coincidenceLogic_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_saturationLogic_coincidenceLogic/CoincidenceLogic_i_actuationSubsystem_actuationUnit1_saturationLogic_coincidenceLogic_adapter.c",
  "--lib-only")

val OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuation${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic",
  "--name", "OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic",
  "--apps", "RTS.OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic.orLogic",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.Art.PortId]=2",
  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=3;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic.cmake",
  "--forward", "art.ArtNative=RTS.OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic.orLogic",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic/OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic/OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_adapter.c",
  "--lib-only")

val CoincidenceLogic_i_actuationSubsystem_actuationUnit2_temperatureLogic_coincidenceLogic: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuation${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_temperatureLogic_coincidenceLogic",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_temperatureLogic_coincidenceLogic",
  "--name", "CoincidenceLogic_i_actuationSubsystem_actuationUnit2_temperatureLogic_coincidenceLogic",
  "--apps", "RTS.CoincidenceLogic_i_actuationSubsystem_actuationUnit2_temperatureLogic_coincidenceLogic.coincidenceLogic",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=4;IS[Z,art.Art.PortId]=4",
  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=5;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_temperatureLogic_coincidenceLogic.cmake",
  "--forward", "art.ArtNative=RTS.CoincidenceLogic_i_actuationSubsystem_actuationUnit2_temperatureLogic_coincidenceLogic.coincidenceLogic",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_temperatureLogic_coincidenceLogic/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_temperatureLogic_coincidenceLogic_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_temperatureLogic_coincidenceLogic/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_temperatureLogic_coincidenceLogic_adapter.c",
  "--lib-only")

val CoincidenceLogic_i_actuationSubsystem_actuationUnit2_pressureLogic_coincidenceLogic: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuation${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_pressureLogic_coincidenceLogic",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_pressureLogic_coincidenceLogic",
  "--name", "CoincidenceLogic_i_actuationSubsystem_actuationUnit2_pressureLogic_coincidenceLogic",
  "--apps", "RTS.CoincidenceLogic_i_actuationSubsystem_actuationUnit2_pressureLogic_coincidenceLogic.coincidenceLogic",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=4;IS[Z,art.Art.PortId]=4",
  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=5;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_pressureLogic_coincidenceLogic.cmake",
  "--forward", "art.ArtNative=RTS.CoincidenceLogic_i_actuationSubsystem_actuationUnit2_pressureLogic_coincidenceLogic.coincidenceLogic",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_pressureLogic_coincidenceLogic/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_pressureLogic_coincidenceLogic_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_pressureLogic_coincidenceLogic/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_pressureLogic_coincidenceLogic_adapter.c",
  "--lib-only")

val CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuation${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic",
  "--name", "CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic",
  "--apps", "RTS.CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic.coincidenceLogic",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=4;IS[Z,art.Art.PortId]=4",
  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=5;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic.cmake",
  "--forward", "art.ArtNative=RTS.CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic.coincidenceLogic",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic/CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_adapter.c",
  "--lib-only")

val OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuation${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic",
  "--name", "OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic",
  "--apps", "RTS.OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic.orLogic",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.Art.PortId]=2",
  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=3;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic.cmake",
  "--forward", "art.ArtNative=RTS.OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic.orLogic",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic/OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic/OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_adapter.c",
  "--lib-only")

val OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuation${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic",
  "--name", "OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic",
  "--apps", "RTS.OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic.orLogic",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.Art.PortId]=2",
  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=3;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic.cmake",
  "--forward", "art.ArtNative=RTS.OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic.orLogic",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic/OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic/OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_adapter.c",
  "--lib-only")

val Actuator_i_actuationSubsystem_tempPressureActuatorUnit_tempPressureActuator_actuator: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuation${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuator_i_actuationSubsystem_tempPressureActuatorUnit_tempPressureActuator_actuator",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/Actuator_i_actuationSubsystem_tempPressureActuatorUnit_tempPressureActuator_actuator",
  "--name", "Actuator_i_actuationSubsystem_tempPressureActuatorUnit_tempPressureActuator_actuator",
  "--apps", "RTS.Actuator_i_actuationSubsystem_tempPressureActuatorUnit_tempPressureActuator_actuator.actuator",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.Art.PortId]=2",
  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=3;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_Actuator_i_actuationSubsystem_tempPressureActuatorUnit_tempPressureActuator_actuator.cmake",
  "--forward", "art.ArtNative=RTS.Actuator_i_actuationSubsystem_tempPressureActuatorUnit_tempPressureActuator_actuator.actuator",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/Actuator_i_actuationSubsystem_tempPressureActuatorUnit_tempPressureActuator_actuator/Actuator_i_actuationSubsystem_tempPressureActuatorUnit_tempPressureActuator_actuator_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/Actuator_i_actuationSubsystem_tempPressureActuatorUnit_tempPressureActuator_actuator/Actuator_i_actuationSubsystem_tempPressureActuatorUnit_tempPressureActuator_actuator_adapter.c",
  "--lib-only")

val OrLogic_i_actuationSubsystem_saturationActuatorUnit_actuateSaturationActuator_orLogic: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuation${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/OrLogic_i_actuationSubsystem_saturationActuatorUnit_actuateSaturationActuator_orLogic",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/OrLogic_i_actuationSubsystem_saturationActuatorUnit_actuateSaturationActuator_orLogic",
  "--name", "OrLogic_i_actuationSubsystem_saturationActuatorUnit_actuateSaturationActuator_orLogic",
  "--apps", "RTS.OrLogic_i_actuationSubsystem_saturationActuatorUnit_actuateSaturationActuator_orLogic.orLogic",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.Art.PortId]=2",
  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=3;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_OrLogic_i_actuationSubsystem_saturationActuatorUnit_actuateSaturationActuator_orLogic.cmake",
  "--forward", "art.ArtNative=RTS.OrLogic_i_actuationSubsystem_saturationActuatorUnit_actuateSaturationActuator_orLogic.orLogic",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/OrLogic_i_actuationSubsystem_saturationActuatorUnit_actuateSaturationActuator_orLogic/OrLogic_i_actuationSubsystem_saturationActuatorUnit_actuateSaturationActuator_orLogic_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/OrLogic_i_actuationSubsystem_saturationActuatorUnit_actuateSaturationActuator_orLogic/OrLogic_i_actuationSubsystem_saturationActuatorUnit_actuateSaturationActuator_orLogic_adapter.c",
  "--lib-only")

val Actuator_i_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/bridge${PATH_SEP}${SCRIPT_HOME}/../src/main/component${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuation${PATH_SEP}${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/Actuator_i_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/Actuator_i_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator",
  "--name", "Actuator_i_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator",
  "--apps", "RTS.Actuator_i_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator.actuator",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--sequence", s"MS[Z,Option[art.Bridge]]=1;IS[Z,art.UPort]=2;IS[Z,art.Art.PortId]=2",
  "--constants", s"art.Art.numComponents=1;art.Art.numPorts=3;art.Art.numConnections=1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_Actuator_i_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator.cmake",
  "--forward", "art.ArtNative=RTS.Actuator_i_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator.actuator",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--exts", s"${SCRIPT_HOME}/../../c/ext-c/ext.c${PATH_SEP}${SCRIPT_HOME}/../../c/ext-c/ext.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/Actuator_i_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator/Actuator_i_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator_adapter.h${PATH_SEP}${SCRIPT_HOME}/../../c/etc_seL4/adapters/Actuator_i_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator/Actuator_i_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator_adapter.c",
  "--lib-only")

val SlangTypeLibrary: ISZ[String] = ISZ(
  "--sourcepath", s"${SCRIPT_HOME}/../src/main/art${PATH_SEP}${SCRIPT_HOME}/../src/main/data${PATH_SEP}${SCRIPT_HOME}/../src/main/seL4Nix/RTS/SlangTypeLibrary",
  "--output-dir", s"${SCRIPT_HOME}/../../camkes/slang_libraries/SlangTypeLibrary",
  "--name", "SlangTypeLibrary",
  "--apps", "RTS.SlangTypeLibrary.SlangTypeLibrary",
  "--fingerprint", "3",
  "--bits", "32",
  "--string-size", "256",
  "--sequence-size", "1",
  "--cmake-includes", s"+${SCRIPT_HOME}/settings_SlangTypeLibrary.cmake",
  "--forward", "art.ArtNative=RTS.SlangTypeLibrary.SlangTypeLibrary",
  "--stack-size", "16777216",
  "--stable-type-id",
  "--lib-only")

val projects: ISZ[ISZ[String]] = ISZ(
  InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread,
  EventControlMockThread_i_eventControlMock_eventControlMockThread,
  ActuatorsMockThread_i_actuatorsMock_actuatorsMockThread,
  CoincidenceLogic_i_actuationSubsystem_actuationUnit1_temperatureLogic_coincidenceLogic,
  CoincidenceLogic_i_actuationSubsystem_actuationUnit1_pressureLogic_coincidenceLogic,
  CoincidenceLogic_i_actuationSubsystem_actuationUnit1_saturationLogic_coincidenceLogic,
  OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic,
  CoincidenceLogic_i_actuationSubsystem_actuationUnit2_temperatureLogic_coincidenceLogic,
  CoincidenceLogic_i_actuationSubsystem_actuationUnit2_pressureLogic_coincidenceLogic,
  CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic,
  OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic,
  OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic,
  Actuator_i_actuationSubsystem_tempPressureActuatorUnit_tempPressureActuator_actuator,
  OrLogic_i_actuationSubsystem_saturationActuatorUnit_actuateSaturationActuator_orLogic,
  Actuator_i_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator,
  SlangTypeLibrary
)

println("Initializing runtime library ...")
Sireum.initRuntimeLibrary()

var result = 0
for(p <- projects if result == 0) {
  result = Sireum.run(ISZ[String]("slang", "transpilers", "c") ++ p)
}

//ops.ISZOps(projects).parMap(p =>
//  Sireum.run(ISZ[String]("slang", "transpilers", "c") ++ p)
//)

Os.exit(result)
