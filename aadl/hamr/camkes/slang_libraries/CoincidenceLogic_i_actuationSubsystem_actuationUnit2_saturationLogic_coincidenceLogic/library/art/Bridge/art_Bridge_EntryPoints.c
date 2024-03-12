#include <all.h>

// art.Bridge.EntryPoints

B art_Bridge_EntryPoints__is(STACK_FRAME void *this) {
  switch(((Type) this)->type) {
    case TRTS_Actuation_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_Bridge_EntryPoints: return T;
    default: return F;
  }
}

art_Bridge_EntryPoints art_Bridge_EntryPoints__as(STACK_FRAME void *this) {
  switch(((Type) this)->type) {
    case TRTS_Actuation_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_Bridge_EntryPoints: break;
    default:
      fprintf(stderr, "Invalid cast from %s to art.Bridge.EntryPoints.", TYPE_string_(this));
      sfAbortImpl(CALLER "");
  }
  return (art_Bridge_EntryPoints) this;
}

void art_Bridge_EntryPoints_string_(STACK_FRAME String result, art_Bridge_EntryPoints this);

Unit art_Bridge_EntryPoints_initialise_(STACK_FRAME art_Bridge_EntryPoints this) {
  switch (this->type) {
    case TRTS_Actuation_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_Bridge_EntryPoints: RTS_Actuation_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_Bridge_EntryPoints_initialise_(CALLER (RTS_Actuation_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_Bridge_EntryPoints) this); return;
    default: fprintf(stderr, "Infeasible TYPE: %s.\n", TYPE_string_(this)); exit(1);
  }
}

Unit art_Bridge_EntryPoints_compute_(STACK_FRAME art_Bridge_EntryPoints this) {
  switch (this->type) {
    case TRTS_Actuation_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_Bridge_EntryPoints: RTS_Actuation_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_Bridge_EntryPoints_compute_(CALLER (RTS_Actuation_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_Bridge_EntryPoints) this); return;
    default: fprintf(stderr, "Infeasible TYPE: %s.\n", TYPE_string_(this)); exit(1);
  }
}

Unit art_Bridge_EntryPoints_finalise_(STACK_FRAME art_Bridge_EntryPoints this) {
  switch (this->type) {
    case TRTS_Actuation_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_Bridge_EntryPoints: RTS_Actuation_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_Bridge_EntryPoints_finalise_(CALLER (RTS_Actuation_CoincidenceLogic_i_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_Bridge_EntryPoints) this); return;
    default: fprintf(stderr, "Infeasible TYPE: %s.\n", TYPE_string_(this)); exit(1);
  }
}