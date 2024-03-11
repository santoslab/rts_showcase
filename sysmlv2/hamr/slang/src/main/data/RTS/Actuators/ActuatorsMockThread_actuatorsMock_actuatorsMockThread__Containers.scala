// #Sireum

package RTS.Actuators

import org.sireum._
import RTS._
import RTS.util.Container

// Do not edit this file as it will be overwritten if HAMR codegen is rerun

// containers for the pre and post state values of ports and state variables

@sig trait ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PreState_Container extends Container {
  def api_ports_saturationActuate: B
  def api_ports_tempPressureActuate: B
}

// container for incoming ports
@datatype class ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PreState_Container_P (
  val api_ports_saturationActuate: B,
  val api_ports_tempPressureActuate: B) extends ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PreState_Container

// container for incoming ports and state variables
@datatype class ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PreState_Container_PS (
  val api_ports_saturationActuate: B,
  val api_ports_tempPressureActuate: B) extends ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PreState_Container

@sig trait ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PostState_Container extends Container {
}

// container for outgoing ports
@datatype class ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PostState_Container_P (
  ) extends ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PostState_Container

// container for outgoing ports and state variables
@datatype class ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PostState_Container_PS (
  ) extends ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PostState_Container
