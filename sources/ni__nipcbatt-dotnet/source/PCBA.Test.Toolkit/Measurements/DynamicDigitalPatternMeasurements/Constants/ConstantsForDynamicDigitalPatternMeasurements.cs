using NI.MeasurementInstrumentation.Constants;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DynamicDigitalPatternMeasurements.Structs;
using PCBATestToolkitApi.Measurements.DcRmsVoltageMeasurements.Constants;

namespace PCBATestToolkitApi.Measurements.DynamicDigitalPatternMeasurements.Constants
{
    /// <summary>
    /// Define some constant structures used by Digital Pattern measurements.
    /// </summary>
    public static class ConstantsForDynamicDigitalPatternMeasurements
    {
        /// <summary>
        /// Default structure for parameters of Digital Pattern measurement.
        /// </summary>
        public static DynamicDigitalPatternMeasurementConfigurationParameters
            DefaultDynamicDigitalPatternMeasurementParameters
            => new DynamicDigitalPatternMeasurementConfigurationParameters(
                sampleClockSource: ConstantsForVoltageMeasurements.DefaultClockSource,
                samplingRateHertz: ConstantsForVoltageMeasurements.DefaultSamplingRateHertz,
                activeEdge: ESampleClockActiveEdge.Rising,
                numberOfSamplesPerChannel: ConstantsForVoltageMeasurements.DefaultNumberOfSamplesPerChannel,
                triggerSettings: ConstantsForDcRmsVoltageMeasurements.DefaultDcRmsVoltageMeasurementTriggerSettings,
                measurementExecutionType:
                ConstantsForDcRmsVoltageMeasurements
                    .DefaultDcRmsVoltageMeasurementOptions
                    .MeasurementExecutionType);
    }
}