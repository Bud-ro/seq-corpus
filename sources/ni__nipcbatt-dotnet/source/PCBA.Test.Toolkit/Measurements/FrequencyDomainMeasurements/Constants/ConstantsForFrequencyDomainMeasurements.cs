using System;
using NI.MeasurementInstrumentation.Constants;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.FrequencyDomainMeasurements.Structs;

namespace PCBATestToolkitApi.Measurements.FrequencyDomainMeasurements.Constants
{
    /// <summary>
    /// Define some constant structures used by Frequency domain measurements.
    /// </summary>
    public static class ConstantsForFrequencyDomainMeasurements
    {
        /// <summary>
        /// Default structure for parameters of Frequency domain measurement.
        /// </summary>
        public static FrequencyDomainMeasurementConfigurationParameters DefaultFrequencyDomainMeasurementParameters
                => new FrequencyDomainMeasurementConfigurationParameters(
                    channelAndTerminalSettings: DefaultFrequencyDomainMeasurementChannelAndTerminalSettings,
                    options: DefaultFrequencyDomainMeasurementOptions,
                    timingSettings: DefaultFrequencyDomainMeasurementTimingSettings,
                    triggerSettings: DefaultFrequencyDomainMeasurementTriggerSettings
            );

        /// <summary>
        /// Default structure for parameters of Frequency domain measurement terminal range settings.
        /// </summary>
        public static VoltageMeasurementChannelAndTerminalSettings DefaultFrequencyDomainMeasurementChannelAndTerminalSettings
                => new VoltageMeasurementChannelAndTerminalSettings(
                    globalSettings: new VoltageMeasurementTerminalRangeSettings(
                        terminalConfiguration: ConstantsForVoltageMeasurements.DefaultTerminalConfiguration,
                        minimumValueVolts: ConstantsForVoltageMeasurements.DefaultMinimumValueVolts,
                        maximumValueVolts: ConstantsForVoltageMeasurements.DefaultMaximumValueVolts),
                    channelsSettings: Array.Empty<VoltageMeasurementChannelAndTerminalRangeSettings>());

        /// <summary>
        /// Default structure for options of Frequency domain measurement procedure.
        /// </summary>
        public static MeasurementOptions DefaultFrequencyDomainMeasurementOptions
                => new MeasurementOptions(
                    measurementExecutionType: EMeasurementExecutionType.ConfigureAndMeasure,
                    measurementAnalysisRequirement: EMeasurementAnalysisRequirement.ProceedToAnalysis);

        /// <summary>
        /// Default structure for timing settings of Frequency domain measurement procedure.
        /// </summary>
        public static MeasurementTimingSettings DefaultFrequencyDomainMeasurementTimingSettings
                => new MeasurementTimingSettings(
                    sampleClockSource: ConstantsForVoltageMeasurements.DefaultClockSource,
                    samplingRateHertz: ConstantsForVoltageMeasurements.DefaultSamplingRateHertz,
                    numberOfSamplesPerChannel: ConstantsForVoltageMeasurements.DefaultNumberOfSamplesPerChannel,
                    sampleTimingEngine: ESampleTimingEngine.Auto);

        /// <summary>
        /// Default structure for timing settings of Frequency domain measurement procedure.
        /// </summary>
        public static MeasurementTriggerSettings DefaultFrequencyDomainMeasurementTriggerSettings
                => new MeasurementTriggerSettings(
                    triggerType: EMeasurementTriggerType.NoTrigger,
                    digitalStartTriggerSource: ConstantsForVoltageMeasurements.DefaultTriggerSource,
                    digitalEdgeStartTriggerEdge: EDigitalEdgeStartTriggerEdge.Rising);
    }
}
