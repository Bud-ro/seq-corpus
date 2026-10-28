using System;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalEdgeCountMeasurements.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalEdgeCountMeasurements.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Measurements.DigitalEdgeCountMeasurements
{
    /// <summary>
    /// Provides a way that allows you to perform digital edge count measurements on PCB points,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalEdgeCountMeasurements.Interfaces.IDigitalEdgeCountMeasurementUsingHardwareTimer"/>.
    /// </summary>
    public class DigitalEdgeCountMeasurementUsingHardwareTimer : AbstractDigitalEdgeCountMeasurementUsingHardwareTimer , IDigitalEdgeCountMeasurementUsingHardwareTimer
    {
        private DigitalEdgeCountMeasurementUsingHardwareTimer(
            string measurementChannelExpression,
            string measurementInputTerminalName,
            string timerChannelExpression)
            : base(measurementChannelExpression, measurementInputTerminalName , timerChannelExpression, new MutableMeasurementOptions
            {
                WriteMeasurementAnalysisResultIsRequired = true,
                WriteMeasurementDataIsRequired = true
            })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="DigitalEdgeCountMeasurementUsingHardwareTimer"/>.
        /// </summary>
        /// <param name="measurementChannelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System, used for measurement.</param>
        /// <param name="measurementInputTerminalName">The name of the terminal on which characteristics of the signal are measured.</param>
        /// <param name="timerChannelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System, used for triggering measurement.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="measurementChannelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="ArgumentException">Thrown if <paramref name="measurementInputTerminalName"/> is null or empty or a whitespace.</exception>
        /// <exception cref="ArgumentException">Thrown if <paramref name="timerChannelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static DigitalEdgeCountMeasurementUsingHardwareTimer CreateInstance(
            string measurementChannelExpression,
            string measurementInputTerminalName,
            string timerChannelExpression)
        {
            return new DigitalEdgeCountMeasurementUsingHardwareTimer(measurementChannelExpression, measurementInputTerminalName, timerChannelExpression);
        }

        ///<inheritdoc/>
        public new DigitalEdgeCountMeasurementResultData ConfigureAndMeasure(DigitalEdgeCountHardwareTimerConfigurationParameters parameters)
        {
            return base.ConfigureAndMeasure(parameters);
        }
    }
}