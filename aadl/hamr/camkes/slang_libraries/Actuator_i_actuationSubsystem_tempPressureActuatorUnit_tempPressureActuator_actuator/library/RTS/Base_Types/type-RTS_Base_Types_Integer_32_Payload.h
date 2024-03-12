#ifndef SIREUM_TYPE_H_RTS_Base_Types_Integer_32_Payload
#define SIREUM_TYPE_H_RTS_Base_Types_Integer_32_Payload

#ifdef __cplusplus
extern "C" {
#endif

#include <misc.h>

// RTS.Base_Types.Integer_32_Payload
#include <type-org_sireum_S32.h>

typedef struct RTS_Base_Types_Integer_32_Payload *RTS_Base_Types_Integer_32_Payload;
struct RTS_Base_Types_Integer_32_Payload {
  TYPE type;
  S32 value;
};

#define DeclNewRTS_Base_Types_Integer_32_Payload(x) struct RTS_Base_Types_Integer_32_Payload x = { .type = TRTS_Base_Types_Integer_32_Payload }

#ifdef __cplusplus
}
#endif

#endif