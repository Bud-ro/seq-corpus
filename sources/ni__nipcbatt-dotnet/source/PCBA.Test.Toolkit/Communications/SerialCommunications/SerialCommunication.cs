using System;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SerialCommunications.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SerialCommunications.Structs;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;

namespace PCBATestToolkitApi.Communications.SerialCommunications
{
    /// <summary>
    /// Provides a way that allows you to perform operations on serial device,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SerialCommunications.Interfaces.ISerialCommunication"/>.
    /// </summary>
    public class SerialCommunication : AbstractSerialCommunication, ISerialCommunication
    {
        private SerialCommunication(string deviceName)
            : base(deviceName: deviceName,
                externalOptions: new MutableMeasurementOptions
                {
                    WriteMeasurementAnalysisResultIsRequired = true,
                    WriteMeasurementDataIsRequired = true
                })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="SerialCommunication"/>.
        /// </summary>
        /// <param name="deviceName">The name of a serial device to communicate with</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="deviceName"/> is null or empty or a whitespace.</exception>
        /// <exception cref="CommunicationInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static SerialCommunication CreateInstance(string deviceName)
        {
            return new SerialCommunication(deviceName);
        }

        ///<inheritdoc />
        public new SerialCommunicationData ConfigureThenSendCommandAndReceiveResponse(SerialCommunicationConfigurationParameters parameters)
        {
            return base.ConfigureThenSendCommandAndReceiveResponse(parameters: parameters);
        }
    }
}