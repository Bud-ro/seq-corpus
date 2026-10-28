using System.Collections.Generic;
using System;
using System.Linq;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.MeasurementAnalysisCore.ArrayOperations.InputParameters;
using NI.MeasurementAnalysisCore.ArrayOperations.OutputResults;
using NI.MeasurementAnalysisLibrary;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TemperatureMeasurements.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TemperatureMeasurements.Interfaces;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Measurements.TemperatureMeasurements
{
    /// <summary>
    /// Provides a way that allows you to perform temperature measurements,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TemperatureMeasurements.Interfaces.ITemperatureMeasurementUsingThermocouple"/>.
    /// </summary>
    public class TemperatureMeasurementUsingThermocouple : AbstractTemperatureMeasurementUsingThermocouple, ITemperatureMeasurementUsingThermocouple
    {
        private TemperatureMeasurementUsingThermocouple(string channelExpression)
            : base(channelExpression,
                new MutableMeasurementOptions
                {
                    WriteMeasurementAnalysisResultIsRequired = true,
                    WriteMeasurementDataIsRequired = true
                })
        {
        }

        private TemperatureMeasurementUsingThermocouple(string channelExpression,
            double coldJunctionCompensationValueDegrees)
            : base(channelExpression,
                coldJunctionCompensationValueDegrees,
                new MutableMeasurementOptions
                {
                    WriteMeasurementAnalysisResultIsRequired = true,
                    WriteMeasurementDataIsRequired = true
                })
        {
        }

        private TemperatureMeasurementUsingThermocouple(string channelExpression,
            string coldJunctionCompensationChannelName)
            : base(channelExpression,
                coldJunctionCompensationChannelName,
                new MutableMeasurementOptions
                {
                    WriteMeasurementAnalysisResultIsRequired = true,
                    WriteMeasurementDataIsRequired = true
                })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="TemperatureMeasurementUsingThermocouple"/>.
        /// </summary>
        /// <param name="channelExpression">Expression representing the name of a physical channel, or a global channel in DAQ System.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="channelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static TemperatureMeasurementUsingThermocouple CreateInstance(string channelExpression)
        {
            return new TemperatureMeasurementUsingThermocouple(channelExpression: channelExpression);
        }

        /// <summary>
        /// Creates an instance of <see cref="TemperatureMeasurementUsingThermocouple"/>.
        /// </summary>
        /// <param name="channelExpression">Expression representing the name of a physical channel, or a global channel in DAQ System.</param>
        /// <param name="coldJunctionCompensationValueDegrees">The temperature in Degrees Celsius
        /// of the <a href="https://www.ni.com/docs/en-US/bundle/ni-daqmx/page/measfunds/sigcontherm.html/#GUID-879C5BA2-42AD-46DA-82CF-613ACA183C28__GUID-A0C6F248-C158-4BBE-BBAE-BF0216BE261B">cold-junction</a>.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="channelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static TemperatureMeasurementUsingThermocouple CreateInstance(string channelExpression,
            double coldJunctionCompensationValueDegrees)
        {
            return new TemperatureMeasurementUsingThermocouple(channelExpression: channelExpression,
                coldJunctionCompensationValueDegrees: coldJunctionCompensationValueDegrees);
        }

        /// <summary>
        /// Creates an instance of <see cref="TemperatureMeasurementUsingThermocouple"/>.
        /// </summary>
        /// <param name="channelExpression">Expression representing the name of a physical channel, or a global channel in DAQ System.</param>
        /// <param name="coldJunctionCompensationChannelName">
        /// The channel that acquires the temperature of the thermocouple
        /// <a href="https://www.ni.com/docs/en-US/bundle/ni-daqmx/page/measfunds/sigcontherm.html/#GUID-879C5BA2-42AD-46DA-82CF-613ACA183C28__GUID-A0C6F248-C158-4BBE-BBAE-BF0216BE261B">cold-junction</a>.
        /// You can use a global channel or another virtual channel already in the task. If the channel is a temperature channel, NI-DAQmx acquires the temperature in the correct units.
        /// Other channel types, such as a resistance channel with a custom sensor, must use a custom scale to scale values to degrees Celsius.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="channelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="ArgumentException">Thrown if <paramref name="coldJunctionCompensationChannelName"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static TemperatureMeasurementUsingThermocouple CreateInstance(string channelExpression,
            string coldJunctionCompensationChannelName)
        {
            return new TemperatureMeasurementUsingThermocouple(channelExpression: channelExpression,
                coldJunctionCompensationChannelName: coldJunctionCompensationChannelName);
        }


      
                
        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TemperatureMeasurements.Interfaces.ITemperatureMeasurementUsingThermocouple.ConfigureAndMeasure"/>
        public new TemperatureMeasurementResultData ConfigureAndMeasure(TemperatureThermocoupleMeasurementConfigurationParameters parameters)
        {
            return base.ConfigureAndMeasure(parameters: parameters);
        }

        ///<inheritdoc />
        protected override IReadOnlyList<ArrayMeanResult> ProcessMultipleWaveformsAverageTemperatureMeasurements(IReadOnlyList<double[]> waveformsSamples,
            double waveformsSamplingRate)
        {
            var arrayOperationsInstance
                = ArrayOperationsFactory
                    .CreateArrayOperationsComponent();

            return waveformsSamples
                .Select(samples =>
                    arrayOperationsInstance.ComputeMean(
                        arrayOperationInput: new ArrayOperationInput(inputArray: samples)))
                .ToList();
        }
    }
}