using System;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SpiCommunications.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SpiCommunications.Structs;

namespace PCBATestToolkitApi.Communications.SpiCommunications
{
    /// <summary>
    /// Provides a way that allows you to perform a read operation from SPI device,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SpiCommunications.Interfaces.ISpiReadCommunication"/>.
    /// </summary>
    public class SpiReadCommunication : AbstractSpiReadCommunication, ISpiReadCommunication
    {
        private SpiReadCommunication(string deviceName)
            : base(deviceName: deviceName,
                externalOptions: new MutableMeasurementOptions
                {
                    WriteMeasurementAnalysisResultIsRequired = true,
                    WriteMeasurementDataIsRequired = true
                })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="SpiReadCommunication"/>.
        /// </summary>
        /// <param name="deviceName">The name of a communication device.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="deviceName"/> is null or empty or a whitespace.</exception>
        /// <exception cref="CommunicationInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static SpiReadCommunication CreateInstance(string deviceName)
        {
            return new SpiReadCommunication(deviceName);
        }

        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SpiCommunications.Interfaces.ISpiReadCommunication.ConfigureAndReadData"/>
        public new SpiReadCommunicationData ConfigureAndReadData(SpiReadCommunicationConfigurationParameters parameters)
        {
            return base.ConfigureAndReadData(parameters: parameters);
        }
    }
}
