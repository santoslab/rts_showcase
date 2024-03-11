// #Sireum

package RTS.Actuators

import org.sireum._
import art._
import RTS._

// Do not edit this file as it will be overwritten if HAMR codegen is rerun

object ActuatorsMockThread_actuatorsMock_actuatorsMockThread_EntryPoint_Companion {

  var preStateContainer_wL: Option[ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PreState_Container_PS] = None()

  def pre_initialise(): Unit = {
    // assume/require contracts cannot refer to incoming ports or
    // state variables so nothing to do here
  }

  def post_initialise(): Unit = {
    // block the component while its post-state values are retrieved
    val postStateContainer_wL =
      ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PostState_Container_PS()

    // the rest can now be performed via a different thread
    RTS.runtimemonitor.RuntimeMonitor.observeInitialisePostState(Arch.rts_actuatorsMock_actuatorsMockThread.id, RTS.runtimemonitor.ObservationKind.rts_actuatorsMock_actuatorsMockThread_postInit, postStateContainer_wL)
  }

  def pre_compute(): Unit = {
    // block the component while its pre-state values are retrieved
    preStateContainer_wL = Some(
      ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PreState_Container_PS(
        api_ports_saturationActuate = Art.observeInPortVariable(Arch.rts_actuatorsMock_actuatorsMockThread.operational_api.ports_saturationActuate_Id).get.asInstanceOf[Base_Types.Boolean_Payload].value, 
        api_ports_tempPressureActuate = Art.observeInPortVariable(Arch.rts_actuatorsMock_actuatorsMockThread.operational_api.ports_tempPressureActuate_Id).get.asInstanceOf[Base_Types.Boolean_Payload].value))

    // the rest can now be performed via a different thread
    RTS.runtimemonitor.RuntimeMonitor.observeComputePreState(Arch.rts_actuatorsMock_actuatorsMockThread.id, RTS.runtimemonitor.ObservationKind.rts_actuatorsMock_actuatorsMockThread_preCompute, preStateContainer_wL.asInstanceOf[Option[art.DataContent]])
  }

  def post_compute(): Unit = {
    // block the component while its post-state values are retrieved
    val postStateContainer_wL =
      ActuatorsMockThread_actuatorsMock_actuatorsMockThread_PostState_Container_PS()

    // the rest can now be performed via a different thread
    RTS.runtimemonitor.RuntimeMonitor.observeComputePrePostState(Arch.rts_actuatorsMock_actuatorsMockThread.id, RTS.runtimemonitor.ObservationKind.rts_actuatorsMock_actuatorsMockThread_postCompute, preStateContainer_wL.asInstanceOf[Option[art.DataContent]], postStateContainer_wL)
  }
}