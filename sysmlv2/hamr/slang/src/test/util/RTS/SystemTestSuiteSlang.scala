// #Sireum

package RTS

import org.sireum._
import art.scheduling.Scheduler
import art.{Art, DataContent}
import RTS.SystemTestSuiteSlang._
import RTS.runtimemonitor.{GumboXDispatcher, ObservationKind, RuntimeMonitor, RuntimeMonitorListener}

// Do not edit this file as it will be overwritten if HAMR codegen is rerun

object SystemTestSuiteSlang {
  // for now just keep the last post state for a bridge
  var runtimeMonitorStream: Map[Art.BridgeId, (ObservationKind.Type, DataContent)] = Map.empty
}

@msig trait SystemTestSuiteSlang extends RuntimeMonitorListener {

  def scheduler: Scheduler

  override def init(modelInfo: RTS.runtimemonitor.ModelInfo): Unit = {
  }

  override def finalise(): Unit = {
  }

  override def observeInitialisePostState(bridgeId: Art.BridgeId, observationKind: ObservationKind.Type, post: DataContent): Unit = {
    runtimeMonitorStream = runtimeMonitorStream + (bridgeId ~> (observationKind, post))

  }

  override def observeComputePreState(bridgeId: art.Art.BridgeId, observationKind: RTS.runtimemonitor.ObservationKind.Type, pre: Option[art.DataContent]): Unit = {
  }

  override def observeComputePrePostState(bridgeId: Art.BridgeId,
                                          observationKind: ObservationKind.Type,
                                          pre: Option[art.DataContent],
                                          post: DataContent): Unit = {
    runtimeMonitorStream = runtimeMonitorStream + (bridgeId ~> (observationKind, post))

  }

  def beforeEachSlang(): Unit = {
    runtimeMonitorStream = Map.empty

    RuntimeMonitor.registerListener(this)

    Platform.setup()
    Art.initSystemTest(Arch.ad, scheduler)
  }

  def afterEachSlang(): Unit = {
    Art.finalizeSystemTest()
    Platform.tearDown()
  }

  def must_match[A](expected: A, actual: A): Unit = {
    assert(expected == actual, s"Expected: $expected, Actual: $actual")
  }
}
