using System.Linq;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DcVoltageGenerations.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.StaticDigitalStateGenerations.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.PowerSupplySourceAndMeasurements.Structs;
using PCBATestToolkitApi.Generations.DcVoltageGenerations;
using PCBATestToolkitApi.Generations.DcVoltageGenerations.Constants;
using PCBATestToolkitApi.Generations.StaticDigitalStateGenerations;
using PCBATestToolkitApi.Measurements.PowerSupplySourceAndMeasurements.Constants;
using PCBATestToolkitApi.Measurements.PowerSupplySourceAndMeasurements;

namespace PCBATestToolkitAutomation
{
    /// <summary>
    /// allows to provide method to power down the used channels.
    /// </summary>
    public static class PowerDownChannels
    {
        /// <summary>
        /// Allows to power down the AO channels for DC Voltage Generation
        /// </summary>
        /// <param name="channelName">The physical/virtual channel name.</param>
        public static void PowerDownAllAoChannelsForDcVoltageGeneration(string channelName)
        {
            DcVoltageGenerationConfigurationParameters
                dcVoltageGenerationConfigurationParameters =
                    new DcVoltageGenerationConfigurationParameters(
                        rangeSettings: ConstantsForDcVoltageGenerations
                            .DefaultVoltageGenerationRangeSettings,
                        outputVoltages: new[] { 0.0, 0.0 });

            DcVoltageGeneration dcVoltageGeneration = DcVoltageGeneration.CreateInstance(channelName);

            dcVoltageGeneration.ConfigureAndGenerate(dcVoltageGenerationConfigurationParameters);

            dcVoltageGeneration.Close();
        }

        /// <summary>
        /// Allows to power down the DO channel for Static Digital State Generation
        /// </summary>
        /// <param name="channelName">The physical/virtual channel name.</param>
        /// <param name="numberOfChannelToClose">Number of "false" value to write in order to close
        /// all properly all the channels</param>
        public static void PowerDownAllDoChannelsForStaticDigitalStateGeneration(string channelName, int numberOfChannelToClose)
        {
            StaticDigitalStateGeneration staticDigitalStateGeneration = StaticDigitalStateGeneration.CreateInstance(channelName);

            bool[] dataToWrite = Enumerable.Repeat(false, numberOfChannelToClose).ToArray();

            staticDigitalStateGeneration.ConfigureAndGenerate(
                new StaticDigitalStateGenerationConfigurationParameters(dataToWrite: dataToWrite));

            staticDigitalStateGeneration.Close();
        }

        /// <summary>
        /// Allows to power down all power supplies.
        /// </summary>
        /// <param name="channelName">The physical/virtual channel name.</param>
        public static void PowerDownAllPowerSupplies(string channelName)
        {
            PowerSupplySourceAndMeasure powerSupplySourceAndMeasure =
                PowerSupplySourceAndMeasure.CreateInstance(channelName);

            powerSupplySourceAndMeasure.ConfigureAndMeasure(
                new PowerSupplySourceAndMeasureConfigurationParameters(
                    terminalSettings: new
                        PowerSupplySourceAndMeasureTerminalSettings(
                            voltageSetpointVolts: 0.0,
                            currentSetpointAmperes: 0.1,
                            powerSense: EPowerSense.Local,
                            powerIdleOutputBehavior: EPowerIdleOutputBehavior.MaintainExistingValue,
                            enableOutput: true),
                    ConstantsForPowerSupplySourceAndMeasurements
                        .DefaultFrequencyDomainMeasurementOptions,
                    ConstantsForPowerSupplySourceAndMeasurements
                        .DefaultPowerSupplySourceAndMeasureTimingSettings,
                    ConstantsForPowerSupplySourceAndMeasurements
                        .DefaultPowerSupplySourceAndMeasureTriggerSettings));

            powerSupplySourceAndMeasure.Close();
        }
    }
}

