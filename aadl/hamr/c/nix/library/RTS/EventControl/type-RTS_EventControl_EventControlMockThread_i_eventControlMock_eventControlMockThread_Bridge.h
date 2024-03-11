#ifndef SIREUM_TYPE_H_RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge
#define SIREUM_TYPE_H_RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge

#ifdef __cplusplus
extern "C" {
#endif

#include <misc.h>

// RTS.EventControl.EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge
#include <type-art_Art_BridgeId.h>
#include <type-art_DispatchPropertyProtocol.h>
#include <type-org_sireum_Option_0247A1.h>
#include <type-art_art_Port_C0524D.h>
#include <type-art_art_Port_C0524D.h>
#include <type-art_Bridge_Ports.h>
#include <type-RTS_EventControl_EventControlMockThread_i_Initialization_Api.h>
#include <type-RTS_EventControl_EventControlMockThread_i_Operational_Api.h>
#include <type-art_Bridge_EntryPoints.h>

typedef struct RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge *RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge;
struct RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge {
  TYPE type;
  union art_DispatchPropertyProtocol dispatchProtocol;
  union Option_0247A1 dispatchTriggers;
  union art_Bridge_EntryPoints entryPoints;
  struct StaticString name;
  struct art_Port_C0524D manualActuatorInput1;
  struct art_Port_C0524D manualActuatorInput2;
  struct art_Bridge_Ports ports;
  struct RTS_EventControl_EventControlMockThread_i_Initialization_Api initialization_api;
  struct RTS_EventControl_EventControlMockThread_i_Operational_Api operational_api;
  art_Art_BridgeId id;
};

#define DeclNewRTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge(x) struct RTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge x = { .type = TRTS_EventControl_EventControlMockThread_i_eventControlMock_eventControlMockThread_Bridge }

#ifdef __cplusplus
}
#endif

#endif