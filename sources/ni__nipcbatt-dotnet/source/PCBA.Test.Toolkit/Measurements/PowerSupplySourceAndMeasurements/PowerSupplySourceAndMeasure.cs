using System;
using NI.MeasurementAnalysisCore.ArrayOperations.InputParameters;
using NI.MeasurementAnalysisCore.ArrayOperations.OutputResults;
using NI.MeasurementAnalysisCore.WaveformAnalysis.InputParameters;
using NI.MeasurementAnalysisCore.WaveformAnalysis.Interfaces;
using NI.MeasurementAnalysisCore.WaveformAnalysis.OutputResults;
using NI.MeasurementAnalysisLibrary;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.PowerSupplySourceAndMeasurements.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.PowerSupplySourceAndMeasurements.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Measurements.PowerSupplySourceAndMeasurements
{
    /// <summary>
    /// Provides a way that allows you to perform power supply using a source and measure its voltage and current,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.PowerSupplySourceAndMeasurements.Interfaces.IPowerSupplySourceAndMeasure"/>.
    /// </summary>
    public class PowerSupplySourceAndMeasure : AbstractPowerSupplySourceAndMeasure, IPowerSupplySourceAndMeasure
    {
        private PowerSupplySourceAndMeasure(string powerChannelName)
            : base(
                powerChannelName: powerChannelName,
                externalOptions: new MutableMeasurementOptions
                {
                    WriteMeasurementAnalysisResultIsRequired = true,
                    WriteMeasurementDataIsRequired = true
                })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="PowerSupplySourceAndMeasure"/>.
        /// </summary>
        /// <param name="powerChannelName">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="powerChannelName"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static PowerSupplySourceAndMeasure CreateInstance(string powerChannelName)
        {
            return new PowerSupplySourceAndMeasure(powerChannelName);
        }


       ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.PowerSupplySourceAndMeasurements.Interfaces.IPowerSupplySourceAndMeasure.ConfigureAndMeasure"/>
        public new PowerSupplySourceAndMeasureResultData
            ConfigureAndMeasure(PowerSupplySourceAndMeasureConfigurationParameters parameters)
        {
            return base.ConfigureAndMeasure(parameters: parameters);
        }

        ///<inheritdoc />
        protected override ArrayMinMaxResult ProcessSingleWaveformMinMaxMeasurement(double[] samplesArray)
        {
            // This is an example on how to modify analysis behavior in the code.
            var arrayOperationsComponent = ArrayOperationsFactory.CreateArrayOperationsComponent();

            // Return min/max evaluation results
            return arrayOperationsComponent
                .ComputeMinMax(arrayOperationInput: new ArrayOperationInput(samplesArray));
        }

        ///<inheritdoc />
        protected override DcRmsMeasurementResult
            ProcessSingleWaveformDcRmsMeasurement(double[] samplesArray, double samplingRate)
        {
            //We use DC/RMS analyzer object according to IDcRmsMeasurement interface.
            IDcRmsMeasurement dcRmsAnalyzer = WaveformAnalysisFactory
                .CreateDcRmsMeasurementAnalyzer();

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