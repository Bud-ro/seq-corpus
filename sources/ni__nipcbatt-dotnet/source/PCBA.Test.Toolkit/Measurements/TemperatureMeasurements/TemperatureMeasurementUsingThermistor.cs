using System;
using System.Collections.Generic;
using System.Linq;
using NI.MeasurementAnalysisCore.ArrayOperations.InputParameters;
using NI.MeasurementAnalysisCore.ArrayOperations.OutputResults;
using NI.MeasurementAnalysisLibrary;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TemperatureMeasurements.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TemperatureMeasurements.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Measurements.TemperatureMeasurements
{
    /// <summary>
    /// Provides a way that allows you to perform temperature measurements,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TemperatureMeasurements.Interfaces.ITemperatureMeasurementUsingThermistor"/>.
    /// </summary>
    public class TemperatureMeasurementUsingThermistor : AbstractTemperatureMeasurementUsingThermistor, ITemperatureMeasurementUsingThermistor
    {
        private TemperatureMeasurementUsingThermistor(string analogInputChannelExpression)
            : base(analogInputChannelExpression, new MutableMeasurementOptions
            {
                WriteMeasurementAnalysisResultIsRequired = true,
                WriteMeasurementDataIsRequired = true
            })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="TemperatureMeasurementUsingThermistor"/>.
        /// </summary>
        /// <param name="channelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="channelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static TemperatureMeasurementUsingThermistor CreateInstance(string channelExpression)
        {
            return new TemperatureMeasurementUsingThermistor(channelExpression);
        }


  
        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TemperatureMeasurements.Interfaces.ITemperatureMeasurementUsingThermistor.ConfigureAndMeasure(TemperatureThermistorMeasurementConfigurationParameters)"/>
        public new TemperatureMeasurementResultData ConfigureAndMeasure(TemperatureThermistorMeasurementConfigurationParameters parameters)
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