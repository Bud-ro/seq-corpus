using System;
using NI.Core.Utilities.FileSystem;
using NI.MeasurementFoundation.DataManagement;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Measurements.DcRmsVoltageMeasurements.Structs;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.DcVoltageGenerations.Structs;
using PCBATestToolkitApi.Measurements.DcRmsVoltageMeasurements;
using PCBATestToolkitApi.Measurements.DcRmsVoltageMeasurements.Constants;
using PCBATestToolkitApi.Generations.DcVoltageGenerations;
using PCBATestToolkitApi.Generations.DcVoltageGenerations.Constants;


namespace PCBATestToolkitAutomation.Action_Button_Test
{
    /// <summary>
    /// Example of an execution of the action button test
    /// </summary>
    internal class ActionButtonTestSequence : AbstractSequence
    {
        /// <inheritdoc cref="AbstractSequence.Execute"/>
        public override void Execute()
        {
            /* Setup */

            /*** Configure the artifacts
             *
             *  by using the class NI.Measurement.Foundation.FileSystemMeasurementArtifactsManager,
             * you are able to give a path where the files will be saved.
             *
             */

            // this variable will allow to date the results folder and avoid deletion.
            String now = DateTime.Now.ToString("dd-MM-yyyy-hh-mm-ss");

            // results folder for DC Voltage Generation
            string dcVoltageGenerationResultFile = PathUtils.Combine(
                FolderUtils.GetExecutingAssemblyDirectory(), $"DCVG-{now}");

            // results folder for DC-RMS Voltage Measurement
            string dcRmsVoltageMeasurementResultFile = PathUtils.Combine(
                FolderUtils.GetExecutingAssemblyDirectory(), $"DCVM-{now}"); 

            FileSystemMeasurementArtifactsManager dcVoltageGenerationArtifactsManager =
                new FileSystemMeasurementArtifactsManager(dcVoltageGenerationResultFile);

            FileSystemMeasurementArtifactsManager dcRmsVoltageMeasurementArtifactsManager =
                new FileSystemMeasurementArtifactsManager(dcRmsVoltageMeasurementResultFile);

            /*** Initialization
             *
             * Initializes the configured Physical/Virtual channels of Analog Output module
             * to perform action button functionality and DC-RMS Voltage Measurement.
             *
             */

            // need to be modified according your configuration
            string dcVoltageGenerationPhysicalChannel = "TS_ButtonEnable0";

            // need to be modified according your configuration
            string dcRmsVoltageMeasurementPhysicalChannel = "TP_LineOut0:1";

            DcVoltageGeneration dcVoltageGeneration = DcVoltageGeneration.CreateInstance(dcVoltageGenerationPhysicalChannel);
            DcRmsVoltageMeasurement dcRmsVoltageMeasurement = DcRmsVoltageMeasurement.CreateInstance(dcRmsVoltageMeasurementPhysicalChannel);

            dcVoltageGeneration.ExternalComponents.ArtifactsManagers.AttachArtifactsManager(dcVoltageGenerationArtifactsManager);
            dcRmsVoltageMeasurement.ExternalComponents.ArtifactsManagers.AttachArtifactsManager(dcRmsVoltageMeasurementArtifactsManager);

            /* Main */

            /*** Button ON
             *
             * Note to run with Hardware: Update DC Voltage for Action Button ON condition
             *
             */

            DcVoltageGenerationConfigurationParameters
                dcVoltageGenerationConfigurationParameters =
                    new DcVoltageGenerationConfigurationParameters(
                        rangeSettings: ConstantsForDcVoltageGenerations
                            .DefaultVoltageGenerationRangeSettings,
                        outputVoltages: new[] { 3.3, 3.3 });

            /* This step can be replaced with actual button */
            dcVoltageGeneration.ConfigureAndGenerate(
                dcVoltageGenerationConfigurationParameters);

            DcRmsVoltageMeasurementConfigurationParameters
                dcRmsVoltageMeasurementConfigurationParameters =
                    ConstantsForDcRmsVoltageMeasurements
                        .DefaultDcRmsVoltageMeasurementParameters;

            dcRmsVoltageMeasurement.ConfigureAndMeasure(dcRmsVoltageMeasurementConfigurationParameters);

            dcRmsVoltageMeasurement.ExternalComponents.ArtifactsManagers
                .AttachArtifactsManager(
                    dcRmsVoltageMeasurementArtifactsManager);

            /*** Button OFF
             *
             * Note to run with Hardware: Update DC Voltage for Action Button OFF condition
             *
             */

            dcVoltageGenerationConfigurationParameters =
                new DcVoltageGenerationConfigurationParameters(
                    rangeSettings: ConstantsForDcVoltageGenerations
                        .DefaultVoltageGenerationRangeSettings,
                    outputVoltages: new[] { 0.0, 0.0 });

            /* This step can be replaced with actual button */
            dcVoltageGeneration.ConfigureAndGenerate(
                dcVoltageGenerationConfigurationParameters);

            dcRmsVoltageMeasurementConfigurationParameters =
                ConstantsForDcRmsVoltageMeasurements
                    .DefaultDcRmsVoltageMeasurementParameters;

            dcRmsVoltageMeasurement.ConfigureAndMeasure(dcRmsVoltageMeasurementConfigurationParameters);

            /* Cleanup */

            /*** Close all tasks ***/
            dcVoltageGeneration.Close();
            dcRmsVoltageMeasurement.Close();

            // Power down channel
            PowerDownChannels.PowerDownAllAoChannelsForDcVoltageGeneration(dcVoltageGenerationPhysicalChannel);
        }
    }
}
