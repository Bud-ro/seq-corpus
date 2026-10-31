using System;
using System.Linq;
using NI.MeasurementAnalysisCore.WaveformCreation.InputParameters;
using NI.MeasurementAnalysisCore.WaveformTransformation.InputParameters;
using NI.MeasurementAnalysisLibrary;
using NI.MeasurementFoundation.ObjectModel.Data.SignalSpectrum;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.DotNetApi.Generations.SignalVoltageGenerations.Parameters;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.SignalVoltageGenerations.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.SignalVoltageGenerations.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Generations.SignalVoltageGenerations
{
    /// <summary>
    /// Provides a way that allows you to generate signal voltage and apply it into PCB points,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.SignalVoltageGenerations.Interfaces.ISignalVoltageGeneration"/>.
    /// </summary>
    public class SignalVoltageGeneration : AbstractSignalVoltageGeneration, ISignalVoltageGeneration
    {
        private SignalVoltageGeneration(string analogOutputChannelExpression)
            : base(
                analogOutputChannelExpression: analogOutputChannelExpression,
                externalOptions: new MutableMeasurementOptions
                {
                    WriteMeasurementAnalysisResultIsRequired = true,
                    WriteMeasurementDataIsRequired = true
                })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="SignalVoltageGeneration"/>.
        /// </summary>
        /// <param name="analogOutputChannelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="analogOutputChannelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="GenerationInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static SignalVoltageGeneration CreateInstance(string analogOutputChannelExpression)
        {
            return new SignalVoltageGeneration(analogOutputChannelExpression);
        }


        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.SignalVoltageGenerations.Interfaces.ISignalVoltageGeneration.ConfigureAndGenerate"/>
        public new void ConfigureAndGenerate(SignalVoltageGenerationConfigurationParameters parameters)
        {
            base.ConfigureAndGenerate(parameters: parameters);
        }

        /// <summary>
        /// Routes synchronization signals to the specified terminals.
        /// </summary>
        /// <param name="settings">An array of <see cref="SynchronizationSignalRoutingSettings"/>
        /// containing signals to be routed and the corresponding terminals.</param>
        public new void RouteSynchronizationSignalsToTerminals(SynchronizationSignalRoutingSettings[] settings)
        {
            base.RouteSynchronizationSignalsToTerminals(settings: settings);
        }

        ///<inheritdoc />
        protected override double[] CreateSineWaveform(SignalVoltageGenerationSineWaveParameters parameters , double samplingRateHertz)
        {
            // This is an example on how to modify generation behavior in the code.

            // Sine waveform creation component
            var sineWaveformCreator
                = WaveformCreationFactory
                    .CreateSineWaveGenerator();

            var sineWaveformCreationInput
                = new SineWaveformCreationInput(
                        samplesCount: (int)Math.Round(parameters.GeneratedSignalDurationSeconds * samplingRateHertz),
                        samplingRate: samplingRateHertz,
                        frequency: parameters.GeneratedSignalFrequencyHertz,
                        amplitude: parameters.GeneratedSignalAmplitudeVolts,
                        offset: parameters.GeneratedSignalOffsetVolts,
                        phase: 0);

            var sineWaveformCreationOutput
                = sineWaveformCreator
                    .CreateSineWaveform(sineWaveformCreationInput);

            return sineWaveformCreationOutput.GeneratedWaveformSamples;
        }

        ///<inheritdoc />
        protected override double[] CreateSquareWaveform(SignalVoltageGenerationSquareWaveParameters parameters, double samplingRateHertz)
        {
            // This is an example on how to modify generation behavior in the code.

            // Square waveform creation component
            var squareWaveGenerator
                = WaveformCreationFactory
                    .CreateSquareWaveGenerator();

            var squareWaveformCreationInput
                = new SquareWaveformCreationInput(
                        samplesCount: (int)Math.Round(parameters.GeneratedSignalDurationSeconds * samplingRateHertz),
                        samplingRate: samplingRateHertz,
                        frequency: parameters.GeneratedSignalFrequencyHertz,
                        amplitude: parameters.GeneratedSignalAmplitudeVolts,
                        offset: parameters.GeneratedSignalOffsetVolts,
                        phase: 0,
                        dutyCycle: parameters.GeneratedSignalDutyCyclePercent / 100,
                        pulsePolarity: DefaultPulsePolarity);

            var squareWaveformCreationResult
                = squareWaveGenerator
                    .CreateSquareWaveform(squareWaveformCreationInput);

            return squareWaveformCreationResult.GeneratedWaveformSamples;
        }

        ///<inheritdoc />
        protected override double[] CreateMultipleTonesWaveform(SignalVoltageGenerationMultipleTonesWaveParameters parameters, double samplingRateHertz)
        {
            // This is an example on how to modify generation behavior in the code.

            //Scale and offset component
            var scaleAndOffsetOperator
                = WaveformTransformationFactory
                    .CreateWaveformScaleAndOffsetComponent();

            //Multiple tone generation component
            var multipleTonesGenerator
                = WaveformCreationFactory
                    .CreateMultipleTonesGenerator();

            //Multiple tones characteristics
            var tonesCharacteristicsFromParameters = parameters
                .MultipleTonesParameters
                .Select(toneParameters => new ToneCharacteristics(
                    toneFrequency: toneParameters.ToneFrequencyHertz,
                    toneAmplitude: toneParameters.ToneAmplitudeVolts,
                    tonePhase: 0))
                .ToList();

            //Create input for multiple tones generator
            var multipleTonesWaveformCreationInput
                = new MultipleTonesWaveformCreationInput(
                        samplesCount: (int)Math.Round(parameters.GeneratedSignalDurationSeconds * samplingRateHertz),
                        samplingRate: samplingRateHertz,
                        multipleToneWaveformAmplitude: parameters.GeneratedSignalAmplitudeVolts,
                        tonesCharacteristics: tonesCharacteristicsFromParameters);

            //Get the multiple tones generated waveform
            var multipleTonesWaveformCreationResult = multipleTonesGenerator
                .CreateMultipleTonesWaveform(multipleTonesWaveformCreationInput);


            //Scale the multiple tones according to user parameters
            var scaleAndOffsetResult = scaleAndOffsetOperator.ScaleAndApplyOffsetInPlace(
                waveformScaleAndOffsetInput: new WaveformScaleAndOffsetInput(
                    waveformInputSamples: multipleTonesWaveformCreationResult.GeneratedWaveformSamples,
                    scaleFactor: 1,
                    offset: parameters.GeneratedSignalOffsetVolts));

            return scaleAndOffsetResult.WaveformOutputSamples;
        }
    }
}
