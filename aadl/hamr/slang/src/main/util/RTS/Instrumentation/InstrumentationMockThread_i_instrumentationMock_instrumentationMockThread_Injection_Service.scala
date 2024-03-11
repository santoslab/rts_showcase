// #Sireum
package RTS.Instrumentation

import org.sireum._

// Do not edit this file as it will be overwritten if HAMR codegen is rerun

@msig trait InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread_Injection_Provider {
  def pre_receiveInput(): Unit
}

object InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread_Injection_Service {

  var providers: MSZ[InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread_Injection_Provider] = MSZ()

  def register(provider: InstrumentationMockThread_i_instrumentationMock_instrumentationMockThread_Injection_Provider): Unit = {
    providers = providers :+ provider
  }

  def pre_receiveInput(): Unit = {
    for (provider <- providers) {
      provider.pre_receiveInput()
    }
  }
}