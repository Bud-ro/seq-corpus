using System;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DcRmsCurrentMeasurements.Structs;

namespace PCBATestToolkitApi.Measurements.DcRmsCurrentMeasurements.Constants
{
    /// <summary>
    /// Define some constant structures used by DC-RMS Current measurements.
    /// </summary>
    public static class ConstantsForDcRmsCurrentMeasurements
    {
        /// <summary>
        /// Default structure for parameters of DC-RMS Current measurement.
        /// </summary>
        public static DcRmsCurrentMeasurementConfigurationParameters DefaultDcRmsCurrentMeasurementParameters
                => new DcRmsCurrentMeasurementConfigurationParameters(
                    channelsAndTerminalsRangeSettings: DefaultDcRmsCurrentMeasurementChannelsAndTerminalsRangeSettings,
                    options: DefaultDcRmsCurrentMeasurementOptions,
                    timingSettings: DefaultDcRmsCurrentMeasurementTimingSettings,
                    triggerSettings: DefaultDcRmsCurrentMeasurementTriggerSettings
            );

        /// <summary>
        /// Default structure for parameters of DC-RMS Current measurement terminal range settings.
        /// </summary>
        public static DcRmsCurrentMeasurementChannelsAndTerminalsRangeSettings DefaultDcRmsCurrentMeasurementChannelsAndTerminalsRangeSettings
                => new DcRmsCurrentMeasurementChannelsAndTerminalsRangeSettings(
                    globalSettings: new DcRmsCurrentMeasurementTerminalRangeSettings(
                        terminalConfiguration: NI.MeasurementInstrumentation.Constants.ConstantsForDcRmsCurrentMeasurements.DefaultTerminalConfiguration,
                        minimumValueAmperes: NI.MeasurementInstrumentation.Constants.ConstantsForDcRmsCurrentMeasurements.DefaultMinimumValueAmperes,
                        maximumValueAmperes: NI.MeasurementInstrumentation.Constants.ConstantsForDcRmsCurrentMeasurements.DefaultMaximumValueAmperes,
                        shuntResistorOhms: NI.MeasurementInstrumentation.Constants.ConstantsForDcRmsCurrentMeasurements.DefaultShuntResistorOhms),
                    channelsSettings: Array.Empty<DcRmsCurrentMeasurementChannelAndTerminalRangeSettings>());

        /// <summary>
        /// Default structure for options of DC-RMS Current measurement procedure.
        /// </summary>
        public static MeasurementOptions DefaultDcRmsCurrentMeasurementOptions
                => new MeasurementOptions(
                    measurementExecutionType: EMeasurementExecutionType.ConfigureAndMeasure,
                    measurementAnalysisRequirement: EMeasurementAnalysisRequirement.ProceedToAnalysis);

        /// <summary>
        /// Default structure for timing settings of DC-RMS Current measurement procedure.
        /// </summary>
        public static MeasurementTimingSettings DefaultDcRmsCurrentMeasurementTimingSettings
                => new MeasurementTimingSettings(
                    sampleClockSource: NI.MeasurementInstrumentation.Constants.ConstantsForDcRmsCurrentMeasurements.DefaultClockSource,
                    samplingRateHertz: NI.MeasurementInstrumentation.Constants.ConstantsForDcRmsCurrentMeasurements.DefaultSamplingRateHertz,
                    numberOfSamplesPerChannel: NI.MeasurementInstrumentation.Constants.ConstantsForDcRmsCurrentMeasurements.DefaultNumberOfSamplesPerChannel,
                    sampleTimingEngine: ESampleTimingEngine.Auto);

        /// <summary>
        /// Default structure for timing settings of DC-RMS Current measurement procedure.
        /// </summary>
        public static MeasurementTriggerSettings DefaultDcRmsCurrentMeasurementTriggerSettings
                => new MeasurementTriggerSettings(
                    triggerType: EMeasurementTriggerType.NoTrigger,
                    digitalStartTriggerSource: NI.MeasurementInstrumentation.Constants.ConstantsForDcRmsCurrentMeasurements.DefaultTriggerSource,
                    digitalEdgeStartTriggerEdge: EDigitalEdgeStartTriggerEdge.Rising);
    }
}