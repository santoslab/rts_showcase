#ifndef SIREUM_TYPE_H_RTS_Actuation_OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge
#define SIREUM_TYPE_H_RTS_Actuation_OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge

#ifdef __cplusplus
extern "C" {
#endif

#include <misc.h>

// RTS.Actuation.OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge
#include <type-art_Art_BridgeId.h>
#include <type-art_DispatchPropertyProtocol.h>
#include <type-org_sireum_Option_0247A1.h>
#include <type-art_art_Port_C0524D.h>
#include <type-art_art_Port_C0524D.h>
#include <type-art_art_Port_C0524D.h>
#include <type-art_Bridge_Ports.h>
#include <type-RTS_Actuation_OrLogic_i_Initialization_Api.h>
#include <type-RTS_Actuation_OrLogic_i_Operational_Api.h>
#include <type-art_Bridge_EntryPoints.h>

typedef struct RTS_Actuation_OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge *RTS_Actuation_OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge;
struct RTS_Actuation_OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge {
  TYPE type;
  union art_DispatchPropertyProtocol dispatchProtocol;
  union Option_0247A1 dispatchTriggers;
  union art_Bridge_EntryPoints entryPoints;
  struct StaticString name;
  struct art_Port_C0524D channel1;
  struct art_Port_C0524D channel2;
  struct art_Port_C0524D actuate;
  struct art_Bridge_Ports ports;
  struct RTS_Actuation_OrLogic_i_Initialization_Api initialization_api;
  struct RTS_Actuation_OrLogic_i_Operational_Api operational_api;
  art_Art_BridgeId id;
};

#define DeclNewRTS_Actuation_OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge(x) struct RTS_Actuation_OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge x = { .type = TRTS_Actuation_OrLogic_i_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge }

#ifdef __cplusplus
}
#endif

#endif