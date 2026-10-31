using System;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DynamicDigitalPatternMeasurements.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DynamicDigitalPatternMeasurements.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Measurements.DynamicDigitalPatternMeasurements
{
    /// <summary>
    /// Provides a way that allows you to perform dynamic digital pattern measurements on PCB points,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DynamicDigitalPatternMeasurements.Interfaces.IDynamicDigitalPatternMeasurement"/>.
    /// </summary>
    public class DynamicDigitalPatternMeasurement : AbstractDynamicDigitalPatternMeasurement, IDynamicDigitalPatternMeasurement
    {
        private DynamicDigitalPatternMeasurement(string channelExpression)
            : base(channelExpression, new MutableMeasurementOptions
            {
                WriteMeasurementAnalysisResultIsRequired = true,
                WriteMeasurementDataIsRequired = true
            })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="DynamicDigitalPatternMeasurement"/>.
        /// </summary>
        /// <param name="channelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="channelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static DynamicDigitalPatternMeasurement CreateInstance(string channelExpression)
        {
            return new DynamicDigitalPatternMeasurement(channelExpression);
        }


        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DynamicDigitalPatternMeasurements.Interfaces.IDynamicDigitalPatternMeasurement.ConfigureAndMeasure"/>
    
        public new DynamicDigitalPatternMeasurementResultData ConfigureAndMeasure(
            DynamicDigitalPatternMeasurementConfigurationParameters parameters)
        {
            return base.ConfigureAndMeasure(parameters: parameters);
        }
    }
}