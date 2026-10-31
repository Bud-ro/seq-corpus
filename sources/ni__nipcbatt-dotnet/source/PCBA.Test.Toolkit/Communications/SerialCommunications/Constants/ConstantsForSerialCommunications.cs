using NI.PCBAMeasurements.Apis.TestToolkitApi.Communications.SerialCommunications.Structs;

namespace PCBATestToolkitApi.Communications.SerialCommunications.Constants
{
    /// <summary>
    /// Define some constant structures used by Serial Communications.
    /// </summary>
    public static class ConstantsForSerialCommunications
    {
        /// <summary>
        /// Default structure for parameters of Serial Communication.
        /// </summary>
        public static SerialCommunicationConfigurationParameters DefaultSerialCommunicationConfigurationParameters
            => new SerialCommunicationConfigurationParameters(
                communicationSettings: DefaultSerialCommunicationSettings,
                commandToSend: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultCommandToSendToSerialDevice);

        /// <summary>
        /// Default structure for settings of serial communications.
        /// </summary>
        public static SerialCommunicationSettings DefaultSerialCommunicationSettings
            => new SerialCommunicationSettings(
                dataRateBauds: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultSerialDataRateBauds,
                numberOfBitsInDataFrame: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultNumberOfBitsInDataFrame,
                delayBeforeReceiveResponseMilliseconds: 
                    NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultDelayBetweenSerialOperationsMilliseconds,
                parity: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultSerialParity,
                stopBitsMode: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultSerialStopBitsMode,
                flowControlMode: NI.MeasurementInstrumentation.Constants.ConstantsForCommunications.DefaultSerialFlowControlMode);
    }
}