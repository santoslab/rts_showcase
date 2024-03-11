// #Sireum

package RTS.EventControl

import org.sireum._
import RTS._
import RTS.util.Container

// Do not edit this file as it will be overwritten if HAMR codegen is rerun

// containers for the pre and post state values of ports and state variables

@sig trait EventControlMockThread_i_eventControlMock_eventControlMockThread_PreState_Container extends Container {
}

// container for incoming ports
@datatype class EventControlMockThread_i_eventControlMock_eventControlMockThread_PreState_Container_P (
  ) extends EventControlMockThread_i_eventControlMock_eventControlMockThread_PreState_Container

// container for incoming ports and state variables
@datatype class EventControlMockThread_i_eventControlMock_eventControlMockThread_PreState_Container_PS (
  ) extends EventControlMockThread_i_eventControlMock_eventControlMockThread_PreState_Container

@sig trait EventControlMockThread_i_eventControlMock_eventControlMockThread_PostState_Container extends Container {
  def api_manualActuatorInput1: B
  def api_manualActuatorInput2: B
}

// container for outgoing ports
@datatype class EventControlMockThread_i_eventControlMock_eventControlMockThread_PostState_Container_P (
  val api_manualActuatorInput1: B,
  val api_manualActuatorInput2: B) extends EventControlMockThread_i_eventControlMock_eventControlMockThread_PostState_Container

// container for outgoing ports and state variables
@datatype class EventControlMockThread_i_eventControlMock_eventControlMockThread_PostState_Container_PS (
  val api_manualActuatorInput1: B,
  val api_manualActuatorInput2: B) extends EventControlMockThread_i_eventControlMock_eventControlMockThread_PostState_Container
