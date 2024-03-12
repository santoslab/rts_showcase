#ifndef SIREUM_H_RTS_Actuation_Actuator_i_Operational_Api
#define SIREUM_H_RTS_Actuation_Actuator_i_Operational_Api

#ifdef __cplusplus
extern "C" {
#endif

#include <types.h>

// RTS.Actuation.Actuator_i_Operational_Api

#define RTS_Actuation_Actuator_i_Operational_Api_id_(this) ((this)->id)
#define RTS_Actuation_Actuator_i_Operational_Api_input_Id_(this) ((this)->input_Id)
#define RTS_Actuation_Actuator_i_Operational_Api_manualActuatorInput_Id_(this) ((this)->manualActuatorInput_Id)
#define RTS_Actuation_Actuator_i_Operational_Api_output_Id_(this) ((this)->output_Id)

B RTS_Actuation_Actuator_i_Operational_Api__eq(RTS_Actuation_Actuator_i_Operational_Api this, RTS_Actuation_Actuator_i_Operational_Api other);
inline B RTS_Actuation_Actuator_i_Operational_Api__ne(RTS_Actuation_Actuator_i_Operational_Api this, RTS_Actuation_Actuator_i_Operational_Api other) {
  return !RTS_Actuation_Actuator_i_Operational_Api__eq(this, other);
};
B RTS_Actuation_Actuator_i_Operational_Api__equiv(RTS_Actuation_Actuator_i_Operational_Api this, RTS_Actuation_Actuator_i_Operational_Api other);
inline B RTS_Actuation_Actuator_i_Operational_Api__inequiv(RTS_Actuation_Actuator_i_Operational_Api this, RTS_Actuation_Actuator_i_Operational_Api other) {
  return !RTS_Actuation_Actuator_i_Operational_Api__equiv(this, other);
};
void RTS_Actuation_Actuator_i_Operational_Api_string_(STACK_FRAME String result, RTS_Actuation_Actuator_i_Operational_Api this);
void RTS_Actuation_Actuator_i_Operational_Api_cprint(RTS_Actuation_Actuator_i_Operational_Api this, B isOut);

inline B RTS_Actuation_Actuator_i_Operational_Api__is(STACK_FRAME void* this) {
  return ((RTS_Actuation_Actuator_i_Operational_Api) this)->type == TRTS_Actuation_Actuator_i_Operational_Api;
}

inline RTS_Actuation_Actuator_i_Operational_Api RTS_Actuation_Actuator_i_Operational_Api__as(STACK_FRAME void *this) {
  if (RTS_Actuation_Actuator_i_Operational_Api__is(CALLER this)) return (RTS_Actuation_Actuator_i_Operational_Api) this;
  sfAbortImpl(CALLER "Invalid cast to RTS.Actuation.Actuator_i_Operational_Api.");
  abort();
}

void RTS_Actuation_Actuator_i_Operational_Api_apply(STACK_FRAME RTS_Actuation_Actuator_i_Operational_Api this, art_Art_BridgeId id, art_Art_PortId input_Id, art_Art_PortId manualActuatorInput_Id, art_Art_PortId output_Id);

void RTS_Actuation_Actuator_i_Operational_Api_get_input_(STACK_FRAME Option_8F4D4C result, RTS_Actuation_Actuator_i_Operational_Api this);

void RTS_Actuation_Actuator_i_Operational_Api_get_manualActuatorInput_(STACK_FRAME Option_8F4D4C result, RTS_Actuation_Actuator_i_Operational_Api this);

#ifdef __cplusplus
}
#endif

#endif