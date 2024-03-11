// #Sireum

package RTS.Actuation

import org.sireum._
import art.Art
import RTS._

// Do not edit this file as it will be overwritten if HAMR codegen is rerun
@msig trait Actuator_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator_TestApi {

  def BeforeEntrypoint(): Unit = {
    Art.initTest(Arch.rts_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator)
  }

  def AfterEntrypoint(): Unit = {
    Art.finalizeTest(Arch.rts_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator)
  }

  def testCompute(): Unit = {
    Art.manuallyClearOutput()
    Art.testCompute(Arch.rts_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator)
  }

  def testInitialise(): Unit = {
    Art.manuallyClearOutput()
    Art.testInitialise(Arch.rts_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator)
  }

  /** helper function to set the values of all input ports.
   * @param ports_input payload for data port ports_input
   * @param ports_manualActuatorInput payload for data port ports_manualActuatorInput
   */
  def put_concrete_inputs(ports_input : Base_Types.Boolean,
                          ports_manualActuatorInput : Base_Types.Boolean): Unit = {
    put_ports_input(ports_input)
    put_ports_manualActuatorInput(ports_manualActuatorInput)
  }


  /** helper function to check Actuator_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator's
   * output ports.  Use named arguments to check subsets of the output ports.
   * @param ports_output method that will be called with the value of the outgoing data
   *        port 'ports_output'.
   */
  def check_concrete_output(ports_output: Base_Types.Boolean => B): Unit = {
    var testFailures: ISZ[ST] = ISZ()

    val ports_outputValue: Base_Types.Boolean = get_ports_output().get
    if(!ports_output(ports_outputValue)) {
      testFailures = testFailures :+ st"'ports_output' did not match expected: value of the outgoing data port is ${ports_outputValue}"
    }

    assert(testFailures.isEmpty, st"${(testFailures, "\n")}".render)
  }


  // setter for in DataPort
  def put_ports_input(value : Base_Types.Boolean): Unit = {
    Art.insertInInfrastructurePort(Arch.rts_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator.operational_api.ports_input_Id, Base_Types.Boolean_Payload(value))
  }

  // setter for in DataPort
  def put_ports_manualActuatorInput(value : Base_Types.Boolean): Unit = {
    Art.insertInInfrastructurePort(Arch.rts_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator.operational_api.ports_manualActuatorInput_Id, Base_Types.Boolean_Payload(value))
  }

  // getter for out DataPort
  def get_ports_output(): Option[Base_Types.Boolean] = {
    val value: Option[Base_Types.Boolean] = get_ports_output_payload() match {
      case Some(Base_Types.Boolean_Payload(v)) => Some(v)
      case Some(v) => halt(s"Unexpected payload on port ports_output.  Expecting 'Base_Types.Boolean_Payload' but received ${v}")
      case _ => None[Base_Types.Boolean]()
    }
    return value
  }

  // payload getter for out DataPort
  def get_ports_output_payload(): Option[Base_Types.Boolean_Payload] = {
    return Art.observeOutInfrastructurePort(Arch.rts_actuationSubsystem_saturationActuatorUnit_saturationActuator_actuator.initialization_api.ports_output_Id).asInstanceOf[Option[Base_Types.Boolean_Payload]]
  }

}
