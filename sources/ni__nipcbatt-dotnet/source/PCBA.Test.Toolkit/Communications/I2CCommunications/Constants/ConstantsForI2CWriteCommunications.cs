using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.I2CCommunications.Structs;

namespace PCBATestToolkitApi.Communications.I2CCommunications.Constants
{
    /// <summary>
    /// Define some constant structures used by I2C Write Communications.
    /// </summary>
    public static class ConstantsForI2CWriteCommunications
    {
        /// <summary>
        /// Default structure for parameters of I2C Write Communication.
        /// </summary>
        public static I2CWriteCommunicationConfigurationParameters DefaultI2CWriteCommunicationConfigurationParameters
            => new I2CWriteCommunicationConfigurationParameters(
                deviceSettings: DefaultI2CDeviceSettings,
                communicationSettings: DefaultI2CCommunicationSettings,
                communicationWriteSettings: DefaultCommunicationWriteSettings);

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
        /// Default structure for settings of I2C write communications.
        /// </summary>
        public static I2CCommunicationWriteSettings DefaultCommunicationWriteSettings
            => new I2CCommunicationWriteSettings(
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
