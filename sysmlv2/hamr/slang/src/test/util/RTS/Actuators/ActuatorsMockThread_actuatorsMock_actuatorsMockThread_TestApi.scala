// #Sireum

package RTS.Actuators

import org.sireum._
import art.Art
import RTS._

// Do not edit this file as it will be overwritten if HAMR codegen is rerun
@msig trait ActuatorsMockThread_actuatorsMock_actuatorsMockThread_TestApi {

  def BeforeEntrypoint(): Unit = {
    Art.initTest(Arch.rts_actuatorsMock_actuatorsMockThread)
  }

  def AfterEntrypoint(): Unit = {
    Art.finalizeTest(Arch.rts_actuatorsMock_actuatorsMockThread)
  }

  def testCompute(): Unit = {
    Art.manuallyClearOutput()
    Art.testCompute(Arch.rts_actuatorsMock_actuatorsMockThread)
  }

  def testInitialise(): Unit = {
    Art.manuallyClearOutput()
    Art.testInitialise(Arch.rts_actuatorsMock_actuatorsMockThread)
  }

  /** helper function to set the values of all input ports.
   * @param ports_tempPressureActuate payload for data port ports_tempPressureActuate
   * @param ports_saturationActuate payload for data port ports_saturationActuate
   */
  def put_concrete_inputs(ports_tempPressureActuate : Base_Types.Boolean,
                          ports_saturationActuate : Base_Types.Boolean): Unit = {
    put_ports_tempPressureActuate(ports_tempPressureActuate)
    put_ports_saturationActuate(ports_saturationActuate)
  }


  // setter for in DataPort
  def put_ports_tempPressureActuate(value : Base_Types.Boolean): Unit = {
    Art.insertInInfrastructurePort(Arch.rts_actuatorsMock_actuatorsMockThread.operational_api.ports_tempPressureActuate_Id, Base_Types.Boolean_Payload(value))
  }

  // setter for in DataPort
  def put_ports_saturationActuate(value : Base_Types.Boolean): Unit = {
    Art.insertInInfrastructurePort(Arch.rts_actuatorsMock_actuatorsMockThread.operational_api.ports_saturationActuate_Id, Base_Types.Boolean_Payload(value))
  }

}
