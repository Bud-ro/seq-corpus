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
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalEdgeCountMeasurements.Interfaces.IDigitalEdgeCountMeasurementUsingSoftwareTimer"/>.
    /// </summary>
    public class DigitalEdgeCountMeasurementUsingSoftwareTimer : AbstractDigitalEdgeCountMeasurementUsingSoftwareTimer ,IDigitalEdgeCountMeasurementUsingSoftwareTimer
    {
        private DigitalEdgeCountMeasurementUsingSoftwareTimer(string measurementChannelExpression,
            string measurementInputTerminalName)
            : base(measurementChannelExpression, measurementInputTerminalName, new MutableMeasurementOptions
            {
                WriteMeasurementAnalysisResultIsRequired = true,
                WriteMeasurementDataIsRequired = true
            })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="DigitalEdgeCountMeasurementUsingSoftwareTimer"/>.
        /// </summary>
        /// <param name="channelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <param name="inputTerminalName">The name of the terminal on which characteristics of the signal are measured.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="channelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="ArgumentException">Thrown if <paramref name="inputTerminalName"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static DigitalEdgeCountMeasurementUsingSoftwareTimer CreateInstance(string channelExpression,
            string inputTerminalName)
        {
            return new DigitalEdgeCountMeasurementUsingSoftwareTimer(channelExpression, inputTerminalName);
        }

        ///<inheritdoc/>
        public new DigitalEdgeCountMeasurementResultData ConfigureAndMeasure(DigitalEdgeCountSoftwareTimerConfigurationParameters parameters)
        {
            return base.ConfigureAndMeasure(parameters);
        }
    }
}