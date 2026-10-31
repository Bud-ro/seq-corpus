using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalEdgeCountMeasurements.Structs;

namespace PCBATestToolkitApi.Measurements.DigitalEdgeCountMeasurements.Constants
{
    /// <summary>
    /// Define some constant structures used by digital edge count measurements when using software timing mechanism.
    /// </summary>
    public static class ConstantsForDigitalEdgeCountMeasurementUsingSoftwareTimer
    {
        private const int DefaultCountingDurationSeconds = 1;

        /// <summary>
        /// Default structure for parameters of digital edge count measurement.
        /// </summary>
        public static DigitalEdgeCountSoftwareTimerConfigurationParameters DefaultDigitalEdgeCountSoftwareTimerParameters =>
            new DigitalEdgeCountSoftwareTimerConfigurationParameters(
                measurementExecutionType: EMeasurementExecutionType.ConfigureAndMeasure,
                counterSettings: new DigitalEdgeCounterSettings(
                    edgeType: NI.MeasurementInstrumentation.Constants.ConstantsForDigitalEdgeCountMeasurements.InitialActiveEdge,
                    countingDurationSeconds: DefaultCountingDurationSeconds));
    }
}