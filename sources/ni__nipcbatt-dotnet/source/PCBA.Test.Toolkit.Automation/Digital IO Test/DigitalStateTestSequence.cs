using System;
using NI.PCBAMeasurements.Apis.TestToolkitApi.Generations.StaticDigitalStateGenerations.Structs;
using PCBATestToolkitApi.Generations.StaticDigitalStateGenerations;
using PCBATestToolkitApi.Measurements.StaticDigitalStateMeasurements;

namespace PCBATestToolkitAutomation.Digital_IO_Test
{
    /// <summary>
    /// Example of an execution of the digital state test
    /// </summary>
    internal class DigitalStateTestSequence : AbstractSequence
    {
        /// <inheritdoc cref="AbstractSequence.Execute"/>
        public override void Execute()
        {
            /* Setup */

            /*** Initialization
             *
             *  Initializes the demonstration of static digital state  generation and measurement
             * using Digital output and input modules.
             *
             * Note to run with Hardware: update the Global Channel on NI MAX in the below
             * initialize step
             *
             */

            // need to be modified according your configuration
            string staticDigitalStateGenerationPhysicalChannel = "TS_DIn0:1";

            // need to be modified according your configuration
            string staticDigitalStateMeasurementPhysicalChannel = "TP_DOut0:1";

            StaticDigitalStateGeneration staticDigitalStateGeneration = StaticDigitalStateGeneration.CreateInstance(staticDigitalStateGenerationPhysicalChannel);
            StaticDigitalStateMeasurement staticDigitalStateMeasurement = StaticDigitalStateMeasurement.CreateInstance(staticDigitalStateMeasurementPhysicalChannel);


            /* Main */

            /*** 
             *
             * Note to run with Hardware: review configuration for intended use case
             *
             */

            staticDigitalStateGeneration.ConfigureAndGenerate(
                new StaticDigitalStateGenerationConfigurationParameters(
                    dataToWrite: new[]
                        { true, true }));

            var result = staticDigitalStateMeasurement.ConfigureAndMeasure();
            string displaying = result.ToString();
            Console.WriteLine(displaying);
            // you can replace and display the results as you want.

            /* Cleanup */

            /*** Close all tasks ***/ 
            staticDigitalStateGeneration.Close();
            staticDigitalStateMeasurement.Close();

            // Power down channel
            PowerDownChannels.PowerDownAllDoChannelsForStaticDigitalStateGeneration(staticDigitalStateGenerationPhysicalChannel, 2);
        }
    }
}
