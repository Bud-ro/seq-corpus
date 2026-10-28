using System;
using NI.MeasurementFoundation.DataManagement;
using NI.MeasurementInstrumentation.HAL.DaqHandlers.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Enums;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Common.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.PowerSupplySourceAndMeasurements.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.TimeDomainMeasurements.Structs;
using PCBATestToolkitApi.Measurements.PowerSupplySourceAndMeasurements;
using PCBATestToolkitApi.Measurements.TimeDomainMeasurements;
using PCBATestToolkitApi.Measurements.TimeDomainMeasurements.Constants;

namespace PCBATestToolkitAutomation.Power_Supply_Test
{
    /// <summary>
    /// Example of an execution of the power supply and measure with trigger
    /// </summary>
    internal class PowerSupplyAndMeasureWithTrigger : AbstractSequence
    {
        /// <inheritdoc cref="AbstractSequence.Execute"/>
        public override void Execute()
        {
            /* Setup */

            /*** Configure the artifacts
             *
             *  by using the class NI.Measurement.Fundation.FileSystemMeasurementArtifactsManager,
             * you are able to give a path where the files will be saved.
             *
             */

            // this variable will allow to date the results folder and avoid deletion.
            String now = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");

            // results folder for Signal Voltage Generation
            string powerSupplyAndMeasureResultFile =
                NI.Core.Utilities.FileSystem.PathUtils.Combine(
                    NI.Core.Utilities.FileSystem.FolderUtils
                        .GetExecutingAssemblyDirectory(), $"PSSM-{now}");

            // results folder for Frequency Domain Measurement
            string timeDomainMeasurementResultFile =
                NI.Core.Utilities.FileSystem.PathUtils.Combine(
                    NI.Core.Utilities.FileSystem.FolderUtils
                        .GetExecutingAssemblyDirectory(), $"TDM-{now}");

            FileSystemMeasurementArtifactsManager powerSupplyAndMeasureArtifactsManager =
                new FileSystemMeasurementArtifactsManager(powerSupplyAndMeasureResultFile);

            FileSystemMeasurementArtifactsManager timeDomainMeasurementArtifactsManager =
                new FileSystemMeasurementArtifactsManager(timeDomainMeasurementResultFile);

            /*** Initialization
             * This example demonstrates Power Supply Source(VDD) and Time Domain Analysis of Measured
             * Analog input voltage in TestPoints. Data capture in Analog Input(TP) starts when the
             * Trigger is sent from Power Supply after starting the source.
             *
             * Note to run with Hardware: Update Virtual/Physical Channels Info based on NI MAX in
             * the below Initialize Steps
             */

            // need to be modified according your configuration
            string powerSupplyAndMeasurePhysicalChannel = "Simulated_Power/Power";

            // need to be modified according your configuration
            string timeDomainMeasurementPhysicalChannel = "TP_Power0:2";

            PowerSupplySourceAndMeasure powerSupplySourceAndMeasure =
                PowerSupplySourceAndMeasure.CreateInstance(
                    powerSupplyAndMeasurePhysicalChannel);

            TimeDomainMeasurement timeDomainMeasurement =
                TimeDomainMeasurement.CreateInstance(
                    timeDomainMeasurementPhysicalChannel);

            powerSupplySourceAndMeasure.ExternalComponents.ArtifactsManagers
                .AttachArtifactsManager(powerSupplyAndMeasureArtifactsManager);

            timeDomainMeasurement.ExternalComponents.ArtifactsManagers
                .AttachArtifactsManager(timeDomainMeasurementArtifactsManager);

            /* Main
             *
             * Note to run with Hardware: Review the configurations & update the Digital
             * Start Trigger Settings based on NI MAX
             */

            /*** 
             *
             * Configure Time Domain Measurement settings to wait for
             * Hardware Trigger from Power
             *
             */

            timeDomainMeasurement.ConfigureAndMeasure(new TimeDomainMeasurementConfigurationParameters(
                channelAndTerminalSettings: ConstantsForTimeDomainMeasurements.DefaultTimeDomainMeasurementChannelAndTerminalSettings,
                options: new MeasurementOptions(
                    measurementExecutionType: EMeasurementExecutionType.ConfigureOnly,
                    measurementAnalysisRequirement: EMeasurementAnalysisRequirement.SkipAnalysis),
                timingSettings: new MeasurementTimingSettings(
                    sampleClockSource: "OnboardClock",
                    samplingRateHertz: 10000,
                    numberOfSamplesPerChannel: 1000,
                    sampleTimingEngine: ESampleTimingEngine.Te1),
                triggerSettings: new MeasurementTriggerSettings(
                    triggerType: EMeasurementTriggerType.DigitalStartTrigger,
                    digitalStartTriggerSource: "/Sim_TS/te0/StartTrigger",
                    digitalEdgeStartTriggerEdge: EDigitalEdgeStartTriggerEdge.Rising)));

            /*** 
             *
             * Timing engine should match with configured Hardware trigger line
             * for Time Domain Measurement
             *
             */
            
            powerSupplySourceAndMeasure.ConfigureAndMeasure(
                new PowerSupplySourceAndMeasureConfigurationParameters(
                    terminalSettings: new
                        PowerSupplySourceAndMeasureTerminalSettings(
                            voltageSetpointVolts: 5.0,
                            currentSetpointAmperes: 1.0,
                            powerSense: EPowerSense.Local,
                            powerIdleOutputBehavior: EPowerIdleOutputBehavior
                                .OutputDisabled,
                            enableOutput: true),
                    options: new MeasurementOptions(
                        measurementExecutionType: EMeasurementExecutionType
                            .ConfigureAndMeasure,
                        measurementAnalysisRequirement:
                        EMeasurementAnalysisRequirement.ProceedToAnalysis),
                    timingSettings: new MeasurementTimingSettings(
                        sampleClockSource: "OnboardClock",
                        samplingRateHertz: 10000,
                        numberOfSamplesPerChannel: 1000,
                        sampleTimingEngine: ESampleTimingEngine.Te0),
                    triggerSettings: new MeasurementTriggerSettings(
                        triggerType: EMeasurementTriggerType.NoTrigger,
                        digitalStartTriggerSource: "NA",
                        digitalEdgeStartTriggerEdge: EDigitalEdgeStartTriggerEdge.Rising)));

            /*** 
             *
             * Fetches the measured DC Voltage (measured when Power Supply sends
             * Trigger after source) and returns Time Domain Analysis
             *
             */

            timeDomainMeasurement.ConfigureAndMeasure(
                ConstantsForTimeDomainMeasurements
                    .DefaultTimeDomainMeasurementParameters);

            /* Cleanup */

            /*** Close all tasks ***/
            powerSupplySourceAndMeasure.Close();
            timeDomainMeasurement.Close();

            // Power down channel
            PowerDownChannels.PowerDownAllPowerSupplies(powerSupplyAndMeasurePhysicalChannel);
        }
    }
}
