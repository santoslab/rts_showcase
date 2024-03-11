// #Sireum

package RTS.Actuation

import org.sireum._
import art._
import RTS._
import RTS.Actuation.{OrLogic_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic => component}

// Do not edit this file as it will be overwritten if HAMR codegen is rerun

@datatype class OrLogic_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge(
  val id: Art.BridgeId,
  val name: String,
  val dispatchProtocol: DispatchPropertyProtocol,
  val dispatchTriggers: Option[ISZ[Art.PortId]],

  ports_channel1: Port[Base_Types.Boolean],
  ports_channel2: Port[Base_Types.Boolean],
  ports_actuate: Port[Base_Types.Boolean]
  ) extends Bridge {

  val ports : Bridge.Ports = Bridge.Ports(
    dataIns = ISZ[art.UPort](ports_channel1,
                             ports_channel2),

    dataOuts = ISZ[art.UPort](ports_actuate),

    eventIns = ISZ[art.UPort](),

    eventOuts = ISZ[art.UPort]()
  )

  val initialization_api : OrLogic_Initialization_Api = {
    val api = OrLogic_Initialization_Api(
      id,
      ports_channel1.id,
      ports_channel2.id,
      ports_actuate.id
    )
    OrLogic_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge.c_initialization_api = Some(api)
    api
  }

  val operational_api : OrLogic_Operational_Api = {
    val api = OrLogic_Operational_Api(
      id,
      ports_channel1.id,
      ports_channel2.id,
      ports_actuate.id
    )
    OrLogic_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge.c_operational_api = Some(api)
    api
  }

  val entryPoints : Bridge.EntryPoints =
    OrLogic_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge.EntryPoints(
      id,

      ports_channel1.id,
      ports_channel2.id,
      ports_actuate.id,

      dispatchTriggers,

      initialization_api,
      operational_api)
}

object OrLogic_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Bridge {

  var c_initialization_api: Option[OrLogic_Initialization_Api] = None()
  var c_operational_api: Option[OrLogic_Operational_Api] = None()

  @datatype class EntryPoints(
    OrLogic_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_BridgeId : Art.BridgeId,
    ports_channel1_Id : Art.PortId,
    ports_channel2_Id : Art.PortId,
    ports_actuate_Id : Art.PortId,
    dispatchTriggers : Option[ISZ[Art.PortId]],
    initialization_api: OrLogic_Initialization_Api,
    operational_api: OrLogic_Operational_Api) extends Bridge.EntryPoints {

    val dataInPortIds: ISZ[Art.PortId] = IS(ports_channel1_Id,
                                            ports_channel2_Id)

    val eventInPortIds: ISZ[Art.PortId] = IS()

    val dataOutPortIds: ISZ[Art.PortId] = IS(ports_actuate_Id)

    val eventOutPortIds: ISZ[Art.PortId] = IS()

    def initialise(): Unit = {
      OrLogic_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_EntryPoint_Companion.pre_initialise()

      // implement the following method in 'component':  def initialise(api: OrLogic_Initialization_Api): Unit = {}
      component.initialise(initialization_api)

      OrLogic_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_EntryPoint_Companion.post_initialise()

      Art.sendOutput(eventOutPortIds, dataOutPortIds)
    }

    def compute(): Unit = {
      OrLogic_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_Injection_Service.pre_receiveInput()

      Art.receiveInput(eventInPortIds, dataInPortIds)

      OrLogic_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_EntryPoint_Companion.pre_compute()

      // implement the following in 'component':  def timeTriggered(api: OrLogic_Operational_Api): Unit = {}
      component.timeTriggered(operational_api)

      OrLogic_actuationSubsystem_tempPressureActuatorUnit_actuateTempPressureActuator_orLogic_EntryPoint_Companion.post_compute()

      Art.sendOutput(eventOutPortIds, dataOutPortIds)
    }

    def finalise(): Unit = {
      // implement the following method in 'component':  def finalise(api: OrLogic_Operational_Api): Unit = {}
      component.finalise(operational_api)
    }

    override
    def testInitialise(): Unit = {
      // implement the following method in 'component':  def initialise(api: OrLogic_Initialization_Api): Unit = {}
      component.initialise(initialization_api)
      Art.releaseOutput(eventOutPortIds, dataOutPortIds)
    }

    override
    def testCompute(): Unit = {
      Art.receiveInput(eventInPortIds, dataInPortIds)

      // implement the following in 'component':  def timeTriggered(api: OrLogic_Operational_Api): Unit = {}
      component.timeTriggered(operational_api)

      Art.releaseOutput(eventOutPortIds, dataOutPortIds)
    }
  }
}