using System;
using System.Collections.Generic;
using System.Linq;
using NI.Core.Utilities.Common;
using NI.MeasurementAnalysisCore.WaveformAnalysis.InputParameters;
using NI.MeasurementAnalysisCore.WaveformAnalysis.OutputResults;
using NI.MeasurementAnalysisLibrary;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DcRmsCurrentMeasurements.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DcRmsCurrentMeasurements.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Measurements.DcRmsCurrentMeasurements
{
    /// <summary>
    /// Defines a way that allows you to perform DC-RMS current measurements on PCB points,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DcRmsCurrentMeasurements.Interfaces.IDcRmsCurrentMeasurement"/>.
    /// </summary>
    public class DcRmsCurrentMeasurement : AbstractDcRmsCurrentMeasurement, IDcRmsCurrentMeasurement
    {
        private DcRmsCurrentMeasurement(string analogInputChannelExpression)
            : base(
                analogInputChannelExpression: analogInputChannelExpression,
                externalOptions: new MutableMeasurementOptions
                {
                    WriteMeasurementAnalysisResultIsRequired = true,
                    WriteMeasurementDataIsRequired = true
                })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="DcRmsCurrentMeasurement"/>.
        /// </summary>
        /// <param name="analogInputChannelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="analogInputChannelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static DcRmsCurrentMeasurement CreateInstance(string analogInputChannelExpression)
        {
            return new DcRmsCurrentMeasurement(analogInputChannelExpression);
        }


    
        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DcRmsCurrentMeasurements.Interfaces.IDcRmsCurrentMeasurement.ConfigureAndMeasure"/>
        public new DcRmsCurrentMeasurementResultData ConfigureAndMeasure(DcRmsCurrentMeasurementConfigurationParameters parameters)
        {
            return base.ConfigureAndMeasure(parameters: parameters);
        }


        ///<inheritdoc />
        protected override IReadOnlyList<DcRmsMeasurementResult> ProcessMultipleWaveformsDcRmsMeasurements(
            IReadOnlyList<double[]> waveformsSamples, double waveformsSamplingRate)
        {

            ContractsTools.AssureArgumentIsNotNull(waveformsSamples, nameof(waveformsSamples));
            ContractsTools.AssureArgumentCollectionIsNotEmpty(waveformsSamples, nameof(waveformsSamples));
            ContractsTools.AssureArgumentIsPositiveAndNotEqualsZero(waveformsSamplingRate, nameof(waveformsSamplingRate));


            //Component which is used to perform DC and RMS evaluation.
            var dcRmsAnalyzer = WaveformAnalysisFactory
                .CreateDcRmsMeasurementAnalyzer();

            // This is an example on how to modify analysis behavior in the code.
            // Here you can change the way to compute DC-RMS values by modifying the processing window (EDcRmsProcessingWindow value).
            // possible values
            // EDcRmsProcessingWindow.Hanning
            // EDcRmsProcessingWindow.Rectangular
            // EDcRmsProcessingWindow.LowSideLobe


            //Prepare input that will be provided to analyzer
            var inputs
                = waveformsSamples
                    .Select(waveformSamples
                        => new DcRmsMeasurementInput(
                            samples: waveformSamples,
                            samplingRate: waveformsSamplingRate,
                            dcRmsProcessingWindow: DcRmsMeasurementInput.EDcRmsProcessingWindow.Hanning))
                    .ToList();


            //Return analysis results
            return dcRmsAnalyzer
                .ProcessMultipleWaveformsDcRmsMeasurements(inputs);
        }
    }
}
