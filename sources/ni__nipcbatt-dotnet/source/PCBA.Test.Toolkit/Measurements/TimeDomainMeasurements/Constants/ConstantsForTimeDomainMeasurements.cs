using NI.MeasurementInstrumentation.Constants;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TimeDomainMeasurements.Structs;

namespace PCBATestToolkitApi.Measurements.TimeDomainMeasurements.Constants
{
    /// <summary>
    /// Define some constant structures used by  Time Domain measurements.
    /// </summary>
    public static class ConstantsForTimeDomainMeasurements
    {
        /// <summary>
        /// Default structure for parameters of Time Domain measurement.
        /// </summary>
        public static TimeDomainMeasurementConfigurationParameters DefaultTimeDomainMeasurementParameters
                => new TimeDomainMeasurementConfigurationParameters(
                    channelAndTerminalSettings: DefaultTimeDomainMeasurementChannelAndTerminalSettings,
                    options: DefaultTimeDomainMeasurementOptions,
                    timingSettings: DefaultTimeDomainMeasurementTimingSettings,
                    triggerSettings: DefaultTimeDomainMeasurementTriggerSettings
            );

        /// <summary>
        /// Default structure for parameters of Frequency domain measurement terminal range settings.
        /// </summary>
        public static VoltageMeasurementChannelAndTerminalSettings DefaultTimeDomainMeasurementChannelAndTerminalSettings
            => new VoltageMeasurementChannelAndTerminalSettings(
                globalSettings: new VoltageMeasurementTerminalRangeSettings(
                    terminalConfiguration: ConstantsForVoltageMeasurements.DefaultTerminalConfiguration,
                    minimumValueVolts: ConstantsForVoltageMeasurements.DefaultMinimumValueVolts,
                    maximumValueVolts: ConstantsForVoltageMeasurements.DefaultMaximumValueVolts),
                channelsSettings: System.Array.Empty<VoltageMeasurementChannelAndTerminalRangeSettings>());

        /// <summary>
        /// Default structure for options of Frequency domain measurement procedure.
        /// </summary>
        public static MeasurementOptions DefaultTimeDomainMeasurementOptions
                => new MeasurementOptions(
                    measurementExecutionType: EMeasurementExecutionType.ConfigureAndMeasure,
                    measurementAnalysisRequirement: EMeasurementAnalysisRequirement.ProceedToAnalysis);

        /// <summary>
        /// Default structure for timing settings of Time Domain measurement procedure.
        /// </summary>
        public static MeasurementTimingSettings DefaultTimeDomainMeasurementTimingSettings
                => new MeasurementTimingSettings(
                    sampleClockSource: ConstantsForVoltageMeasurements.DefaultClockSource,
                    samplingRateHertz: ConstantsForVoltageMeasurements.DefaultSamplingRateHertz,
                    numberOfSamplesPerChannel: ConstantsForVoltageMeasurements.DefaultNumberOfSamplesPerChannel,
                    sampleTimingEngine: ESampleTimingEngine.Auto);

        /// <summary>
        /// Default structure for timing settings of Time Domain measurement procedure.
        /// </summary>
        public static MeasurementTriggerSettings DefaultTimeDomainMeasurementTriggerSettings
                => new MeasurementTriggerSettings(
                    triggerType: EMeasurementTriggerType.NoTrigger,
                    digitalStartTriggerSource: ConstantsForVoltageMeasurements.DefaultTriggerSource,
                    digitalEdgeStartTriggerEdge: EDigitalEdgeStartTriggerEdge.Rising);
    }
}
