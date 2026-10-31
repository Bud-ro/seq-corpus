using System;
using System.Collections.Generic;
using System.Linq;
using NI.MeasurementAnalysisCore.Common;
using NI.MeasurementAnalysisCore.WaveformAnalysis.InputParameters;
using NI.MeasurementAnalysisCore.WaveformAnalysis.OutputResults;
using NI.MeasurementAnalysisLibrary;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.FrequencyDomainMeasurements.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.FrequencyDomainMeasurements.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Measurements.FrequencyDomainMeasurements
{
    /// <summary>
    /// Provides a way that allows you to perform frequency domain measurements on PCB points,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.FrequencyDomainMeasurements.Interfaces.IFrequencyDomainMeasurement"/>.
    /// </summary>
    public class FrequencyDomainMeasurement : AbstractFrequencyDomainMeasurement, IFrequencyDomainMeasurement
    {
        private FrequencyDomainMeasurement(string analogInputChannelExpression)
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
        /// Creates an instance of <see cref="FrequencyDomainMeasurement"/>.
        /// </summary>
        /// <param name="analogInputChannelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="analogInputChannelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static FrequencyDomainMeasurement CreateInstance(string analogInputChannelExpression)
        {
            return new FrequencyDomainMeasurement(analogInputChannelExpression);
        }

        ///<inheritdoc />
        protected override IReadOnlyList<SpectrumMeasurementResult>
            ProcessMultipleWaveformsSpectrumMeasurements(IReadOnlyList<double[]> waveformsSamples, double waveformsSamplingRate)
        {
            // This is an example on how to modify analysis behavior in the code.

            //Component that will perform multiple spectrums analysis
            var multipleTonesMeasurementAnalyzer =
                WaveformAnalysisFactory
                    .CreateSpectrumMeasurementAnalyzer();

            //Prepare input elements to give to analyzer
            var spectrumMeasurementInputs = waveformsSamples
                .Select(arraySamples => SpectrumMeasurementInput.CreateSpectrumMeasurementInputBasicWindow(
                    samples: arraySamples,
                    samplingRate: waveformsSamplingRate,
                    processingBasicSpectrumSmoothingWindow: SpectrumMeasurementInput.EBasicSpectrumSmoothingWindow.Hanning))
                .ToList();

            /*var spectrumMeasurementInputs = waveformsSamples
                .Select(arraySamples => SpectrumMeasurementInput.CreateSpectrumMeasurementInputKaiserWindow(
                    samples: arraySamples,
                    samplingRate: waveformsSamplingRate,
                    betaParameter: 1))
                .ToList();*/

            //Return analysis results
            return multipleTonesMeasurementAnalyzer.ProcessMultipleWaveformsSpectrumMeasurements(spectrumMeasurementInputs);
        }

        ///<inheritdoc />
        protected override IReadOnlyList<MultipleTonesMeasurementResult>
            ProcessMultipleWaveformsTonesMeasurements(IReadOnlyList<double[]> waveformsSamples, double waveformsSamplingRate)
        {
            //Component that will perform multiple tone analysis
            var multipleTonesMeasurementAnalyzer =
                WaveformAnalysisFactory
                    .CreateMultipleTonesMeasurementAnalyzer();

            //Prepare input elements to give to analyzer
            var multipleTonesMeasurementInputs = waveformsSamples
                .Select(arraySamples => new MultipleTonesMeasurementInput(
                    samples: arraySamples,
                    samplingRate: waveformsSamplingRate,
                    toneMinimumAmplitudeThreshold: 0.1,
                    toneFrequencyIsZeroThreshold: 0.001,
                    tonePhaseIsZeroThreshold: 0.001,
                    tonesMaxCount: 10,
                    tonesResultsSortingMode: ETonesSortingMode.IncreasingFrequencies))
                .ToList();


            //Return analysis results
            return multipleTonesMeasurementAnalyzer.ProcessMultipleWaveformsTonesMeasurements(multipleTonesMeasurementInputs);
        }

        ///<inheritdoc />
        public new FrequencyDomainMeasurementResultData ConfigureAndMeasure(FrequencyDomainMeasurementConfigurationParameters parameters)
        {
            return base.ConfigureAndMeasure(parameters: parameters);
        }
    }
}