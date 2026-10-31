using System;
using NI.MeasurementInstrumentation.Constants;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DcRmsVoltageMeasurements.Structs;

namespace PCBATestToolkitApi.Measurements.DcRmsVoltageMeasurements.Constants
{
    /// <summary>
    /// Define some constant structures used by DC-RMS Voltage measurements.
    /// </summary>
    public static class ConstantsForDcRmsVoltageMeasurements
    {
        /// <summary>
        /// Default structure for parameters of DC-RMS Voltage measurement.
        /// </summary>
        public static DcRmsVoltageMeasurementConfigurationParameters DefaultDcRmsVoltageMeasurementParameters
                => new DcRmsVoltageMeasurementConfigurationParameters(
                    channelAndTerminalSettings: DefaultDcRmsVoltageMeasurementChannelAndTerminalSettings,
                    options: DefaultDcRmsVoltageMeasurementOptions,
                    timingSettings: DefaultDcRmsVoltageMeasurementTimingSettings,
                    triggerSettings: DefaultDcRmsVoltageMeasurementTriggerSettings
            );

        /// <summary>
        /// Default structure for parameters of DC-RMS Voltage measurement terminal range settings.
        /// </summary>
        public static VoltageMeasurementChannelAndTerminalSettings DefaultDcRmsVoltageMeasurementChannelAndTerminalSettings
                => new VoltageMeasurementChannelAndTerminalSettings(
                    globalSettings: new VoltageMeasurementTerminalRangeSettings(
                        terminalConfiguration: ConstantsForVoltageMeasurements.DefaultTerminalConfiguration,
                        minimumValueVolts: ConstantsForVoltageMeasurements.DefaultMinimumValueVolts,
                        maximumValueVolts: ConstantsForVoltageMeasurements.DefaultMaximumValueVolts),
                    channelsSettings: Array.Empty<VoltageMeasurementChannelAndTerminalRangeSettings>());

        /// <summary>
        /// Default structure for options of DC-RMS Voltage measurement procedure.
        /// </summary>
        public static MeasurementOptions DefaultDcRmsVoltageMeasurementOptions
                => new MeasurementOptions(
                    measurementExecutionType: EMeasurementExecutionType.ConfigureAndMeasure,
                    measurementAnalysisRequirement: EMeasurementAnalysisRequirement.ProceedToAnalysis);

        /// <summary>
        /// Default structure for timing settings of DC-RMS Voltage measurement procedure.
        /// </summary>
        public static MeasurementTimingSettings DefaultDcRmsVoltageMeasurementTimingSettings
                => new MeasurementTimingSettings(
                    sampleClockSource: ConstantsForVoltageMeasurements.DefaultClockSource,
                    samplingRateHertz: ConstantsForVoltageMeasurements.DefaultSamplingRateHertz,
                    numberOfSamplesPerChannel: ConstantsForVoltageMeasurements.DefaultNumberOfSamplesPerChannel,
                    sampleTimingEngine: ESampleTimingEngine.Auto);

        /// <summary>
        /// Default structure for timing settings of DC-RMS Voltage measurement procedure.
        /// </summary>
        public static MeasurementTriggerSettings DefaultDcRmsVoltageMeasurementTriggerSettings
                => new MeasurementTriggerSettings(
                    triggerType: EMeasurementTriggerType.NoTrigger,
                    digitalStartTriggerSource: ConstantsForVoltageMeasurements.DefaultTriggerSource,
                    digitalEdgeStartTriggerEdge: EDigitalEdgeStartTriggerEdge.Rising);
    }
}
