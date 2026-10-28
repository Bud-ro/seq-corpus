using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;

namespace PCBATestToolkitApi.Generations.DcVoltageGenerations.Constants
{
    /// <summary>
    /// Define some constant structures used by DC Voltage generations.
    /// </summary>
    public static class ConstantsForDcVoltageGenerations
    {
        /// <summary>
        /// Default structure for parameters of DC-RMS Voltage measurement terminal range settings.
        /// </summary>
        public static VoltageGenerationRangeSettings DefaultVoltageGenerationRangeSettings
            => new VoltageGenerationRangeSettings(
                minimumValueVolts: NI.MeasurementInstrumentation.Constants.ConstantsForDcVoltageGenerations
                    .DefaultMinimumValueVolts,
                maximumValueVolts: NI.MeasurementInstrumentation.Constants.ConstantsForDcVoltageGenerations
                    .DefaultMaximumValueVolts);
    }
}
