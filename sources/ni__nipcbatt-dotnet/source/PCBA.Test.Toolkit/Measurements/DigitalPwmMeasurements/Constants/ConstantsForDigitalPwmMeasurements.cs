using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalPwmMeasurements.Structs;

namespace PCBATestToolkitApi.Measurements.DigitalPwmMeasurements.Constants
{
    /// <summary>
    /// Define some constant structures used by digital pwm measurements.
    /// </summary>
    public static class ConstantsForDigitalPwmMeasurements
    {
        /// <summary>
        /// Default structure for parameters of digital pwm measurement.
        /// </summary>
        public static DigitalPwmMeasurementConfigurationParameters DefaultDigitalPwmMeasurementParameters
            => new DigitalPwmMeasurementConfigurationParameters(
                rangeSettings: DefaultDigitalPwmMeasurementRangeSettings,
                measurementExecutionType:EMeasurementExecutionType.ConfigureAndMeasure,
                semiPeriodCounterStartingEdge: ECounterInputSemiPeriodStartingEdge.Rising,
                semiPeriodCounterWantedCyclesCount: 10);

        /// <summary>
        /// Default structure for parameters of semi-periods range settings.
        /// </summary>
        public static DigitalPwmMeasurementRangeSettings DefaultDigitalPwmMeasurementRangeSettings
            => new DigitalPwmMeasurementRangeSettings(
                semiPeriodMinimumValueSeconds: NI.MeasurementInstrumentation.Constants.ConstantsForDigitalSemiPeriodMeasurements
                    .TestScaleDefaultSemiPeriodMinimumValueSeconds,
                semiPeriodMaximumValueSeconds: NI.MeasurementInstrumentation.Constants.ConstantsForDigitalSemiPeriodMeasurements
                    .TestScaleDefaultSemiPeriodMaximumValueSeconds);
    }
}