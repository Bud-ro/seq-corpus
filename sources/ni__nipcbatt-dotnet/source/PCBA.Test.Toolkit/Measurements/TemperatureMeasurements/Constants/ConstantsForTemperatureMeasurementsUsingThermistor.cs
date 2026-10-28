using NI.MeasurementInstrumentation.Constants;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TemperatureMeasurements.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TemperatureMeasurements.Structs;

namespace PCBATestToolkitApi.Measurements.TemperatureMeasurements.Constants
{
    /// <summary>
    /// Define some constant structures used by temperature measurements using
    ///  a <a href="https://en.wikipedia.org/wiki/Thermistor">thermistor</a>.
    /// </summary>
    public class ConstantsForTemperatureMeasurementsUsingThermistor
    {
        /// <summary>
        /// Default structure for parameters of Temperature measurements using Thermistor.
        /// </summary>
        public static TemperatureThermistorMeasurementConfigurationParameters
            DefaultTemperatureThermistorMeasurementParameters
                => new TemperatureThermistorMeasurementConfigurationParameters(
                    terminalSettings: DefaultTemperatureThermistorMeasurementTerminalSettings,
                    measurementExecutionType: EMeasurementExecutionType.ConfigureAndMeasure,
                    timingSettings: DefaultTemperatureThermistorMeasurementTimingSettings,
                    triggerSettings: DefaultTemperatureThermistorMeasurementTriggerSettings
                );

        /// <summary>
        /// Default structure for parameters of Temperature measurement terminal settings using Thermistor.
        /// </summary>
        public static TemperatureThermistorMeasurementChannelsAndTerminalSettings
            DefaultTemperatureThermistorMeasurementTerminalSettings
                => new TemperatureThermistorMeasurementChannelsAndTerminalSettings(
                    globalRangeSettings: new TemperatureThermistorMeasurementTerminalRangeSettings(
                        terminalConfiguration: EAnalogInputTerminalConfiguration.RSE,
                        temperatureMinimumValueCelsiusDegrees: ConstantsForTemperatureMeasurements.InitialMinimumValueCelsiusDegrees,
                        temperatureMaximumValueCelsiusDegrees: ConstantsForTemperatureMeasurements.InitialMaximumValueCelsiusDegrees,
                        voltageExcitationValueVolts: ConstantsForTemperatureMeasurements.DefaultVoltageExcitationValueVolts,
                        thermistorResistorOhms: ConstantsForTemperatureMeasurements.DefaultThermistorResistorOhms,
                        steinhartHartEquationOption: ESteinhartHartEquationOption.UseSteinhartHartCoefficients,
                        coefficientSteinhartHartA: ConstantsForTemperatureMeasurements.DefaultCoefficientSteinhartHartA,
                        coefficientSteinhartHartB: ConstantsForTemperatureMeasurements.DefaultCoefficientSteinhartHartB,
                        coefficientSteinhartHartC: ConstantsForTemperatureMeasurements.DefaultCoefficientSteinhartHartC,
                        coefficientSteinhartHartBetaKelvins: ConstantsForTemperatureMeasurements.DefaultCoefficientSteinhartHartBetaKelvins,
                        sensorResistanceOhms: ConstantsForTemperatureMeasurements.DefaultSensorResistanceOhms),
                    channelsSettings: System.Array.Empty<TemperatureThermistorMeasurementChannelSettings>());

        /// <summary>
        /// Default structure for timing settings of temperature measurement procedure using Thermistor.
        /// </summary>
        public static MeasurementTimingSettings DefaultTemperatureThermistorMeasurementTimingSettings
            => new MeasurementTimingSettings(
                sampleClockSource: ConstantsForVoltageMeasurements.DefaultClockSource,
                samplingRateHertz: ConstantsForTemperatureMeasurements.DefaultSamplingRateHertz,
                numberOfSamplesPerChannel: ConstantsForTemperatureMeasurements.DefaultNumberOfSamplesPerChannel,
                sampleTimingEngine: ESampleTimingEngine.Auto);

        /// <summary>
        /// Default structure for timing settings of temperature measurement procedure using Thermistor.
        /// </summary>
        public static MeasurementTriggerSettings DefaultTemperatureThermistorMeasurementTriggerSettings
            => new MeasurementTriggerSettings(
                triggerType: EMeasurementTriggerType.NoTrigger,
                digitalStartTriggerSource: ConstantsForVoltageMeasurements.DefaultTriggerSource,
                digitalEdgeStartTriggerEdge: EDigitalEdgeStartTriggerEdge.Rising);
    }
}
