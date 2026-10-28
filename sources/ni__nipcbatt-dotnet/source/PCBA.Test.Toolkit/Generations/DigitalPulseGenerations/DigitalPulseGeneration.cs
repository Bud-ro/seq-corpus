using System;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DigitalPulseGenerations.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DigitalPulseGenerations.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;
using PCBATestToolkitApi.Generations.DigitalClockGenerations;

namespace PCBATestToolkitApi.Generations.DigitalPulseGenerations
{
    /// <summary>
    /// Provides a way that allows you to generate digital pulse signal and apply it into PCB points,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DigitalPulseGenerations.Interfaces.IDigitalPulseGeneration"/>.
    /// </summary>
    public class DigitalPulseGeneration : AbstractDigitalPulseGeneration, IDigitalPulseGeneration
    {

        private DigitalPulseGeneration(string channelExpression, string outputTerminalName)
            : base(channelExpression, outputTerminalName, new MutableMeasurementOptions
            {
                WriteMeasurementAnalysisResultIsRequired = true,
                WriteMeasurementDataIsRequired = true
            })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="DigitalClockGeneration"/>.
        /// </summary>
        /// <param name="channelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <param name="outputTerminalName">The name of the terminal on which digital clock signal is generated.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="channelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="GenerationInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static DigitalPulseGeneration CreateInstance(string channelExpression, string outputTerminalName)
        {
            return new DigitalPulseGeneration(channelExpression, outputTerminalName);
        }


        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DigitalPulseGenerations.Interfaces.IDigitalPulseGeneration.ConfigureAndGenerate"/>
        public new DigitalPulseGenerationData ConfigureAndGenerate(DigitalPulseGenerationConfigurationParameters parameters)
        {
            return base.ConfigureAndGenerate(parameters);
        }
    }
}