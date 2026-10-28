using System;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalFrequencyMeasurements.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalFrequencyMeasurements.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Measurements.DigitalFrequencyMeasurements
{
    /// <summary>
    /// Provides a way allows you to perform digital frequency measurements on PCB points,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalFrequencyMeasurements.Interfaces.IDigitalFrequencyMeasurement"/>.
    /// </summary>
    public class DigitalFrequencyMeasurement : AbstractDigitalFrequencyMeasurement, IDigitalFrequencyMeasurement
    {
        private DigitalFrequencyMeasurement(string channelExpression,
            string inputTerminalName)
            : base(channelExpression, inputTerminalName, new MutableMeasurementOptions
            {
                WriteMeasurementAnalysisResultIsRequired = true,
                WriteMeasurementDataIsRequired = true
            })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="DigitalFrequencyMeasurement"/>.
        /// </summary>
        /// <param name="channelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <param name="inputTerminalName">The name of the terminal on which characteristics of the signal are measured.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="channelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="ArgumentException">Thrown if <paramref name="inputTerminalName"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static DigitalFrequencyMeasurement CreateInstance(string channelExpression,
            string inputTerminalName)
        {
            return new DigitalFrequencyMeasurement(channelExpression, inputTerminalName);
        }


    
        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DigitalFrequencyMeasurements.Interfaces.IDigitalFrequencyMeasurement.ConfigureAndMeasure"/>
    
        public new DigitalFrequencyMeasurementResultData
            ConfigureAndMeasure(DigitalFrequencyMeasurementConfigurationParameters parameters)
        {
            // This is an example on how to modify analysis behavior in the code.
            return base.ConfigureAndMeasure(parameters);
        }
    }
}