module Svc {
  

  enum MeasurementStatus {
    MEASUREMENT_OK = 0 @< Measurement was good
    MEASUREMENT_FAILURE = 1 @< Failure to retrieve measurement
    MEASUREMENT_STALE = 2 @< Measurement is stale
  }

  @ Port for setting and getting PolyType values
  port Poly(
             entry: U32 @< The entry to access
             ref status: MeasurementStatus @< The command response argument
             ref $time: Fw.Time @< The time of the measurement
             ref val: Fw.PolyType @< The value to be passed
           )

}
