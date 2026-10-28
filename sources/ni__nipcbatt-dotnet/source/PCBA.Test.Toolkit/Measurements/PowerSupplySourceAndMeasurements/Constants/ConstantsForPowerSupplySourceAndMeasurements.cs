using NI.MeasurementInstrumentation.Constants;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.PowerSupplySourceAndMeasurements.Structs;

namespace PCBATestToolkitApi.Measurements.PowerSupplySourceAndMeasurements.Constants
{
    /// <summary>
    /// Define some constant structures used by  Power Supply Source and Measure.
    /// </summary>
    public static class ConstantsForPowerSupplySourceAndMeasurements
    {
        /// <summary>
        /// Default structure for parameters of Power Supply Source and Measure.
        /// </summary>
        public static PowerSupplySourceAndMeasureConfigurationParameters DefaultPowerSupplySourceAndMeasureParameters
                => new PowerSupplySourceAndMeasureConfigurationParameters(
                    terminalSettings: DefaultPowerSupplySourceAndMeasureTerminalSettings,
                    options: DefaultFrequencyDomainMeasurementOptions,
                    timingSettings: DefaultPowerSupplySourceAndMeasureTimingSettings,
                    triggerSettings: DefaultPowerSupplySourceAndMeasureTriggerSettings
            );

        /// <summary>
        /// Default structure for parameters of Power Supply Source and Measure terminal range settings.
        /// </summary>
        public static PowerSupplySourceAndMeasureTerminalSettings DefaultPowerSupplySourceAndMeasureTerminalSettings
                => new PowerSupplySourceAndMeasureTerminalSettings(
                        voltageSetpointVolts: ConstantsForPowerSupplySourcesAndMeasures.DefaultVoltageSetpointVolts,
                        currentSetpointAmperes: ConstantsForPowerSupplySourcesAndMeasures.DefaultCurrentSetpointAmperes,
                        powerSense: EPowerSense.Local,
                        powerIdleOutputBehavior: EPowerIdleOutputBehavior.OutputDisabled,
                        enableOutput: ConstantsForPowerSupplySourcesAndMeasures.EnableOutputByDefault);

        /// <summary>
        /// Default structure for options of Power Supply Source and Measure procedure.
        /// </summary>
        public static MeasurementOptions DefaultFrequencyDomainMeasurementOptions
                => new MeasurementOptions(
                    measurementExecutionType: EMeasurementExecutionType.ConfigureAndMeasure,
                    measurementAnalysisRequirement: EMeasurementAnalysisRequirement.ProceedToAnalysis);

        /// <summary>
        /// Default structure for timing settings of Power Supply Source and Measure procedure.
        /// </summary>
        public static MeasurementTimingSettings DefaultPowerSupplySourceAndMeasureTimingSettings
                => new MeasurementTimingSettings(
                    sampleClockSource: ConstantsForVoltageMeasurements.DefaultClockSource,
                    samplingRateHertz: ConstantsForVoltageMeasurements.DefaultSamplingRateHertz,
                    numberOfSamplesPerChannel: ConstantsForVoltageMeasurements.DefaultNumberOfSamplesPerChannel,
                    sampleTimingEngine: ESampleTimingEngine.Auto);

        /// <summary>
        /// Default structure for timing settings of Power Supply Source and Measure procedure.
        /// </summary>
        public static MeasurementTriggerSettings DefaultPowerSupplySourceAndMeasureTriggerSettings
                => new MeasurementTriggerSettings(
                    triggerType: EMeasurementTriggerType.NoTrigger,
                    digitalStartTriggerSource: ConstantsForVoltageMeasurements.DefaultTriggerSource,
                    digitalEdgeStartTriggerEdge: EDigitalEdgeStartTriggerEdge.Rising);
    }
}
