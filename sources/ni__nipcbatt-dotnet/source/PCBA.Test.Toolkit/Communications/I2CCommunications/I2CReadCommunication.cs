using System;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.I2CCommunications.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.I2CCommunications.Structs;

namespace PCBATestToolkitApi.Communications.I2CCommunications
{
    /// <summary>
    /// Provides a way that allows you to perform a read operation from I2C device,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.I2CCommunications.Interfaces.II2CReadCommunication"/>.
    /// </summary>
    public class I2CReadCommunication : AbstractI2CReadCommunication, II2CReadCommunication
    {
        private I2CReadCommunication(string deviceName)
            : base(deviceName: deviceName,
                externalOptions: new MutableMeasurementOptions
                {
                    WriteMeasurementAnalysisResultIsRequired = true,
                    WriteMeasurementDataIsRequired = true
                })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="I2CReadCommunication"/>.
        /// </summary>
        /// <param name="deviceName">The name of a communication device.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="deviceName"/> is null or empty or a whitespace.</exception>
        /// <exception cref="CommunicationInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static I2CReadCommunication CreateInstance(string deviceName)
        {
            return new I2CReadCommunication(deviceName);
        }

        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.I2CCommunications.Interfaces.II2CReadCommunication.ConfigureAndReadData"/>
        public new I2CReadCommunicationData ConfigureAndReadData(I2CReadCommunicationConfigurationParameters parameters)
        {
            return base.ConfigureAndReadData(parameters: parameters);
        }
    }
}
