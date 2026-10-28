using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DigitalClockGenerations.Structs;

namespace PCBATestToolkitApi.Generations.DigitalClockGenerations.Constants
{
    /// <summary>
    /// Define some constant structures used by digital clock generations.
    /// </summary>
    public static class ConstantsForDigitalClockGenerations
    {
        private const double InitialClockDurationSeconds = 10;

        /// <summary>
        /// Default structure for parameters of digital clock generation.
        /// </summary>
        public static DigitalClockGenerationConfigurationParameters DefaultDigitalClockGenerationConfigurationParameters =>
            new DigitalClockGenerationConfigurationParameters(
                expectedClockSettings: new DigitalClockSettings(
                    frequencyHertz: NI.MeasurementInstrumentation.Constants.ConstantsForDigitalClockGenerations.InitialClockFrequencyHertz,
                    dutyCyclePercent: NI.MeasurementInstrumentation.Constants.ConstantsForDigitalClockGenerations.InitialClockDutyCyclePercent,
                    durationSeconds: InitialClockDurationSeconds),
                pulseIdleState: NI.MeasurementInstrumentation.Constants.ConstantsForDigitalClockGenerations.InitialCounterOutputPulseIdleState);
    }
}