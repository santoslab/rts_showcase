// #Sireum
package RTS.EventControl

import org.sireum._

// Do not edit this file as it will be overwritten if HAMR codegen is rerun

@msig trait EventControlMockThread_eventControlMock_eventControlMockThread_Injection_Provider {
  def pre_receiveInput(): Unit
}

object EventControlMockThread_eventControlMock_eventControlMockThread_Injection_Service {

  var providers: MSZ[EventControlMockThread_eventControlMock_eventControlMockThread_Injection_Provider] = MSZ()

  def register(provider: EventControlMockThread_eventControlMock_eventControlMockThread_Injection_Provider): Unit = {
    providers = providers :+ provider
  }

  def pre_receiveInput(): Unit = {
    for (provider <- providers) {
      provider.pre_receiveInput()
    }
  }
}