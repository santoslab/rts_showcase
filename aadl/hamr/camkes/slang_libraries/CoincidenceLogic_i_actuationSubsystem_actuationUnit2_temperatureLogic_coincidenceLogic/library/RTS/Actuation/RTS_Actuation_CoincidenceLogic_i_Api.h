#ifndef SIREUM_H_RTS_Actuation_CoincidenceLogic_i_Api
#define SIREUM_H_RTS_Actuation_CoincidenceLogic_i_Api

#ifdef __cplusplus
extern "C" {
#endif

#include <types.h>

Unit RTS_Actuation_CoincidenceLogic_i_Initialization_Api_logInfo_(STACK_FRAME RTS_Actuation_CoincidenceLogic_i_Initialization_Api this, String msg);

Unit RTS_Actuation_CoincidenceLogic_i_Initialization_Api_logDebug_(STACK_FRAME RTS_Actuation_CoincidenceLogic_i_Initialization_Api this, String msg);

Unit RTS_Actuation_CoincidenceLogic_i_Initialization_Api_logError_(STACK_FRAME RTS_Actuation_CoincidenceLogic_i_Initialization_Api this, String msg);

Unit RTS_Actuation_CoincidenceLogic_i_Operational_Api_logInfo_(STACK_FRAME RTS_Actuation_CoincidenceLogic_i_Operational_Api this, String msg);

Unit RTS_Actuation_CoincidenceLogic_i_Operational_Api_logDebug_(STACK_FRAME RTS_Actuation_CoincidenceLogic_i_Operational_Api this, String msg);

Unit RTS_Actuation_CoincidenceLogic_i_Operational_Api_logError_(STACK_FRAME RTS_Actuation_CoincidenceLogic_i_Operational_Api this, String msg);

Unit RTS_Actuation_CoincidenceLogic_i_Initialization_Api_put_actuate_(STACK_FRAME RTS_Actuation_CoincidenceLogic_i_Initialization_Api this, B value);

Unit RTS_Actuation_CoincidenceLogic_i_Operational_Api_put_actuate_(STACK_FRAME RTS_Actuation_CoincidenceLogic_i_Operational_Api this, B value);

#ifdef __cplusplus
}
#endif

#endif