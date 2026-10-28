using NI.MeasurementInstrumentation.Constants;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TemperatureMeasurements.Structs;

namespace PCBATestToolkitApi.Measurements.TemperatureMeasurements.Constants
{
    /// <summary>
    /// Define some constant structures used by temperature measurements using
    /// a <a href="https://en.wikipedia.org/wiki/Thermocouple#Platinum.2Frhodium-alloy_thermocouples">thermocouple</a>.
    /// </summary>
    public class ConstantsForTemperatureMeasurementsUsingThermocouple
    {
        /// <summary>
        /// Default structure for parameters of Temperature measurements using Thermocouple.
        /// </summary>
        public static TemperatureThermocoupleMeasurementConfigurationParameters DefaultTemperatureThermocoupleMeasurementParameters
            => new TemperatureThermocoupleMeasurementConfigurationParameters(
                terminalRangeSettings: DefaultTemperatureThermocoupleMeasurementTerminalSettings,
                measurementExecutionType: EMeasurementExecutionType.ConfigureAndMeasure,
                timingSettings: DefaultTemperatureThermocoupleMeasurementTimingSettings,
                triggerSettings: DefaultTemperatureThermocoupleMeasurementTriggerSettings
            );

        /// <summary>
        /// Default structure for parameters of Temperature measurement terminal settings.
        /// </summary>
        public static TemperatureThermocoupleMeasurementChannelsAndTerminalSettings DefaultTemperatureThermocoupleMeasurementTerminalSettings
            => new TemperatureThermocoupleMeasurementChannelsAndTerminalSettings(
                globalRangeSettings: new TemperatureThermocoupleMeasurementTerminalRangeSettings(
                    temperatureMinimumValueCelsiusDegrees: ConstantsForTemperatureMeasurements.InitialMinimumValueCelsiusDegrees,
                    temperatureMaximumValueCelsiusDegrees: ConstantsForTemperatureMeasurements.InitialMaximumValueCelsiusDegrees,
                    coldJunctionCompensationValueCelsiusDegrees: ConstantsForTemperatureMeasurements.DefaultColdJunctionCompensationValueCelsiusDegrees,
                    thermocoupleType: ConstantsForTemperatureMeasurements.DefaultThermocoupleType,
                    performAutoZeroMode: ConstantsForTemperatureMeasurements.DoesPerformAutoZeroMode,
                    autoZeroMode: ConstantsForTemperatureMeasurements.DefaultAutoZeroModeExecution),
                channelsSettings: System.Array.Empty<TemperatureThermocoupleMeasurementChannelSettings>());

        /// <summary>
        /// Default structure for timing settings of temperature measurement procedure using Thermocouple.
        /// </summary>
        public static MeasurementTimingSettings DefaultTemperatureThermocoupleMeasurementTimingSettings
            => new MeasurementTimingSettings(
                sampleClockSource: ConstantsForVoltageMeasurements.DefaultClockSource,
                samplingRateHertz: ConstantsForTemperatureMeasurements.DefaultSamplingRateHertz,
                numberOfSamplesPerChannel: ConstantsForTemperatureMeasurements.DefaultNumberOfSamplesPerChannel,
                sampleTimingEngine: ESampleTimingEngine.Auto);

        /// <summary>
        /// Default structure for timing settings of temperature measurement procedure using Thermocouple.
        /// </summary>
        public static MeasurementTriggerSettings DefaultTemperatureThermocoupleMeasurementTriggerSettings
            => new MeasurementTriggerSettings(
                triggerType: EMeasurementTriggerType.NoTrigger,
                digitalStartTriggerSource: ConstantsForVoltageMeasurements.DefaultTriggerSource,
                digitalEdgeStartTriggerEdge: EDigitalEdgeStartTriggerEdge.Rising);
    }
}