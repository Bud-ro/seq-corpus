using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SpiCommunications.Structs;

namespace PCBATestToolkitApi.Communications.SpiCommunications.Constants
{
    /// <summary>
    /// Define some constant structures used by SPI Read Communications.
    /// </summary>
    public static class ConstantsForSpiReadCommunications
    {
        /// <summary>
        /// Default structure for parameters of SPI Read Communication.
        /// </summary>
        public static SpiReadCommunicationConfigurationParameters DefaultSpiReadCommunicationConfigurationParameters
            => new SpiReadCommunicationConfigurationParameters(
                deviceSettings: DefaultSpiDeviceSettings,
                communicationSettings: DefaultSpiCommunicationSettings,
                communicationReadSettings: DefaultCommunicationReadSettings);

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
        /// Default structure for settings of SPI read communications.
        /// </summary>
        public static SpiCommunicationReadSettings DefaultCommunicationReadSettings
            => new SpiCommunicationReadSettings(
                numberOfBytesToRead: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultNumberOfBytesToRead,
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
