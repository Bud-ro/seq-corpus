using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalEdgeCountMeasurements.Structs;

namespace PCBATestToolkitApi.Measurements.DigitalEdgeCountMeasurements.Constants
{
    /// <summary>
    /// Define some constant structures used by digital edge count measurements when using hardware timing mechanism.
    /// </summary>
    public static class ConstantsForDigitalEdgeCountMeasurementUsingHardwareTimer
    {
        private const int DefaultCountingDurationSeconds = 10;

        /// <summary>
        /// Default structure for parameters of digital edge count measurement.
        /// </summary>
        public static DigitalEdgeCountHardwareTimerConfigurationParameters DefaultDigitalEdgeCountHardwareTimerParameters =>
            new DigitalEdgeCountHardwareTimerConfigurationParameters(
                measurementExecutionType:EMeasurementExecutionType.ConfigureAndMeasure, 
                counterSettings:new DigitalEdgeCounterSettings(
                    edgeType:ECounterInputEdgesCountActiveEdge.Rising,
                    countingDurationSeconds:DefaultCountingDurationSeconds),
                timerTriggerSettings: new MeasurementTriggerSettings(
                    triggerType: EMeasurementTriggerType.NoTrigger,
                    digitalStartTriggerSource: NI.MeasurementInstrumentation.Constants.ConstantsForDigitalEdgeCountMeasurements.InitialTriggerSource,
                    digitalEdgeStartTriggerEdge: NI.MeasurementInstrumentation.Constants.ConstantsForDigitalEdgeCountMeasurements.InitialDigitalEdgeStartTriggerEdge));
    }
}