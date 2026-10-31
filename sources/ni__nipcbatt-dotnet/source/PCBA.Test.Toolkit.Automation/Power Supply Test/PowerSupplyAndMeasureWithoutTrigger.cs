using System;
using NI.MeasurementFoundation.DataManagement;
using PCBATestToolkitApi.Measurements.DcRmsVoltageMeasurements.Constants;
using PCBATestToolkitApi.Measurements.DcRmsVoltageMeasurements;
using PCBATestToolkitApi.Measurements.PowerSupplySourceAndMeasurements.Constants;
using PCBATestToolkitApi.Measurements.PowerSupplySourceAndMeasurements;

namespace PCBATestToolkitAutomation.Power_Supply_Test
{
    internal class PowerSupplyAndMeasureWithoutTrigger : AbstractSequence
    {
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

            // results folder for DC-RMS Voltage Measurement
            string dcRmsVoltageMeasurementResultFile =
                NI.Core.Utilities.FileSystem.PathUtils.Combine(
                    NI.Core.Utilities.FileSystem.FolderUtils
                        .GetExecutingAssemblyDirectory(), $"DCVM-{now}");

            FileSystemMeasurementArtifactsManager powerSupplyAndMeasureArtifactsManager =
                new FileSystemMeasurementArtifactsManager(powerSupplyAndMeasureResultFile);

            FileSystemMeasurementArtifactsManager dcRmsVoltageMeasurementArtifactsManager =
                new FileSystemMeasurementArtifactsManager(dcRmsVoltageMeasurementResultFile);

            /*** Initialization
             * This example demonstrates Power Supply source and Voltage Measurement
             * without trigger
             *
             * Note to run with Hardware: Update Virtual/Physical Channels Info based on
             * NI MAX in the below Initialize Steps
             */

            // need to be modified according your configuration
            string powerSupplyAndMeasurePhysicalChannel = "Simulated_Power/Power";

            // need to be modified according your configuration
            string dcRmsVoltageMeasurementPhysicalChannel = "TP_Power0:2";

            PowerSupplySourceAndMeasure powerSupplySourceAndMeasure =
                PowerSupplySourceAndMeasure.CreateInstance(
                    powerSupplyAndMeasurePhysicalChannel);

            DcRmsVoltageMeasurement dcRmsVoltageMeasurement =
                DcRmsVoltageMeasurement.CreateInstance(
                    dcRmsVoltageMeasurementPhysicalChannel);

            powerSupplySourceAndMeasure.ExternalComponents.ArtifactsManagers
                .AttachArtifactsManager(powerSupplyAndMeasureArtifactsManager);

            dcRmsVoltageMeasurement.ExternalComponents.ArtifactsManagers
                .AttachArtifactsManager(
                    dcRmsVoltageMeasurementArtifactsManager);

            /* Main
             *
             *Note to run with Hardware: Review the Configurations for the intended use case
             *
             */

            powerSupplySourceAndMeasure.ConfigureAndMeasure(
                ConstantsForPowerSupplySourceAndMeasurements
                    .DefaultPowerSupplySourceAndMeasureParameters);

            dcRmsVoltageMeasurement.ConfigureAndMeasure(
                ConstantsForDcRmsVoltageMeasurements
                    .DefaultDcRmsVoltageMeasurementParameters);

            /* Cleanup */

            /*** Close all tasks ***/
            powerSupplySourceAndMeasure.Close();
            dcRmsVoltageMeasurement.Close();

            // Power down channel
            PowerDownChannels.PowerDownAllPowerSupplies(
                powerSupplyAndMeasurePhysicalChannel);
        }
    }
}
