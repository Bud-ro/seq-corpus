using System;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DynamicDigitalPatternGenerations.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DynamicDigitalPatternGenerations.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Generations.DynamicDigitalPatternGenerations
{
    /// <summary>
    /// Provides a way that allows you to perform dynamic digital pattern generation and applies it into PCB points,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DynamicDigitalPatternGenerations.Interfaces.IDynamicDigitalPatternGeneration"/>.
    /// </summary>
    public class DynamicDigitalPatternGeneration : AbstractDynamicDigitalPatternGeneration, IDynamicDigitalPatternGeneration
    {
        private DynamicDigitalPatternGeneration(string channelExpression)
            : base(channelExpression, new MutableMeasurementOptions
            {
                WriteMeasurementAnalysisResultIsRequired = true,
                WriteMeasurementDataIsRequired = true
            })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="DynamicDigitalPatternGeneration"/>.
        /// </summary>
        /// <param name="channelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="channelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static DynamicDigitalPatternGeneration CreateInstance(string channelExpression)
        {
            return new DynamicDigitalPatternGeneration(channelExpression);
        }

        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DynamicDigitalPatternGenerations.Interfaces.IDynamicDigitalPatternGeneration.ConfigureAndGenerate"/>
        public new DynamicDigitalPatternGenerationData ConfigureAndGenerate(
            DynamicDigitalPatternGenerationConfigurationParameters parameters)
        {
            return base.ConfigureAndGenerate(parameters: parameters);
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
    }
}