using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalFrequencyMeasurements.Structs;

namespace PCBATestToolkitApi.Measurements.DigitalFrequencyMeasurements.Constants
{
    /// <summary>
    /// Define some constant structures used by Digital Frequency measurements.
    /// </summary>
    public static class ConstantsForDigitalFrequencyMeasurements
    {
        /// <summary>
        /// Default structure for parameters of Digital Frequency measurement.
        /// </summary>
        public static DigitalFrequencyMeasurementConfigurationParameters
            DefaultDigitalFrequencyMeasurementParameters
            => new DigitalFrequencyMeasurementConfigurationParameters(
                rangeSettings: DefaultDigitalFrequencyMeasurementRangeSettings,
                frequencyCounterStartingEdge: ECounterInputFrequencyStartingEdge.Rising,
                inputDivisorForFrequencyMeasurement: NI.MeasurementInstrumentation.Constants
                    .ConstantsForDigitalFrequencyMeasurements
                    .DefaultInputDivisorForFrequencyMeasurement,
                measurementDurationSeconds: NI.MeasurementInstrumentation.Constants
                    .ConstantsForDigitalFrequencyMeasurements
                    .InitialMeasurementDurationSeconds);

        /// <summary>
        /// Default structure for parameters of DigitalFrequency range settings.
        /// </summary>
        public static DigitalFrequencyMeasurementRangeSettings DefaultDigitalFrequencyMeasurementRangeSettings
            => new DigitalFrequencyMeasurementRangeSettings(minimumValueHertz:
                NI.MeasurementInstrumentation.Constants.ConstantsForDigitalFrequencyMeasurements
                    .DefaultFrequencyMinimumValueHertz,
                maximumValueHertz: NI.MeasurementInstrumentation.Constants.ConstantsForDigitalFrequencyMeasurements
                    .DefaultFrequencyMaximumValueHertz);
    }
}
