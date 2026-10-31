using System;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.StaticDigitalStateGenerations.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.StaticDigitalStateGenerations.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Generations.StaticDigitalStateGenerations
{
    /// <summary>
    /// Provides a way that allows you to perform static digital state generation and apply it into PCB points,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.StaticDigitalStateGenerations.Interfaces.IStaticDigitalStateGeneration"/>.
    /// </summary>
    public class StaticDigitalStateGeneration : AbstractStaticDigitalStateGeneration, IStaticDigitalStateGeneration
    {
        private StaticDigitalStateGeneration(string channelExpression)
            : base(channelExpression, new MutableMeasurementOptions
            {
                WriteMeasurementAnalysisResultIsRequired = true,
                WriteMeasurementDataIsRequired = true
            })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="StaticDigitalStateGeneration"/>.
        /// </summary>
        /// <param name="channelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="channelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="GenerationInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static StaticDigitalStateGeneration CreateInstance(string channelExpression)
        {
            return new StaticDigitalStateGeneration(channelExpression);
        }


        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.StaticDigitalStateGenerations.Interfaces.IStaticDigitalStateGeneration.ConfigureAndGenerate"/>
        public new StaticDigitalStateGenerationData ConfigureAndGenerate(StaticDigitalStateGenerationConfigurationParameters parameters)
        {
            return base.ConfigureAndGenerate(parameters: parameters);
        }
    }
}
