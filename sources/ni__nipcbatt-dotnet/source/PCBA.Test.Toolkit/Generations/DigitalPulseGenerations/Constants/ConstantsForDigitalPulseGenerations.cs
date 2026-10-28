using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DigitalPulseGenerations.Structs;

namespace PCBATestToolkitApi.Generations.DigitalPulseGenerations.Constants
{
    /// <summary>
    /// Define some constant structures used by digital pulse generations.
    /// </summary>
    public static class ConstantsForDigitalPulseGenerations
    {
        private const int InitialPulsesCount = 10;

        /// <summary>
        /// Default structure for parameters of digital pulse generation.
        /// </summary>
        public static DigitalPulseGenerationConfigurationParameters DefaultDigitalPulseGenerationConfigurationParameters =>
            new DigitalPulseGenerationConfigurationParameters(
                expectedPulseSettings: new DigitalPulseSettings(
                    lowTimeSeconds: NI.MeasurementInstrumentation.Constants.ConstantsForDigitalPulseGenerations.InitialPulseLowTimeSeconds,
                    highTimeSeconds: NI.MeasurementInstrumentation.Constants.ConstantsForDigitalPulseGenerations.InitialPulseHighTimeSeconds),
                pulseIdleState: NI.MeasurementInstrumentation.Constants.ConstantsForDigitalPulseGenerations.InitialCounterOutputPulseIdleState,
                expectedPulsesCount: InitialPulsesCount);
    }
}