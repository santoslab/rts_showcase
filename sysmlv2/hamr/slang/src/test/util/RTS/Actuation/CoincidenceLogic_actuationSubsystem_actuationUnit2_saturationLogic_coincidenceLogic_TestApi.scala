// #Sireum

package RTS.Actuation

import org.sireum._
import art.Art
import RTS._

// Do not edit this file as it will be overwritten if HAMR codegen is rerun
@msig trait CoincidenceLogic_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic_TestApi {

  def BeforeEntrypoint(): Unit = {
    Art.initTest(Arch.rts_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic)
  }

  def AfterEntrypoint(): Unit = {
    Art.finalizeTest(Arch.rts_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic)
  }

  def testCompute(): Unit = {
    Art.manuallyClearOutput()
    Art.testCompute(Arch.rts_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic)
  }

  def testInitialise(): Unit = {
    Art.manuallyClearOutput()
    Art.testInitialise(Arch.rts_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic)
  }

  /** helper function to set the values of all input ports.
   * @param ports_channel1 payload for data port ports_channel1
   * @param ports_channel2 payload for data port ports_channel2
   * @param ports_channel3 payload for data port ports_channel3
   * @param ports_channel4 payload for data port ports_channel4
   */
  def put_concrete_inputs(ports_channel1 : Base_Types.Boolean,
                          ports_channel2 : Base_Types.Boolean,
                          ports_channel3 : Base_Types.Boolean,
                          ports_channel4 : Base_Types.Boolean): Unit = {
    put_ports_channel1(ports_channel1)
    put_ports_channel2(ports_channel2)
    put_ports_channel3(ports_channel3)
    put_ports_channel4(ports_channel4)
  }


  /** helper function to check CoincidenceLogic_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic's
   * output ports.  Use named arguments to check subsets of the output ports.
   * @param ports_actuate method that will be called with the value of the outgoing data
   *        port 'ports_actuate'.
   */
  def check_concrete_output(ports_actuate: Base_Types.Boolean => B): Unit = {
    var testFailures: ISZ[ST] = ISZ()

    val ports_actuateValue: Base_Types.Boolean = get_ports_actuate().get
    if(!ports_actuate(ports_actuateValue)) {
      testFailures = testFailures :+ st"'ports_actuate' did not match expected: value of the outgoing data port is ${ports_actuateValue}"
    }

    assert(testFailures.isEmpty, st"${(testFailures, "\n")}".render)
  }


  // setter for in DataPort
  def put_ports_channel1(value : Base_Types.Boolean): Unit = {
    Art.insertInInfrastructurePort(Arch.rts_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic.operational_api.ports_channel1_Id, Base_Types.Boolean_Payload(value))
  }

  // setter for in DataPort
  def put_ports_channel2(value : Base_Types.Boolean): Unit = {
    Art.insertInInfrastructurePort(Arch.rts_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic.operational_api.ports_channel2_Id, Base_Types.Boolean_Payload(value))
  }

  // setter for in DataPort
  def put_ports_channel3(value : Base_Types.Boolean): Unit = {
    Art.insertInInfrastructurePort(Arch.rts_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic.operational_api.ports_channel3_Id, Base_Types.Boolean_Payload(value))
  }

  // setter for in DataPort
  def put_ports_channel4(value : Base_Types.Boolean): Unit = {
    Art.insertInInfrastructurePort(Arch.rts_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic.operational_api.ports_channel4_Id, Base_Types.Boolean_Payload(value))
  }

  // getter for out DataPort
  def get_ports_actuate(): Option[Base_Types.Boolean] = {
    val value: Option[Base_Types.Boolean] = get_ports_actuate_payload() match {
      case Some(Base_Types.Boolean_Payload(v)) => Some(v)
      case Some(v) => halt(s"Unexpected payload on port ports_actuate.  Expecting 'Base_Types.Boolean_Payload' but received ${v}")
      case _ => None[Base_Types.Boolean]()
    }
    return value
  }

  // payload getter for out DataPort
  def get_ports_actuate_payload(): Option[Base_Types.Boolean_Payload] = {
    return Art.observeOutInfrastructurePort(Arch.rts_actuationSubsystem_actuationUnit2_saturationLogic_coincidenceLogic.initialization_api.ports_actuate_Id).asInstanceOf[Option[Base_Types.Boolean_Payload]]
  }

}
