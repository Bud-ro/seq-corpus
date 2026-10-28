using NI.MeasurementAnalysisCore.Common;
using NI.MeasurementAnalysisCore.WaveformAnalysis.InputParameters;
using NI.MeasurementAnalysisCore.WaveformAnalysis.Interfaces;
using NI.MeasurementAnalysisCore.WaveformAnalysis.OutputResults;
using NI.MeasurementAnalysisCore.WaveformCreation.InputParameters;
using NI.MeasurementAnalysisLibrary;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.DotNetApi.Common.Parameters;
using NI.PCBAMeasurements.Apis.DotNetApi.Measurements.TimeDomainMeasurements.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TimeDomainMeasurements.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using PCBATestToolkitApi.Measurements.TimeDomainMeasurements.Constants;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using NI.Core.Utilities.Common;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitAutomation.Creation_Example.Analog_Trigger
{
    /** Creation of a new example of library
     *
     * This class has been written as an example of a new toolkit library 
     * in order to show how it can be customize according the wanted behavior.
     *
     * This class will not inherit from ITimeDomainMeasurement as the class TimeDomainMeasurement
     * because the behavior will be changed and ITimeDomainMeasurement allow to respect a certain
     * paradigm for example toolkit.
     *
     * We continue to inherit from AbstractTimeDomainMeasurement (here because I want this measure)
     * to be able have access to DAQHandler and measure methods.
     */

    /// <summary>
    /// Inheritance of <see cref="AbstractTimeDomainMeasurement"/> allowing to override
    /// methods and creates the wanted behavior.
    /// </summary>
    internal class TimeDomainMeasurementWithAnalogTrigger : AbstractTimeDomainMeasurement
    {
        private EAnalogEdgeStartTriggerSlope _analogTriggerSlope;
        private double _analogTriggerLevel;
        private string _analogTriggerSource;

        private const int AmplitudeLevelsEstimationDefaultHistogramSize = 256;

        private VoltageMeasurementTerminalParameters
            _voltageMeasurementTerminalParameters;

        private MeasurementSampleClockTimingParameters
            _measurementSampleClockTimingParameters;

        #region Initialization

        /*
         * Constructor of this new toolkit library usage
         */
        private TimeDomainMeasurementWithAnalogTrigger(string analogInputChannelExpression)
            : base(
                analogInputChannelExpression: analogInputChannelExpression,
                externalOptions: new MutableMeasurementOptions
                {
                    WriteMeasurementAnalysisResultIsRequired = true,
                    WriteMeasurementDataIsRequired = true
                })
        {
        }

        /*
         * if you want to respect the concept of the toolkit (CreateInstance then ConfigureAndMeasure then Close)
         * It is better to implement this method, otherwise, if you don't care, you can instantiate directly in
         * constructor.
         */

        /// <summary>
        /// Creates an instance of <see cref="TimeDomainMeasurementWithAnalogTrigger"/>.
        /// </summary>
        /// <param name="analogInputChannelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="analogInputChannelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static TimeDomainMeasurementWithAnalogTrigger CreateInstance(string analogInputChannelExpression)
        {
            return new TimeDomainMeasurementWithAnalogTrigger(analogInputChannelExpression);
        }

        #endregion

        #region Parameters settings

        /*
         * These methods are created to be able to change the wanted parameters as we want.
         * It is not required and you can directly have the values that you want if you don't
         * expect to change them.
         */

        /// <summary>
        /// Sets the <see cref="VoltageMeasurementTerminalParameters"/>
        /// </summary>
        /// <param name="voltageMeasurementTerminalParameters">The <see cref="VoltageMeasurementTerminalParameters"/></param>
        public void SetVoltageMeasurementTerminalParameters(
            VoltageMeasurementTerminalParameters
                voltageMeasurementTerminalParameters)
        {
            _voltageMeasurementTerminalParameters =
                voltageMeasurementTerminalParameters;
        }

        /// <summary>
        /// Sets the <see cref="MeasurementSampleClockTimingParameters"/>
        /// </summary>
        /// <param name="measurementSampleClockTimingParameters">The <see cref="MeasurementSampleClockTimingParameters"/></param>
        public void SetMeasurementSampleClockTimingParameters(
            MeasurementSampleClockTimingParameters
                measurementSampleClockTimingParameters)
        {
            _measurementSampleClockTimingParameters =
                measurementSampleClockTimingParameters;
        }

        /// <summary>
        /// Sets the options for the analog trigger.
        /// </summary>
        /// <param name="analogTriggerChannel">The analog trigger channel.</param>
        /// <param name="analogEdgeStartTriggerSlope">The analog trigger slope.</param>
        /// <param name="analogTriggerLevel">The analog trigger level.</param>
        public void SetAnalogTriggerOptions(string analogTriggerChannel,
            EAnalogEdgeStartTriggerSlope analogEdgeStartTriggerSlope,
            double analogTriggerLevel)
        {
            _analogTriggerSlope = analogEdgeStartTriggerSlope;
            _analogTriggerLevel = analogTriggerLevel;
            _analogTriggerSource = analogTriggerChannel;
        }

        #endregion

        #region Configure And Measure

        /*
        * if you want to respect the concept of the toolkit (CreateInstance then ConfigureAndMeasure then Close)
        * It is better to implement this method, otherwise, if you don't care, you can create the methods that you
        * want and call them.
        */

        /// <summary>
        /// Configures and performs a measurement according to specific configuration parameters.
        /// </summary>
        /// <param name="skipAnalysis">True, the analysis will be skipped.</param>
        /// <returns>Returns the result data as <see cref="TimeDomainMeasurementResultData"/></returns>
        public TimeDomainMeasurementResultData ConfigureAndMeasure(bool skipAnalysis)
        {
            Configure();
            return Measure(skipAnalysis);
        }

        #region Configure

        /*
         * This method is public and it will be possible to call it without force measurements as "Configure Ony".
         */

        /// <summary>
        /// Configures according to the parameters
        /// </summary>
        public void Configure()
        {
            try
            {
                ConfigureAllChannelsConfiguration();
                ConfigureTimings();
                ConfigureAnalogTriggers();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurs during configuration", ex);
            }
        }

        private void ConfigureAllChannelsConfiguration()
        {
            // This method will call the daqHandler to configure correctly the channel
            // and have some checking to verify the consistencies but
            // you are also able to create directly with DaqHandler.UpdateAllChannels();

            UpdateAllChannelsConfiguration(_voltageMeasurementTerminalParameters);
        }

        private void ConfigureTimings()
        {
            // This method will call the daqHandler to configure correctly the channel
            // and have some checking to verify the consistencies and the no-nullable but
            // you are also able to create directly with DaqHandler.Timing 
            // (several method are available)

            ConfigureTiming(_measurementSampleClockTimingParameters);
        }

        private void ConfigureAnalogTriggers()
        {
            // This method uses directly the DaqHandler in order to configure analog triggers.
            // You are able to modify directly by using DaqHandler.Triggers

            // Be care to stop the DaqHandler if it is running to avoid any issue when you
            // want to change configuration.
            if (DaqHandler.IsRunning)
            {
                DaqHandler.Stop();
            }

            DaqHandler
                .Triggers
                .StartTrigger
                .ConfigureAnalogEdgeTrigger(
                    source: _analogTriggerSource,
                    slope: _analogTriggerSlope,
                    level: _analogTriggerLevel);

            DaqHandler.VerifyIntegrity();

            // Restart the DaqHandler.
            DaqHandler.Start();
        }

        #endregion

        #region Measure

        /*
         * This method is public and it will be possible to call it without force measurements as "Measure Only".
         *
         * The returned value will be stock as TimeDomainMeasurementResultData but you are able to make what
         * you want with the process that you desired.
         * Example: you can just make the measurement by checking what the measurement method will returned
         * (here : IReadOnlyDictionary<string, IReadOnlyCollection<double>>) and make the treatment that you
         * want.
         * You can see another example in the commented method SimpleMeasure().
        */

        /// <summary>
        /// Perform a measurement according to specific configuration parameters.
        /// </summary>
        /// <param name="skipAnalysis">True, the analysis will be skipped.</param>
        /// <returns>Here, it will returns </returns>
        public TimeDomainMeasurementResultData Measure(bool skipAnalysis)
        {
            // Here, we decided to keep the same data as the created toolkit
            // in PCBA.Test.Toolkit.
            try
            {
                IReadOnlyDictionary<string, IReadOnlyCollection<double>>
                    measurements;
                if (DaqHandler.IsDaqDeviceSimulated)
                {
                    // behavior for test, in case it is simulated.
                    measurements = AcquireSimulationDataForMeasurementAnalysis(
                        ConstantsForTimeDomainMeasurements
                            .DefaultTimeDomainMeasurementParameters);
                }
                else
                {
                    // behavior when real hardware
                    // This method will do the same call as the method commented method
                    // "SimpleMeasure() but with ore checking.
                    measurements = AcquireDataForMeasurementAnalysis();
                }

                if (skipAnalysis)
                {
                    // This method will allow to have the result as
                    // TimeDomainMeasurementResultData
                    return ComputeMeasurementResultDataWithoutAnalysis(
                        measurementData: measurements);
                }

                // This method will allow to have the result as
                // TimeDomainMeasurementResultData after an analysis.
                return ComputeMeasurementResultDataWithAnalysis(
                    measurementData: measurements);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurs during measurements", ex);
            }
        }

        //public void SimpleMeasure()
        //{
        //    if (!DaqHandler.IsRunning)
        //    {
        //        DaqHandler.VerifyIntegrity();
        //        DaqHandler.Start();
        //    }
        //    var result = DaqHandler.AnalogMultiChannelReader.ReadMultipleChannelsWaveforms(
        //        numberOfSamplesPerChannel: 1000);
        //    DaqHandler.Stop();
        //    /*
        //     * It is now possible to do all the desired treatment on the result
        //     */
        //}


        // This method allow here to create results by simulation
        private IReadOnlyDictionary<string, IReadOnlyCollection<double>> AcquireSimulationDataForMeasurementAnalysis(
            TimeDomainMeasurementConfigurationParameters timeDomainMeasurementConfigurationParameters)
        {
            var channels =
                DaqHandler
                    .GetChannelsNames()
                    .ToList();


            var simulationDataSamplingRate = timeDomainMeasurementConfigurationParameters
                .TimingSettings
                .SamplingRateHertz;


            var simulationDataSamplesCount = timeDomainMeasurementConfigurationParameters
                .TimingSettings
                .NumberOfSamplesPerChannel;

            var squareWaveGenerator = WaveformCreationFactory.CreateSquareWaveGenerator();
            var squareWaveform = squareWaveGenerator.CreateSquareWaveform(
                squareWaveformCreationInput: new SquareWaveformCreationInput(
                    samplesCount: simulationDataSamplesCount,
                    samplingRate: simulationDataSamplingRate,
                    frequency: 60,
                    amplitude: 1,
                    offset: 0,
                    phase: 0,
                    dutyCycle: 0.5,
                    pulsePolarity: EPulsePolarity.High));

            var simulatedSamplesPerChannels =
                channels
                    .ToDictionary(
                        keySelector: channelName => channelName,
                        elementSelector: channelName => (IReadOnlyCollection<double>)squareWaveform
                            .GeneratedWaveformSamples
                            .ToList()
                            .AsReadOnly());

            return new ReadOnlyDictionary<string, IReadOnlyCollection<double>>(
                new Dictionary<string, IReadOnlyCollection<double>>(simulatedSamplesPerChannels));
        }

        // This method allows to compute the result as TimeDomainMeasurementResultData because
        // we decided to do like this. It is not required if you want another format. No analysis
        private TimeDomainMeasurementResultData ComputeMeasurementResultDataWithoutAnalysis(
                IReadOnlyDictionary<string, IReadOnlyCollection<double>> measurementData)
        {
            var startTime = DateTime.Now;
            var waveforms = measurementData
                .Select(
                    keyValuePair
                        => new AnalogWaveform(
                            samples: keyValuePair.Value.ToArrayCopyFreeWhenItIsPossible(),
                            startTime: startTime,
                            deltaTimeSeconds: SamplingRateHertz.Value.ToDouble().Invert(),
                            channelName: keyValuePair.Key,
                            unit: EAnalogInputVoltageUnit.Volt.ToString()))
                .ToArray();

            var dcVoltagesVoltsEmpty = Array.Empty<double>();
            var voltageAmplitudesEmpty = Array.Empty<double>();
            var voltageFrequenciesEmpty = Array.Empty<double>();
            var voltageWaveformPeriodsEmpty = Array.Empty<double>();
            var voltageWaveformDutyCyclesEmpty = Array.Empty<double>();
            var acquisitionDurationSecondsZero = 0.0;

            return new TimeDomainMeasurementResultData(
                waveforms: waveforms,
                acquisitionDurationSeconds: acquisitionDurationSecondsZero,
                dcVoltagesVolts: dcVoltagesVoltsEmpty,
                peakToPeakVoltagesVolts: voltageAmplitudesEmpty,
                voltageWaveformsFrequenciesHertz: voltageFrequenciesEmpty,
                voltageWaveformsPeriodsSeconds: voltageWaveformPeriodsEmpty,
                voltageWaveformsDutyCyclesPercent: voltageWaveformDutyCyclesEmpty);
        }

        // This method will compute the result after an analysis.
        private TimeDomainMeasurementResultData ComputeMeasurementResultDataWithAnalysis(
                IReadOnlyDictionary<string, IReadOnlyCollection<double>>
                    measurementData)
        {
            /*
             * For analysis, here we decided to follow what it has been done in PCBA.Test.Toolkit
             * but the analysis has been personalized with the methods present here in the region
             * "Desired analysis".
             */
            var analysisResults = AnalyzeMeasurementData(measurementData);
            return ComputeMeasurementResultData(measurementData, analysisResults);
        }

        // This method allows to compute the result as TimeDomainMeasurementResultData because
        // we decided to do like this. It is not required if you want another format. No analysis
        // in this method.
        private TimeDomainMeasurementResultData ComputeMeasurementResultData(
            IReadOnlyDictionary<string, IReadOnlyCollection<double>> measurementData,
            IReadOnlyDictionary<string, ITimeDomainAnalysisResultData> analysisResults)
        {
            var startTime = DateTime.Now;
            var waveformsFromMeasurementData = measurementData
                .Select(
                    keyValuePair
                        => new AnalogWaveform(
                            samples: keyValuePair.Value.ToArrayCopyFreeWhenItIsPossible(),
                            startTime: startTime,
                            deltaTimeSeconds: SamplingRateHertz.Value.ToDouble().Invert(),
                            channelName: keyValuePair.Key,
                            unit: EAnalogInputVoltageUnit.Volt.ToString()))
                .ToArray();

            var numberOfChannel = measurementData.Any() ? measurementData.Keys.Count() : 1;
            var acquisitionDurationSeconds = numberOfChannel * (NumberOfSamplesPerChannel.Value / (double)SamplingRateHertz.Value);

            var dcVoltagesVolts = analysisResults
                .Values
                .Select(result => result.DcVoltageVolts)
                .ToArray();

            var peakToPeakVoltagesVolts = analysisResults
                .Values
                .Select(result => result.PeakToPeakVoltageVolts)
                .ToArray();

            var voltageWaveformsFrequenciesHertz = analysisResults
                .Values
                .Select(result => result.VoltageWaveformFrequencyHertz)
                .ToArray();

            var voltageWaveformsPeriodsSeconds = analysisResults
                .Values
                .Select(result => result.VoltageWaveformPeriodSeconds)
                .ToArray();

            var voltageWaveformsDutyCyclesPercent = analysisResults
                .Values
                .Select(result => result.VoltageWaveformDutyCyclePercent)
                .ToArray();

            return new TimeDomainMeasurementResultData(
                waveforms: waveformsFromMeasurementData,
                acquisitionDurationSeconds: acquisitionDurationSeconds,
                dcVoltagesVolts: dcVoltagesVolts,
                peakToPeakVoltagesVolts: peakToPeakVoltagesVolts,
                voltageWaveformsFrequenciesHertz: voltageWaveformsFrequenciesHertz,
                voltageWaveformsPeriodsSeconds: voltageWaveformsPeriodsSeconds,
                voltageWaveformsDutyCyclesPercent: voltageWaveformsDutyCyclesPercent);
        }

        #endregion

        #endregion

        #region Desired analysis

        ///<inheritdoc />
        /// <remarks>
        /// You can choose the way to create an instance of IAmplitudeAndLevelsMeasurement.
        /// The factory methods that can be used are:
        /// <para/><see cref="WaveformAnalysisFactory.CreateAmplitudeAndLevelsMeasurementAnalyzerAutoMethod"/>
        /// <para/><see cref="WaveformAnalysisFactory.CreateAmplitudeAndLevelsMeasurementAnalyzerPeakMethod"/>
        /// <para/><see cref="WaveformAnalysisFactory.CreateAmplitudeAndLevelsMeasurementAnalyzerHistogramMethod"/>
        /// </remarks>
        protected override AmplitudeAndLevelsMeasurementResult ProcessSingleWaveformAmplitudeAndLevelsMeasurement(double[] samplesArray, double samplingRate)
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

        #endregion
    }
}
