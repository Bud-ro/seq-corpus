using System;
using NI.MeasurementFoundation.ObjectModel.MeasurementOptions;
using NI.PCBAMeasurements.Common.BaseTypes;
using NI.PCBAMeasurements.Common.Exceptions;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SpiCommunications.Interfaces;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SpiCommunications.Structs;

namespace PCBATestToolkitApi.Communications.SpiCommunications
{
    /// <summary>
    /// Provides a way that allows you to perform a write operation to SPI device.,
    /// see <see cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SpiCommunications.Interfaces.ISpiWriteCommunication"/>.
    /// </summary>
    public class SpiWriteCommunication : AbstractSpiWriteCommunication, ISpiWriteCommunication
    {
        private SpiWriteCommunication(string deviceName)
            : base(deviceName: deviceName,
                externalOptions: new MutableMeasurementOptions
                {
                    WriteMeasurementAnalysisResultIsRequired = true,
                    WriteMeasurementDataIsRequired = true
                })
        {
        }

        /// <summary>
        /// Creates an instance of <see cref="SpiWriteCommunication"/>.
        /// </summary>
        /// <param name="deviceName">The name of a communication device.</param>
        /// <exception cref="ArgumentException">Thrown if <paramref name="deviceName"/> is null or empty or a whitespace.</exception>
        /// <exception cref="CommunicationInstanceCreationFailedException"> Thrown if an error occurred during the instance creation.</exception>
        public static SpiWriteCommunication CreateInstance(string deviceName)
        {
            return new SpiWriteCommunication(deviceName);
        }

        ///<inheritdoc cref="NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SpiCommunications.Interfaces.ISpiWriteCommunication.ConfigureAndWriteData"/>
        public new void ConfigureAndWriteData(SpiWriteCommunicationConfigurationParameters parameters)
        {
            base.ConfigureAndWriteData(parameters: parameters);
        }
    }
}
