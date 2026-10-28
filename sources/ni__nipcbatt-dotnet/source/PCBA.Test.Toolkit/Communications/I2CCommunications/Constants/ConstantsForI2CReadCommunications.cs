using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.I2CCommunications.Structs;

namespace PCBATestToolkitApi.Communications.I2CCommunications.Constants
{
    /// <summary>
    /// Define some constant structures used by I2C Read Communications.
    /// </summary>
    public static class ConstantsForI2CReadCommunications
    {
        /// <summary>
        /// Default structure for parameters of I2C Read Communication.
        /// </summary>
        public static I2CReadCommunicationConfigurationParameters DefaultI2CReadCommunicationConfigurationParameters
            => new I2CReadCommunicationConfigurationParameters(
                deviceSettings: DefaultI2CDeviceSettings,
                communicationSettings: DefaultI2CCommunicationSettings,
                communicationReadSettings: DefaultCommunicationReadSettings);

        /// <summary>
        /// Default structure for settings of I2C Devices for communications.
        /// </summary>
        public static I2CDeviceSettings DefaultI2CDeviceSettings
            => new I2CDeviceSettings(
                enableI2CPullupResistor: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultEnableI2CPullupResistor,
                voltageLevel: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultVoltageLevel);

        /// <summary>
        /// Default structure for settings of I2C communications.
        /// </summary>
        public static I2CCommunicationSettings DefaultI2CCommunicationSettings
            => new I2CCommunicationSettings(
                deviceAddress: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultDeviceAddress,
                clockRateKilohertz: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultClockRateKilohertz,
                ackPollTimeoutMilliseconds: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultAckPollTimeoutMilliseconds,
                addressingType: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultAddressingType);

        /// <summary>
        /// Default structure for settings of I2C read communications.
        /// </summary>
        public static I2CCommunicationReadSettings DefaultCommunicationReadSettings
            => new I2CCommunicationReadSettings(
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
