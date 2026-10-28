using NUnit.Framework;
using PCBATestToolkitApi.Measurements.DigitalEdgeCountMeasurements;
using PCBATestToolkitApi.Measurements.DigitalEdgeCountMeasurements.Constants;

namespace PCBATestToolkitClient.Measurements.DigitalEdgeCountMeasurements
{
    [TestFixture]
    public class DigitalEdgeCountMeasurementUsingHardwareTimerTests
    {
        [Test]
        public void ConfigureAndMeasure_Test()
        {
            // Arrange
            string measurementChannelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod1/ctr0";
            string timerChannelExpression = "NI_PCBA_Measurement_Simulated_TestScale_TS1Mod1/ctr2";
            string inputTerminalName = "/NI_PCBA_Measurement_Simulated_TestScale_TS1Mod1/PFI3";

            Assert.DoesNotThrow(() =>
            {
                var parameters = ConstantsForDigitalEdgeCountMeasurementUsingHardwareTimer
                    .DefaultDigitalEdgeCountHardwareTimerParameters;

                TestContext.WriteLine("Parameters:");
                TestContext.WriteLine(parameters.ToString());

                using (var edgeCountMeasurementUsingHardwareTimer =
                       DigitalEdgeCountMeasurementUsingHardwareTimer.CreateInstance(
                           measurementChannelExpression: measurementChannelExpression,
                           timerChannelExpression: timerChannelExpression,
                           measurementInputTerminalName: inputTerminalName))
                {
                    // Act
                    var result = edgeCountMeasurementUsingHardwareTimer.ConfigureAndMeasure(parameters);

                    TestContext.WriteLine("Results:");
                    TestContext.WriteLine(result.ToString());

                    // Assert
                    Assert.IsNotNull(result);
                }
            });
        }
    }
}