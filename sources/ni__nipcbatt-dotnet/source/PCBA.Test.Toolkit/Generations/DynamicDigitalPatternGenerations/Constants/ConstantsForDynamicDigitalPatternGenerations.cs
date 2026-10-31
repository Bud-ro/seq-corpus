using System;
using System.Linq;
using NI.MeasurementInstrumentation.Constants;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DynamicDigitalPatternGenerations.Structs;
using PCBATestToolkitApi.Measurements.DcRmsVoltageMeasurements.Constants;

namespace PCBATestToolkitApi.Generations.DynamicDigitalPatternGenerations.Constants
{
    /// <summary>
    /// Define some constant structures used by Digital Pattern generations.
    /// </summary>
    public static class ConstantsForDynamicDigitalPatternGenerations
    {
        /// <summary>
        /// Default structure for parameters of Digital Pattern generation.
        /// </summary>
        public static DynamicDigitalPatternGenerationConfigurationParameters
            DefaultDynamicDigitalPatternGenerationParameters
                => new DynamicDigitalPatternGenerationConfigurationParameters(
                    sampleClockSource: ConstantsForVoltageMeasurements.DefaultClockSource,
                    samplingRateHertz: ConstantsForVoltageMeasurements.DefaultSamplingRateHertz,
                    activeEdge: ESampleClockActiveEdge.Rising,
                    numberOfSamplesPerChannel: ConstantsForVoltageMeasurements.DefaultNumberOfSamplesPerChannel,
                    triggerSettings: ConstantsForDcRmsVoltageMeasurements.DefaultDcRmsVoltageMeasurementTriggerSettings,
                    digitalData: Enumerable.Range(0, 8).Select(item => (uint)Math.Pow(2, item)).ToArray());
    }
}
