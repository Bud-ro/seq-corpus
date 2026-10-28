using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SpiCommunications.Structs;

namespace PCBATestToolkitApi.Communications.SpiCommunications.Constants
{
    /// <summary>
    /// Define some constant structures used by SPI Write Communications.
    /// </summary>
    public static class ConstantsForSpiWriteCommunications
    {
        /// <summary>
        /// Default structure for parameters of SPI Write Communication.
        /// </summary>
        public static SpiWriteCommunicationConfigurationParameters DefaultSpiWriteCommunicationConfigurationParameters
            => new SpiWriteCommunicationConfigurationParameters(
                deviceSettings: DefaultSpiDeviceSettings,
                communicationSettings: DefaultSpiCommunicationSettings,
                communicationWriteSettings: DefaultCommunicationWriteSettings);

        /// <summary>
        /// Default structure for settings of SPI Devices for communications.
        /// </summary>
        public static SpiDeviceSettings DefaultSpiDeviceSettings
            => new SpiDeviceSettings(
                voltageLevel: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultVoltageLevel);

        /// <summary>
        /// Default structure for settings of SPI communications.
        /// </summary>
        public static SpiCommunicationSettings DefaultSpiCommunicationSettings
            => new SpiCommunicationSettings(
                chipSelect: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultChipSelect,
                clockRateKilohertz: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultClockRateKilohertz);

        /// <summary>
        /// Default structure for settings of SPI write communications.
        /// </summary>
        public static SpiCommunicationWriteSettings DefaultCommunicationWriteSettings
            => new SpiCommunicationWriteSettings(
                numberOfBytesPerPage: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultNumberOfBytesPerPage,
                delayBetweenPageWriteOperationsMilliseconds: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications
                    .DefaultDelayBetweenPageWriteOperationsMilliseconds,
                dataToBeWritten: new byte[1],
                memoryAddressSettings: DefaultMemoryAddressSettings);

        /// <summary>
        /// Default structure for settings of memory address format.
        /// </summary>
        public static MemoryAddressSettings DefaultMemoryAddressSettings
            => new MemoryAddressSettings(
                memoryAddress: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultMemoryAddress,
                addressType: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultAddressType,
                addressEndianness: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultAddressEndianness);
    }
}
