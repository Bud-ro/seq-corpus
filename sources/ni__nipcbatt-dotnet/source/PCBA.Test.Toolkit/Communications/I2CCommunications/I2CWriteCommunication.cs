using System;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.I2CCommunications.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.I2CCommunications.Structs;

namespace PCBATestToolkitApi.Communications.I2CCommunications
{
    /// <summary>
    /// Provides a way that allows you to perform a write operation to I2C device,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.I2CCommunications.Interfaces.II2CWriteCommunication"/>.
    /// </summary>
    public class I2CWriteCommunication : AbstractI2CWriteCommunication, II2CWriteCommunication
    {
        private I2CWriteCommunication(string deviceName)
            : base(deviceName: deviceName,
                externalOptions: new MutableMeasurementOptions
                {
                    WriteMeasurementAnalysisResultIsRequired = true,
                    WriteMeasurementDataIsRequired = true
                })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="I2CWriteCommunication"/>.
        /// </summary>
        /// <param name="deviceName">The name of a communication device.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="deviceName"/> is null or empty or a whitespace.</exception>
        /// <exception cref="CommunicationInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static I2CWriteCommunication CreateInstance(string deviceName)
        {
            return new I2CWriteCommunication(deviceName);
        }

        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.I2CCommunications.Interfaces.II2CWriteCommunication.ConfigureAndWriteData"/>
        public new void ConfigureAndWriteData(I2CWriteCommunicationConfigurationParameters parameters)
        {
            base.ConfigureAndWriteData(parameters: parameters);
        }
    }
}
