using System;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DcVoltageGenerations.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DcVoltageGenerations.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Generations.DcVoltageGenerations
{
    /// <summary>
    /// Provides a way that allows you to generate DC voltage to apply into PCB points,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DcVoltageGenerations.Interfaces.IDcVoltageGeneration"/>.
    /// </summary>
    public class DcVoltageGeneration : AbstractDcVoltageGeneration, IDcVoltageGeneration
    {
        private DcVoltageGeneration(string analogOutputChannelExpression)
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
        /// Creates an instance of <see cref="DcVoltageGeneration"/>.
        /// </summary>
        /// <param name="analogOutputChannelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="analogOutputChannelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="GenerationInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static DcVoltageGeneration CreateInstance(string analogOutputChannelExpression)
        {
            return new DcVoltageGeneration(analogOutputChannelExpression);
        }



        
        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DcVoltageGenerations.Interfaces.IDcVoltageGeneration.ConfigureAndGenerate(DcVoltageGenerationConfigurationParameters)"/>
        public new void ConfigureAndGenerate(DcVoltageGenerationConfigurationParameters parameters)
        {
            base.ConfigureAndGenerate(parameters: parameters);
        }
    }
}
