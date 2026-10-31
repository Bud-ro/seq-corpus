using System;
using NI.Core.Utilities.Common;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.SignalVoltageGenerations.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.SignalVoltageGenerations.Structs;
using PCBATestToolkitApi.Generations.DcVoltageGenerations.Constants;
using PCBATestToolkitApi.Measurements.DcRmsVoltageMeasurements.Constants;

namespace PCBATestToolkitApi.Generations.SignalVoltageGenerations.Constants
{
    /// <summary>
    /// Define some constant structures used by Signal Voltage generations.
    /// </summary>
    public static class ConstantsForSignalVoltageGenerations
    {
        #region periodic waveform settings
        /// <summary>
        /// Gets the default settings for sine wave generation.
        /// </summary>
        public static PeriodicWaveformSettings DefaultWaveformSettingsSquareWave
            => new PeriodicWaveformSettings(
                periodicWaveformType: EPeriodicWaveformType.SquareWaveform,
                frequencyHertz: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations
                    .DefaultFrequencyHertz,
                amplitudeVolts: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations
                    .DefaultAmplitudeVolts,
                phaseRadians: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations
                    .DefaultPhaseRadians,
                dutyCyclePercent: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations
                    .DefaultDutyCyclePercent);


        /// <summary>
        /// Gets the default settings for sine wave generation.
        /// </summary>
        public static PeriodicWaveformSettings DefaultWaveformSettingsSineWave
            => new PeriodicWaveformSettings(
                periodicWaveformType: EPeriodicWaveformType.SineWaveform,
                frequencyHertz: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations
                    .DefaultFrequencyHertz,
                amplitudeVolts: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations
                    .DefaultAmplitudeVolts,
                phaseRadians: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations
                    .DefaultPhaseRadians,
                dutyCyclePercent: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations
                    .DefaultDutyCyclePercent);
        #endregion

        #region signal voltage generation configuration objects
        /// <summary>
        /// Gets the default signal waveform for Sine wave generations.
        /// </summary>
        public static SignalVoltageGenerationConfigurationParameters DefaultSineWaveSignalVoltageGenerationParameters
            => new SignalVoltageGenerationConfigurationParameters(
                rangeSettings: ConstantsForDcVoltageGenerations.DefaultVoltageGenerationRangeSettings,
                timingSettings: DefaultSignalVoltageGenerationTimingSettings,
                triggerSettings: ConstantsForDcRmsVoltageMeasurements.DefaultDcRmsVoltageMeasurementTriggerSettings,
                signalGenerationSettings: new SignalGenerationSettings(
                    signalGenerationWaveformType: ESignalGenerationWaveformType.PeriodicWaveform,
                    durationSeconds: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultDurationSeconds,
                    offsetVolts: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultOffsetVolts,
                    periodicWaveformSettings: DefaultWaveformSettingsSineWave,
                    multipleTonesWaveformSettings: Array.Empty<SignalToneSettings>()));



        /// <summary>
        /// Gets the default signal waveform for Square wave generations.
        /// </summary>
        public static SignalVoltageGenerationConfigurationParameters DefaultSquareWaveSignalVoltageGenerationParameters
            => new SignalVoltageGenerationConfigurationParameters(
                rangeSettings: ConstantsForDcVoltageGenerations.DefaultVoltageGenerationRangeSettings,
                timingSettings: DefaultSignalVoltageGenerationTimingSettings,
                triggerSettings: ConstantsForDcRmsVoltageMeasurements.DefaultDcRmsVoltageMeasurementTriggerSettings,
                signalGenerationSettings: new SignalGenerationSettings(
                    signalGenerationWaveformType: ESignalGenerationWaveformType.PeriodicWaveform,
                    durationSeconds: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultDurationSeconds,
                    offsetVolts: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultOffsetVolts,
                    periodicWaveformSettings: DefaultWaveformSettingsSquareWave,
                    multipleTonesWaveformSettings: Array.Empty<SignalToneSettings>()));

        /// <summary>
        /// Gets the default signal waveform for multiple tones sine waves generations.
        /// </summary>
        public static SignalVoltageGenerationConfigurationParameters DefaultMultipleTonesSignalVoltageGenerationParameters
            => new SignalVoltageGenerationConfigurationParameters(
                rangeSettings: ConstantsForDcVoltageGenerations.DefaultVoltageGenerationRangeSettings,
                timingSettings: DefaultSignalVoltageGenerationTimingSettings,
                triggerSettings: ConstantsForDcRmsVoltageMeasurements.DefaultDcRmsVoltageMeasurementTriggerSettings,
                signalGenerationSettings: new SignalGenerationSettings(
                    signalGenerationWaveformType: ESignalGenerationWaveformType.MultipleTonesWaveform,
                    durationSeconds: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultDurationSeconds,
                    offsetVolts: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultOffsetVolts,
                    periodicWaveformSettings: DefaultWaveformSettingsSineWave,
                    multipleTonesWaveformSettings: new[]
                    {
                        new SignalToneSettings(toneFrequencyHertz: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultFrequencyHertz
                                - NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultDeltaFrequencyHertz,
                            toneAmplitudeVolts: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultAmplitudeVolts.PercentOf(110),
                            tonePhaseRadians: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultTonePhaseRadians),
                        new SignalToneSettings(toneFrequencyHertz: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultFrequencyHertz,
                            toneAmplitudeVolts: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultAmplitudeVolts,
                            tonePhaseRadians: 0),
                        new SignalToneSettings(toneFrequencyHertz: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultFrequencyHertz
                                + NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultDeltaFrequencyHertz,
                            toneAmplitudeVolts: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultAmplitudeVolts.PercentOf(110),
                            tonePhaseRadians: -NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultTonePhaseRadians),
                    }));

        /// <summary>
        /// Default structure for timing settings of Signal Voltage generation procedure.
        /// </summary>
        public static SignalVoltageGenerationTimingSettings DefaultSignalVoltageGenerationTimingSettings
            => new SignalVoltageGenerationTimingSettings(
                sampleClockSource: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultClockSource,
                samplingRateHertz: NI.MeasurementInstrumentation.Constants.ConstantsForSignalVoltageGenerations.DefaultSamplingRateHertz,
                sampleTimingEngine: ESampleTimingEngine.Auto);

            #endregion
    }
}
