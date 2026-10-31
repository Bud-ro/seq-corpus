using System;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.StaticDigitalStateMeasurements.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.StaticDigitalStateMeasurements.Interfaces;

namespace PCBATestToolkitApi.Measurements.StaticDigitalStateMeasurements
{
    /// <summary>
    /// Provides a way that allows you to perform static digital state measurements on PCB points,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.StaticDigitalStateMeasurements.Interfaces.IStaticDigitalStateMeasurement"/>.
    /// </summary>
    public class StaticDigitalStateMeasurement : AbstractStaticDigitalStateMeasurement, IStaticDigitalStateMeasurement
    {
        private StaticDigitalStateMeasurement(string channelExpression)
            : base(channelExpression, new MutableMeasurementOptions
            {
                WriteMeasurementAnalysisResultIsRequired = true,
                WriteMeasurementDataIsRequired = true
            })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="StaticDigitalStateMeasurement"/>.
        /// </summary>
        /// <param name="channelExpression">Expression representing the name of a physical channel, or a global channel or the name of registered settings in DAQ System.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="channelExpression"/> is null or empty or a whitespace.</exception>
        /// <exception cref="MeasurementInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static StaticDigitalStateMeasurement CreateInstance(string channelExpression)
        {
            return new StaticDigitalStateMeasurement(channelExpression);
        }


        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.StaticDigitalStateMeasurements.Interfaces.IStaticDigitalStateMeasurement.ConfigureAndMeasure" />
        public new StaticDigitalStateMeasurementResultData ConfigureAndMeasure()
        {
            return base.ConfigureAndMeasure();
        }
    }
}