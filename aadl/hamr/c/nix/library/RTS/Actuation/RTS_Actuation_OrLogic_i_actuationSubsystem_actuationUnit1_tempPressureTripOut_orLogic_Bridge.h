#ifndef SIREUM_H_RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge
#define SIREUM_H_RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge

#ifdef __cplusplus
extern "C" {
#endif

#include <types.h>

void RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_init(STACK_FRAME_ONLY);

Option_1C3ADA RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_c_initialization_api(STACK_FRAME_ONLY);
void RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_c_initialization_api_a(STACK_FRAME Option_1C3ADA p_c_initialization_api);
Option_E142FF RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_c_operational_api(STACK_FRAME_ONLY);
void RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_c_operational_api_a(STACK_FRAME Option_E142FF p_c_operational_api);

// RTS.Actuation.OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge

#define RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_id_(this) ((this)->id)
#define RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_name_(this) ((String) &(this)->name)
#define RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_dispatchProtocol_(this) ((art_DispatchPropertyProtocol) &(this)->dispatchProtocol)
#define RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_dispatchTriggers_(this) ((Option_0247A1) &(this)->dispatchTriggers)
#define RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_channel1_(this) ((art_Port_C0524D) &(this)->channel1)
#define RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_channel2_(this) ((art_Port_C0524D) &(this)->channel2)
#define RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_actuate_(this) ((art_Port_C0524D) &(this)->actuate)
#define RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_ports_(this) ((art_Bridge_Ports) &(this)->ports)
#define RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_initialization_api_(this) ((RTS_Actuation_OrLogic_i_Initialization_Api) &(this)->initialization_api)
#define RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_operational_api_(this) ((RTS_Actuation_OrLogic_i_Operational_Api) &(this)->operational_api)
#define RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_entryPoints_(this) ((art_Bridge_EntryPoints) &(this)->entryPoints)

B RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge__eq(RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge this, RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge other);
inline B RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge__ne(RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge this, RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge other) {
  return !RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge__eq(this, other);
};
B RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge__equiv(RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge this, RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge other);
inline B RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge__inequiv(RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge this, RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge other) {
  return !RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge__equiv(this, other);
};
void RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_string_(STACK_FRAME String result, RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge this);
void RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_cprint(RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge this, B isOut);

inline B RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge__is(STACK_FRAME void* this) {
  return ((RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge) this)->type == TRTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge;
}

inline RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge__as(STACK_FRAME void *this) {
  if (RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge__is(CALLER this)) return (RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge) this;
  sfAbortImpl(CALLER "Invalid cast to RTS.Actuation.OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge.");
  abort();
}

void RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_apply(STACK_FRAME RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge this, art_Art_BridgeId id, String name, art_DispatchPropertyProtocol dispatchProtocol, Option_0247A1 dispatchTriggers, art_Port_C0524D channel1, art_Port_C0524D channel2, art_Port_C0524D actuate);

void RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_init_c_initialization_api(STACK_FRAME_ONLY);

void RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit1_tempPressureTripOut_orLogic_Bridge_init_c_operational_api(STACK_FRAME_ONLY);

#ifdef __cplusplus
}
#endif

#endif