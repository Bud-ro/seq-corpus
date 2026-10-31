using NI.MeasurementInstrumentation.Constants;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TemperatureMeasurements.Structs;

namespace PCBATestToolkitApi.Measurements.TemperatureMeasurements.Constants
{
    /// <summary>
    /// Define some constant structures used by temperature measurements using
    ///  a <a href="https://en.wikipedia.org/wiki/Resistance_thermometer">Resistance Temperature Detector (RTD)</a>.
    /// </summary>
    public class ConstantsForTemperatureMeasurementsUsingRtd
    {
        /// <summary>
        /// Default structure for parameters of Temperature measurements using RTD.
        /// </summary>
        public static TemperatureRtdMeasurementConfigurationParameters DefaultTemperatureRtdMeasurementParameters
            => new TemperatureRtdMeasurementConfigurationParameters(
                terminalSettings: DefaultTemperatureRtdMeasurementTerminalSettings,
                measurementExecutionType: EMeasurementExecutionType.ConfigureAndMeasure,
                timingSettings: DefaultTemperatureRtdMeasurementTimingSettings,
                triggerSettings: DefaultTemperatureRtdMeasurementTriggerSettings
            );

        /// <summary>
        /// Default structure for parameters of Temperature measurement terminal settings.
        /// </summary>
        public static TemperatureRtdMeasurementChannelsAndTerminalSettings DefaultTemperatureRtdMeasurementTerminalSettings
            => new TemperatureRtdMeasurementChannelsAndTerminalSettings(
                globalRangeSettings: new TemperatureRtdMeasurementTerminalRangeSettings(
                    temperatureMinimumValueCelsiusDegrees: ConstantsForTemperatureMeasurements.InitialMinimumValueCelsiusDegrees,
                    temperatureMaximumValueCelsiusDegrees: ConstantsForTemperatureMeasurements.InitialMaximumValueCelsiusDegrees,
                    currentExcitationValueAmperes: ConstantsForTemperatureMeasurements.DefaultCurrentExcitationValueAmperes,
                    sensorResistanceOhms: ConstantsForTemperatureMeasurements.InitialSensorResistanceOhms,
                    rtdType: ConstantsForTemperatureMeasurements.InitialRtdType,
                    excitationSource: ConstantsForTemperatureMeasurements.InitialCurrentExcitationSource,
                    resistanceConfiguration: ConstantsForTemperatureMeasurements.InitialResistanceConfiguration,
                    timingMode: EAnalogInputAdcTimingMode.Automatic),
                channelsSettings: System.Array.Empty<TemperatureRtdMeasurementChannelSettings>());

        /// <summary>
        /// Default structure for timing settings of temperature measurement procedure using RTD.
        /// </summary>
        public static MeasurementTimingSettings DefaultTemperatureRtdMeasurementTimingSettings
            => new MeasurementTimingSettings(
                sampleClockSource: ConstantsForVoltageMeasurements.DefaultClockSource,
                samplingRateHertz: ConstantsForTemperatureMeasurements.DefaultSamplingRateHertz,
                numberOfSamplesPerChannel: ConstantsForTemperatureMeasurements.DefaultNumberOfSamplesPerChannel,
                sampleTimingEngine: ESampleTimingEngine.Auto);

        /// <summary>
        /// Default structure for timing settings of temperature measurement procedure using RTD.
        /// </summary>
        public static MeasurementTriggerSettings DefaultTemperatureRtdMeasurementTriggerSettings
            => new MeasurementTriggerSettings(
                triggerType: EMeasurementTriggerType.NoTrigger,
                digitalStartTriggerSource: ConstantsForVoltageMeasurements.DefaultTriggerSource,
                digitalEdgeStartTriggerEdge: EDigitalEdgeStartTriggerEdge.Rising);
    }
}