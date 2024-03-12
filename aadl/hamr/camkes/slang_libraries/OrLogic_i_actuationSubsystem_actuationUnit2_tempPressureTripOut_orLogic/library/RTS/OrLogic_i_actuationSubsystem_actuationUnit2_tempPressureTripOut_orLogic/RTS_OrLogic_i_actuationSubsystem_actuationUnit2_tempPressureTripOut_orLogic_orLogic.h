#ifndef SIREUM_H_RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic
#define SIREUM_H_RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic

#ifdef __cplusplus
extern "C" {
#endif

#include <types.h>

void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_init(STACK_FRAME_ONLY);

RTS_Actuation_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_Bridge RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_orLogicBridge(STACK_FRAME_ONLY);
art_Bridge_EntryPoints RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_entryPoints(STACK_FRAME_ONLY);
Option_8E9F45 RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_noData(STACK_FRAME_ONLY);
art_Art_PortId RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_channel1_id(STACK_FRAME_ONLY);
Option_8E9F45 RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_channel1_port(STACK_FRAME_ONLY);
void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_channel1_port_a(STACK_FRAME Option_8E9F45 p_channel1_port);
art_Art_PortId RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_channel2_id(STACK_FRAME_ONLY);
Option_8E9F45 RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_channel2_port(STACK_FRAME_ONLY);
void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_channel2_port_a(STACK_FRAME Option_8E9F45 p_channel2_port);
art_Art_PortId RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_actuate_id(STACK_FRAME_ONLY);
Option_8E9F45 RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_actuate_port(STACK_FRAME_ONLY);
void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_actuate_port_a(STACK_FRAME Option_8E9F45 p_actuate_port);

Z RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_main(STACK_FRAME IS_948B60 args);

Unit RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_initialiseArchitecture(STACK_FRAME_ONLY);

Unit RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_initialiseEntryPoint(STACK_FRAME_ONLY);

Unit RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_computeEntryPoint(STACK_FRAME_ONLY);

Unit RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_finaliseEntryPoint(STACK_FRAME_ONLY);

Unit RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_touch_printDataContent(STACK_FRAME art_DataContent a);

Unit RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_touch(STACK_FRAME_ONLY);

Unit RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_logInfo(STACK_FRAME String title, String msg);

Unit RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_logDebug(STACK_FRAME String title, String msg);

Unit RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_logError(STACK_FRAME String title, String msg);

void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_getValue(STACK_FRAME Option_8E9F45 result, art_Art_PortId portId);

Unit RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_putValue(STACK_FRAME art_Art_PortId portId, art_DataContent data);

Unit RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_sendOutput(STACK_FRAME IS_D10119 eventPortIds, IS_D10119 dataPortIds);

Unit RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_receiveInput(STACK_FRAME IS_D10119 eventPortIds, IS_D10119 dataPortIds);

void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_init_orLogicBridge(STACK_FRAME_ONLY);

void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_init_entryPoints(STACK_FRAME_ONLY);

void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_init_noData(STACK_FRAME_ONLY);

void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_init_channel1_id(STACK_FRAME_ONLY);

void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_init_channel1_port(STACK_FRAME_ONLY);

void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_init_channel2_id(STACK_FRAME_ONLY);

void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_init_channel2_port(STACK_FRAME_ONLY);

void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_init_actuate_id(STACK_FRAME_ONLY);

void RTS_OrLogic_i_actuationSubsystem_actuationUnit2_tempPressureTripOut_orLogic_orLogic_init_actuate_port(STACK_FRAME_ONLY);

#ifdef __cplusplus
}
#endif

#endif