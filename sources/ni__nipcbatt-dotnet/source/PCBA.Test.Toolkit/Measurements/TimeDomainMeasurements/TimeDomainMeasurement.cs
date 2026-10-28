using System;
using NI.MeasurementAnalysisCore.Common;
using NI.MeasurementAnalysisCore.WaveformAnalysis.InputParameters;
using NI.MeasurementAnalysisCore.WaveformAnalysis.Interfaces;
using NI.MeasurementAnalysisCore.WaveformAnalysis.OutputResults;
using NI.MeasurementAnalysisLibrary;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TimeDomainMeasurements.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TimeDomainMeasurements.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Measurements.TimeDomainMeasurements
{
    /// <summary>
    /// Provides a way that allows you to perform time domain measurements on PCB points,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TimeDomainMeasurements.Interfaces.ITimeDomainMeasurement"/>.
    /// </summary>
    public class TimeDomainMeasurement : AbstractTimeDomainMeasurement, ITimeDomainMeasurement
    {
        private const int AmplitudeLevelsEstimationDefaultHistogramSize = 256;

        private TimeDomainMeasurement(string analogInputChannelExpression)
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
        /// Creates an instance of <see cref="TimeDomainMeasurement"/>.
        /// </summary>
        /// <param name="analogInputChannelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="analogInputChannelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static TimeDomainMeasurement CreateInstance(string analogInputChannelExpression)
        {
            return new TimeDomainMeasurement(analogInputChannelExpression);
        }

        ///<inheritdoc cref="ITimeDomainMeasurement.ConfigureAndMeasure"/>
        public new TimeDomainMeasurementResultData ConfigureAndMeasure(TimeDomainMeasurementConfigurationParameters parameters)
        {
            return base.ConfigureAndMeasure(parameters: parameters);
        }

        ///<inheritdoc />
        /// <remarks>
        /// You can choose the way to create an instance of IAmplitudeAndLevelsMeasurement.
        /// The factory methods that can be used are:
        /// <para/><see cref="WaveformAnalysisFactory.CreateAmplitudeAndLevelsMeasurementAnalyzerAutoMethod"/>
        /// <para/><see cref="WaveformAnalysisFactory.CreateAmplitudeAndLevelsMeasurementAnalyzerPeakMethod"/>
        /// <para/><see cref="WaveformAnalysisFactory.CreateAmplitudeAndLevelsMeasurementAnalyzerHistogramMethod"/>
        /// </remarks>
        protected override AmplitudeAndLevelsMeasurementResult
            ProcessSingleWaveformAmplitudeAndLevelsMeasurement(double[] samplesArray, double samplingRate)
        {
            // This is an example on how to modify analysis behavior in the code.
            // you can choose the way to create an instance of IAmplitudeAndLevelsMeasurement.

            var amplitudeAndLevelsAnalyzer
                = WaveformAnalysisFactory
                    .CreateAmplitudeAndLevelsMeasurementAnalyzerAutoMethod(histogramSize: AmplitudeLevelsEstimationDefaultHistogramSize);

            var amplitudeAndLevelsMeasurementInput = new AmplitudeAndLevelsMeasurementInput(
                samples: samplesArray,
                samplingRate: samplingRate);

            return amplitudeAndLevelsAnalyzer
                .ProcessSingleWaveformAmplitudeAndLevelsMeasurement(
                    amplitudeAndLevelsMeasurementInput: amplitudeAndLevelsMeasurementInput);
        }

        ///<inheritdoc/>
        protected override PulseAnalogMeasurementResult ProcessSingleWaveformPulseMeasurement(double[] samplesArray, double samplingRate)
        {
            var pulseMeasurementAnalyzer = WaveformAnalysisFactory
                .CreatePulseMeasurementAnalyzer();

            var pulseMeasurementInput = PulseAnalogMeasurementInput.CreatePulseMeasurementInputRelativeReferenceLevelsAuto(
                inputSamples: samplesArray,
                inputSamplingRate: SamplingRateHertz.Value,
                pulseProcessingPolarity: EPulsePolarity.High,
                pulseReferenceLevelsInput: new PulseReferenceLevelsInput(
                    highLevel: 90 /*Percent*/,
                    middleLevel: 50 /*Percent*/,
                    lowLevel: 10 /*Percent*/),
                pulseNumber: 1 /*First pulse should be analyzed*/);

            return pulseMeasurementAnalyzer.ProcessSingleWaveformPulseMeasurement(pulseMeasurementInput);
        }

        ///<inheritdoc/>
        protected override DcRmsMeasurementResult ProcessSingleWaveformDcRmsMeasurement(double[] samplesArray, double samplingRate)
        {
            //We use DC/RMS analyzer object according to IDcRmsMeasurement interface.
            IDcRmsMeasurement dcRmsAnalyzer = WaveformAnalysisFactory.CreateDcRmsMeasurementAnalyzer();

            // This is an example on how to modify analysis behavior in the code.
            // Here you can change the way to compute DC-RMS values by modifying the processing window (EDcRmsProcessingWindow value).
            // possible values
            // EDcRmsProcessingWindow.Hanning
            // EDcRmsProcessingWindow.Rectangular
            // EDcRmsProcessingWindow.LowSideLobe

            DcRmsMeasurementInput dcRmsMeasurementInput = new DcRmsMeasurementInput(
                samples: samplesArray,
                samplingRate: samplingRate,
                dcRmsProcessingWindow: DcRmsMeasurementInput.EDcRmsProcessingWindow.Hanning);

            return dcRmsAnalyzer
                .ProcessSingleWaveformDcRmsMeasurement(dcRmsMeasurementInput);
        }
    }
}