using NUnit.Framework;
using PCBATestToolkitApi.Measurements.DigitalEdgeCountMeasurements;
using PCBATestToolkitApi.Measurements.DigitalEdgeCountMeasurements.Constants;

namespace PCBATestToolkitClient.Measurements.DigitalEdgeCountMeasurements
{
    [TestFixture]
    public class DigitalEdgeCountMeasurementUsingSoftwareTimerTests
    {
        [Test]
        public void ConfigureAndMeasure_Test()
        {
            // Arrange
            string channelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod1/ctr0";
            string inputTerminalName = "/NI_PCBA_Measurement_Simulated_TestScale_TS1Mod1/PFI3";

            var parameters = ConstantsForDigitalEdgeCountMeasurementUsingSoftwareTimer.DefaultDigitalEdgeCountSoftwareTimerParameters;

            TestContext.WriteLine("Parameters:");
            TestContext.WriteLine(parameters.ToString());


            Assert.DoesNotThrow(() =>
            {
                using (var digitalEdgeCountMeasurementUsingSoftwareTimer = DigitalEdgeCountMeasurementUsingSoftwareTimer.CreateInstance(channelExpression, inputTerminalName))
                {
                    // Act
                    var result = digitalEdgeCountMeasurementUsingSoftwareTimer.ConfigureAndMeasure(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(result.ToString());

                    // Assert
                    Assert.IsNotNull(result);
                }
            });
        }
    }
}